import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'Indeks Massa Tubuh';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          title: Text(
            title,
            style: GoogleFonts.poppins(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 19, 269, 13),
                child: Text(
                  'Berat Badan',
                  style: GoogleFonts.poppins(
                      fontSize: 16.0, fontWeight: FontWeight.w500),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    flex: 0,
                    child: Text("___-", style: TextStyle(color: Colors.white) ),
                  ),
                  Expanded(
                      flex: 3,
                      child: TextField(
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(20, 15, 0, 0),
                          border: OutlineInputBorder(),
                          hintText: 'Masukkan Berat',
                          hintStyle: GoogleFonts.poppins(fontSize: 16),
                        ),
                      )),
                  Expanded(
                    flex: 1,
                    child: Text(
                      'kg  ▼  ',
                      textAlign: TextAlign.right,
                      style: GoogleFonts.poppins(
                          fontSize: 16.0, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Expanded(
                    flex: 0,
                    child: Text("__", style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 13, 269, 13),
                child: Text(
                  'Tinggi Badan',
                  style: GoogleFonts.poppins(
                      fontSize: 16.0, fontWeight: FontWeight.w500),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 0,
                    child: Text("___-", style: TextStyle(color: Colors.white)),
                  ),
                  Expanded(
                      flex: 3,
                      child: TextField(
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(20, 15, 0, 0),
                            border: OutlineInputBorder(),
                            hintText: 'Masukkan Tinggi',
                            hintStyle: GoogleFonts.poppins(fontSize: 16)),
                      )),
                  Expanded(
                    flex: 1,
                    child: Text(
                      'cm  ▼   ',
                      textAlign: TextAlign.right,
                      style: GoogleFonts.poppins(
                          fontSize: 16.0, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Expanded(
                    flex: 0,
                    child: Text("__", style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: 40,
                margin: EdgeInsets.fromLTRB(18, 38, 18, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(
                        150,
                        10,
                        150,
                        10,
                      ),
                      shape: new RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                  onPressed: () {},
                  child: Text(
                    'HITUNG',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
