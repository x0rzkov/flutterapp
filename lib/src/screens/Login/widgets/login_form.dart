import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            maxLines: 1,
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter an user name or email';
              }
              return null;
            },
            decoration: InputDecoration(
                hintText: 'User name', labelText: 'User name or Email'),
          ),
          TextFormField(
            maxLines: 1,
            obscureText: true,
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter a password';
              }
              return null;
            },
            decoration:
                InputDecoration(hintText: 'Password', labelText: 'Password'),
          ),
          RaisedButton(
            onPressed: () {
              if (_formKey.currentState.validate()) {
                Scaffold.of(context)
                    .showSnackBar(SnackBar(content: Text('Processing Data')));
              }
            },
            child: Text('SUBMIT'),
          )
        ],
      ),
    );
  }
}