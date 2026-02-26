// ignore_for_file: unused_element, unnecessary_cast

class TenantInboundSamlConfigIdpConfigIdpCertificate {
  /// The x509 certificate
  final String? x509Certificate;

  TenantInboundSamlConfigIdpConfigIdpCertificate({
    this.x509Certificate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final x509CertificateValue = x509Certificate;
    if (x509CertificateValue != null) {
      map['x509Certificate'] = x509CertificateValue;
    }
    return map;
  }

  factory TenantInboundSamlConfigIdpConfigIdpCertificate.fromMap(
      Map<String, dynamic> map) {
    return TenantInboundSamlConfigIdpConfigIdpCertificate(
      x509Certificate: map['x509Certificate'] == null
          ? null
          : map['x509Certificate'] as String,
    );
  }
}
