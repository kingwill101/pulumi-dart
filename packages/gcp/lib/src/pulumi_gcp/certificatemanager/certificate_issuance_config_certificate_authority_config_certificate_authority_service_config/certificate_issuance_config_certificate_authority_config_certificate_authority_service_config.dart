// ignore_for_file: unused_element, unnecessary_cast

class CertificateIssuanceConfigCertificateAuthorityConfigCertificateAuthorityServiceConfig {
  /// A CA pool resource used to issue a certificate.
  /// The CA pool string has a relative resource path following the form
  /// "projects/{project}/locations/{location}/caPools/{caPool}".
  final String caPool;

  CertificateIssuanceConfigCertificateAuthorityConfigCertificateAuthorityServiceConfig({
    required this.caPool,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['caPool'] = caPool;
    return map;
  }

  factory CertificateIssuanceConfigCertificateAuthorityConfigCertificateAuthorityServiceConfig.fromMap(
      Map<String, dynamic> map) {
    return CertificateIssuanceConfigCertificateAuthorityConfigCertificateAuthorityServiceConfig(
      caPool: map['caPool'] as String,
    );
  }
}
