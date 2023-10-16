import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool like = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Mission 1",
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Stack(
        children: [
          SizedBox(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.green,
                    Colors.blue,
                  ],
                ),
              ),
              child: Column(
                children: [
                  Flexible(
                    flex: 2,
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.amber,
                      child: Image.asset(
                        'images/wizard.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  // foto row
                  Flexible(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.all(7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Flexible(
                            flex: 1,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(13),
                              child: AspectRatio(
                                aspectRatio: 1.0,
                                child: Image.asset(
                                  'images/decade.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(13),
                              child: AspectRatio(
                                aspectRatio: 1.0,
                                child: Image.asset(
                                  'images/double.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(13),
                              child: AspectRatio(
                                aspectRatio: 1.0,
                                child: Image.asset(
                                  'images/fourse.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 4,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(13),
                              child: AspectRatio(
                                aspectRatio: 1.0,
                                child: Image.asset(
                                  'images/ooo.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Flexible(
                    flex: 4,
                    child: Column(
                      children: [
                        Text(
                          "kamen rider how to",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            clipBehavior: Clip.antiAlias,
                            padding: EdgeInsets.all(7),
                            child: Text(
                              '''
Serial Kamen Rider atau dalam bahasa Jepang aslinya Kamen Rider Series (仮面ライダーシリーズ, Kamen Raidā Shirīzu, terjemahan resmi: Masked Rider Series)—sempat diterjemahkan menjadi "Ksatria Baja" ketika ditayangkan di Indonesia— adalah sebuah Waralaba media untuk Manga dan program drama Televisi dan film tokusatsu, 
yang diciptakan oleh seorang mangaka, Shotaro Ishinomori. Kamen Rider adalah serial yang bertemakan pahlawan super yang selalu mengendarai sepeda motor dan bermotif serangga melawan organisasi penjahat super, yang dikenal sebagai kaijin (怪人).
 Waralaba ini pertama kali menayangkan serial televisi Kamen Rider pada tahun 1971, 
 di mana seorang mahasiswa yang bernama Takeshi Hongo dan usahanya untuk mengalahkan organisasi penakluk dunia
 , Shocker. Popularitasnya berkembang; serial asli melanjutkan sekuel televisi dan film dan meluncurkan Ledakan Kaiju Kedua (juga dikenal sebagai Henshin Boom) di televisi Jepang selama awal 1970-an, yang berdampak pada superhero dan genre aksi-petualangan lainnya di Jepang.[
                        ''',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // button
          Positioned(
            top: 16,
            left: 16,
            child: FloatingActionButton(
              onPressed: () {
                setState(() {
                  like = !like;
                });
              },
              backgroundColor: Colors.white,
              elevation: 10,
              shape: const CircleBorder(),
              child: Icon(
                Icons.favorite,
                color: like ? Colors.red.shade900 : Colors.grey.shade400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}