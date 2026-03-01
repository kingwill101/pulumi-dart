/// (Optional) Specifies the type of SSL certificate, either "SELF_MANAGED" or "MANAGED". If not specified, the certificate is self-managed and the fields certificate and private_key are used.
enum RegionSslCertificateTypeComputeBeta {
  managed("MANAGED"),
  selfManaged("SELF_MANAGED"),
  typeUnspecified("TYPE_UNSPECIFIED");

  const RegionSslCertificateTypeComputeBeta(this.value);
  final String value;

  static RegionSslCertificateTypeComputeBeta fromValue(String value) {
    for (final item in RegionSslCertificateTypeComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown RegionSslCertificateTypeComputeBeta value: $value',
    );
  }
}
