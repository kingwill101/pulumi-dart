/// Controls the ssl type for the given connector version.
enum SslConfigType {
  sslTypeUnspecified("SSL_TYPE_UNSPECIFIED"),
  tls("TLS"),
  mtls("MTLS");

  const SslConfigType(this.value);
  final String value;

  static SslConfigType fromValue(String value) {
    for (final item in SslConfigType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslConfigType value: $value');
  }
}
