/// (Optional) Specifies the type of SSL certificate, either "SELF_MANAGED" or "MANAGED". If not specified, the certificate is self-managed and the fields certificate and private_key are used.
enum SslCertificateTypeComputeV1 {
  managed("MANAGED"),
  selfManaged("SELF_MANAGED"),
  typeUnspecified("TYPE_UNSPECIFIED");

  const SslCertificateTypeComputeV1(this.value);
  final String value;

  static SslCertificateTypeComputeV1 fromValue(String value) {
    for (final item in SslCertificateTypeComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslCertificateTypeComputeV1 value: $value');
  }
}

