// ignore_for_file: unused_element, unnecessary_cast

/// Contains information required to contact CA service.
class CertificateAuthorityServiceConfig {
  /// A CA pool resource used to issue a certificate. The CA pool string has a relative resource path following the form "projects/{project}/locations/{location}/caPools/{ca_pool}".
  final String caPool;

  CertificateAuthorityServiceConfig({
    required this.caPool,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['caPool'] = caPool;
    return map;
  }

  factory CertificateAuthorityServiceConfig.fromMap(Map<String, dynamic> map) {
    return CertificateAuthorityServiceConfig(
      caPool: map['caPool'] as String,
    );
  }
}
