/// Enforce a minimal Tls version for the server.
enum MinimalTlsVersionEnum {
  valueTLS10("TLS1_0"),
  valueTLS11("TLS1_1"),
  valueTLS12("TLS1_2"),
  valueTLSEnforcementDisabled("TLSEnforcementDisabled");

  const MinimalTlsVersionEnum(this.value);
  final String value;

  static MinimalTlsVersionEnum fromValue(String value) {
    for (final item in MinimalTlsVersionEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MinimalTlsVersionEnum value: $value');
  }
}

