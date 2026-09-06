import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the certificate. Allowed values are `ServerSSLCertificate` and `ImagePullTrustedCA`
enum CertificateType implements pulumi.PulumiEnum<String> {
  valueServerSSLCertificate("ServerSSLCertificate"),
  valueImagePullTrustedCA("ImagePullTrustedCA");

  const CertificateType(this.wireValue);
  @override
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
