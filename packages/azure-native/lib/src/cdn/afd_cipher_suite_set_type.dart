/// cipher suite set type that will be used for Https
enum AfdCipherSuiteSetType {
  customized("Customized"),
  tLS102019("TLS10_2019"),
  tLS122022("TLS12_2022"),
  tLS122023("TLS12_2023");

  const AfdCipherSuiteSetType(this.value);
  final String value;

  static AfdCipherSuiteSetType fromValue(String value) {
    for (final item in AfdCipherSuiteSetType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AfdCipherSuiteSetType value: $value');
  }
}

