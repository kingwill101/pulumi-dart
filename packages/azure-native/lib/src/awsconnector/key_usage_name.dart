/// KeyUsageName enum
enum KeyUsageName {
  aNY("ANY"),
  cERTIFICATESIGNING("CERTIFICATE_SIGNING"),
  cRLSIGNING("CRL_SIGNING"),
  cUSTOM("CUSTOM"),
  dATAENCIPHERMENT("DATA_ENCIPHERMENT"),
  dECIPHERONLY("DECIPHER_ONLY"),
  dIGITALSIGNATURE("DIGITAL_SIGNATURE"),
  eNCIPHERONLY("ENCIPHER_ONLY"),
  kEYAGREEMENT("KEY_AGREEMENT"),
  kEYENCIPHERMENT("KEY_ENCIPHERMENT"),
  nONREPUDIATION("NON_REPUDIATION");

  const KeyUsageName(this.value);
  final String value;

  static KeyUsageName fromValue(String value) {
    for (final item in KeyUsageName.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KeyUsageName value: $value');
  }
}

