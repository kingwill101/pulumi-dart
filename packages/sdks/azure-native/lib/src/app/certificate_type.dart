/// The type of the certificate. Allowed values are `ServerSSLCertificate` and `ImagePullTrustedCA`
enum CertificateType {
  valueServerSSLCertificate("ServerSSLCertificate"),
  valueImagePullTrustedCA("ImagePullTrustedCA");

  const CertificateType(this.wireValue);
  final String wireValue;

  static CertificateType fromValue(String value) {
    for (final item in CertificateType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CertificateType value: $value');
  }
}
