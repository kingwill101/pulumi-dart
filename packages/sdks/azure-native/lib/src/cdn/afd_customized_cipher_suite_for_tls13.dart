enum AfdCustomizedCipherSuiteForTls13 {
  tLSAES128GCMSHA256("TLS_AES_128_GCM_SHA256"),
  tLSAES256GCMSHA384("TLS_AES_256_GCM_SHA384");

  const AfdCustomizedCipherSuiteForTls13(this.wireValue);
  final String wireValue;

  static AfdCustomizedCipherSuiteForTls13 fromValue(String value) {
    for (final item in AfdCustomizedCipherSuiteForTls13.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AfdCustomizedCipherSuiteForTls13 value: $value');
  }
}
