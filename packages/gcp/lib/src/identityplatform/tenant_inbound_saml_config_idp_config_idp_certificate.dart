// ignore_for_file: unused_element, unnecessary_cast

class TenantInboundSamlConfigIdpConfigIdpCertificate {
  /// The x509 certificate
  final String? x509Certificate;

  /// Creates a new [TenantInboundSamlConfigIdpConfigIdpCertificate].
  /// [x509Certificate] The x509 certificate
  TenantInboundSamlConfigIdpConfigIdpCertificate({this.x509Certificate});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'x509Certificate': ?x509Certificate};
  }

  factory TenantInboundSamlConfigIdpConfigIdpCertificate.fromMap(
    Map<String, dynamic> map,
  ) {
    return TenantInboundSamlConfigIdpConfigIdpCertificate(
      x509Certificate: map['x509Certificate'] == null
          ? null
          : map['x509Certificate'] as String,
    );
  }
}
