/// The type of the certificate. Allowed values are `ServerSSLCertificate` and `ImagePullTrustedCA`
enum CertificateType {
  valueServerSSLCertificate("ServerSSLCertificate"),
  valueImagePullTrustedCA("ImagePullTrustedCA");

  const CertificateType(this.value);
  final String value;

  static CertificateType fromValue(String value) {
    for (final item in CertificateType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CertificateType value: $value');
  }
}

