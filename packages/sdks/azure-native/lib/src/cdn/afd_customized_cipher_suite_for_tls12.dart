enum AfdCustomizedCipherSuiteForTls12 {
  eCDHERSAAES128GCMSHA256("ECDHE_RSA_AES128_GCM_SHA256"),
  eCDHERSAAES256GCMSHA384("ECDHE_RSA_AES256_GCM_SHA384"),
  dHERSAAES256GCMSHA384("DHE_RSA_AES256_GCM_SHA384"),
  dHERSAAES128GCMSHA256("DHE_RSA_AES128_GCM_SHA256"),
  eCDHERSAAES128SHA256("ECDHE_RSA_AES128_SHA256"),
  eCDHERSAAES256SHA384("ECDHE_RSA_AES256_SHA384");

  const AfdCustomizedCipherSuiteForTls12(this.wireValue);
  final String wireValue;

  static AfdCustomizedCipherSuiteForTls12 fromValue(String value) {
    for (final item in AfdCustomizedCipherSuiteForTls12.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AfdCustomizedCipherSuiteForTls12 value: $value');
  }
}
