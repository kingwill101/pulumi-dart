/// Defines how TLS certificates are obtained.
enum TlsCertificateContextCertificateSource {
  invalid("INVALID"),
  usePath("USE_PATH"),
  useSds("USE_SDS");

  const TlsCertificateContextCertificateSource(this.value);
  final String value;

  static TlsCertificateContextCertificateSource fromValue(String value) {
    for (final item in TlsCertificateContextCertificateSource.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown TlsCertificateContextCertificateSource value: $value');
  }
}
