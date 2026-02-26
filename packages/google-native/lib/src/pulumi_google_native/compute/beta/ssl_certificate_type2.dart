/// (Optional) Specifies the type of SSL certificate, either "SELF_MANAGED" or "MANAGED". If not specified, the certificate is self-managed and the fields certificate and private_key are used.
enum SslCertificateType2 {
  managed("MANAGED"),
  selfManaged("SELF_MANAGED"),
  typeUnspecified("TYPE_UNSPECIFIED");

  const SslCertificateType2(this.value);
  final String value;

  static SslCertificateType2 fromValue(String value) {
    for (final item in SslCertificateType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslCertificateType2 value: $value');
  }
}
