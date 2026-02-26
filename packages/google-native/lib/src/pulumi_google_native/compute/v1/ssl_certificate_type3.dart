/// (Optional) Specifies the type of SSL certificate, either "SELF_MANAGED" or "MANAGED". If not specified, the certificate is self-managed and the fields certificate and private_key are used.
enum SslCertificateType3 {
  managed("MANAGED"),
  selfManaged("SELF_MANAGED"),
  typeUnspecified("TYPE_UNSPECIFIED");

  const SslCertificateType3(this.value);
  final String value;

  static SslCertificateType3 fromValue(String value) {
    for (final item in SslCertificateType3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslCertificateType3 value: $value');
  }
}
