/// Type of Server Cert (PEM/JKS/.. etc.)
enum SslConfigServerCertType {
  certTypeUnspecified("CERT_TYPE_UNSPECIFIED"),
  pem("PEM");

  const SslConfigServerCertType(this.value);
  final String value;

  static SslConfigServerCertType fromValue(String value) {
    for (final item in SslConfigServerCertType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslConfigServerCertType value: $value');
  }
}
