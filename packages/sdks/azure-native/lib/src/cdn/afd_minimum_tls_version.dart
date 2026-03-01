/// TLS protocol version that will be used for Https when cipherSuiteSetType is Customized.
enum AfdMinimumTlsVersion {
  valueTLS10("TLS10"),
  valueTLS12("TLS12"),
  valueTLS13("TLS13");

  const AfdMinimumTlsVersion(this.value);
  final String value;

  static AfdMinimumTlsVersion fromValue(String value) {
    for (final item in AfdMinimumTlsVersion.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AfdMinimumTlsVersion value: $value');
  }
}

