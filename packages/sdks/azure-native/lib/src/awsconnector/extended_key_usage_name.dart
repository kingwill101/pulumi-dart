import 'package:pulumi/pulumi.dart' as pulumi;

/// ExtendedKeyUsageName enum
enum ExtendedKeyUsageName implements pulumi.PulumiEnum<String> {
  aNY("ANY"),
  cODESIGNING("CODE_SIGNING"),
  cUSTOM("CUSTOM"),
  eMAILPROTECTION("EMAIL_PROTECTION"),
  iPSECENDSYSTEM("IPSEC_END_SYSTEM"),
  iPSECTUNNEL("IPSEC_TUNNEL"),
  iPSECUSER("IPSEC_USER"),
  nONE("NONE"),
  oCSPSIGNING("OCSP_SIGNING"),
  tIMESTAMPING("TIME_STAMPING"),
  tLSWEBCLIENTAUTHENTICATION("TLS_WEB_CLIENT_AUTHENTICATION"),
  tLSWEBSERVERAUTHENTICATION("TLS_WEB_SERVER_AUTHENTICATION");

  const ExtendedKeyUsageName(this.wireValue);
  @override
  final String wireValue;

  static ExtendedKeyUsageName fromValue(String value) {
    for (final item in ExtendedKeyUsageName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExtendedKeyUsageName value: $value');
  }
}
