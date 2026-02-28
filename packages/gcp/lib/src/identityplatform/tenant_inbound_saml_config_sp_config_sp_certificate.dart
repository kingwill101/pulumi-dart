// ignore_for_file: unused_element, unnecessary_cast

class TenantInboundSamlConfigSpConfigSpCertificate {
  /// The x509 certificate
  final String? x509Certificate;

  /// Creates a new [TenantInboundSamlConfigSpConfigSpCertificate].
  /// [x509Certificate] The x509 certificate
  TenantInboundSamlConfigSpConfigSpCertificate({
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

  factory TenantInboundSamlConfigSpConfigSpCertificate.fromMap(
      Map<String, dynamic> map) {
    return TenantInboundSamlConfigSpConfigSpCertificate(
      x509Certificate: map['x509Certificate'] == null
          ? null
          : map['x509Certificate'] as String,
    );
  }
}
