// ignore_for_file: unused_element, unnecessary_cast

/// Contains information required to contact CA service.
class CertificateAuthorityServiceConfigResponse {
  /// A CA pool resource used to issue a certificate. The CA pool string has a relative resource path following the form "projects/{project}/locations/{location}/caPools/{ca_pool}".
  final String caPool;

  /// Creates a new [CertificateAuthorityServiceConfigResponse].
  /// [caPool] A CA pool resource used to issue a certificate. The CA pool string has a relative resource path following the form "projects/{project}/locations/{location}/caPools/{ca_pool}".
  CertificateAuthorityServiceConfigResponse({
    required this.caPool,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['caPool'] = caPool;
    return map;
  }

  factory CertificateAuthorityServiceConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return CertificateAuthorityServiceConfigResponse(
      caPool: map['caPool'] as String,
    );
  }
}
