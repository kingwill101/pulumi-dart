/// (Optional) Specifies the type of SSL certificate, either "SELF_MANAGED" or "MANAGED". If not specified, the certificate is self-managed and the fields certificate and private_key are used.
enum RegionSslCertificateType {
  managed("MANAGED"),
  selfManaged("SELF_MANAGED"),
  typeUnspecified("TYPE_UNSPECIFIED");

  const RegionSslCertificateType(this.value);
  final String value;

  static RegionSslCertificateType fromValue(String value) {
    for (final item in RegionSslCertificateType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionSslCertificateType value: $value');
  }
}

