import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class HomeScreen extends StatefulWidget {
  final String title;

  HomeScreen({this.title});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String text = 'Click the button to start the payment';
  double totalCost = 10.0;
  double tip = 1.0;
  double tax = 0.0;
  double taxPercent = 0.2;
  int amount = 0;
  bool showSpinner = false;
  String url ='https://us-central1-demostripe-b9557.cloudfunctions.net/StripePI';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  disabledColor: Colors.grey,
                  disabledTextColor: Colors.black,
                  padding: EdgeInsets.all(28),
                  onPressed: () {},
                  child: Text(
                    "Pay 10 usd",
                    style: TextStyle(fontSize: 20),
                  )),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
