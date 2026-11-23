import 'package:pulumi/pulumi.dart' as pulumi;

enum UlimitName implements pulumi.PulumiEnum<String> {
  cORE("core"),
  cPU("cpu"),
  dATA("data"),
  fSIZE("fsize"),
  lOCKS("locks"),
  mEMLOCK("memlock"),
  mSGQUEUE("msgqueue"),
  nICE("nice"),
  nOFILE("nofile"),
  nPROC("nproc"),
  rSS("rss"),
  rTPRIO("rtprio"),
  rTTIME("rttime"),
  sIGPENDING("sigpending"),
  sTACK("stack");

  const UlimitName(this.wireValue);
  @override
  final String wireValue;

  static UlimitName fromValue(String value) {
    for (final item in UlimitName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UlimitName value: $value');
  }
}
