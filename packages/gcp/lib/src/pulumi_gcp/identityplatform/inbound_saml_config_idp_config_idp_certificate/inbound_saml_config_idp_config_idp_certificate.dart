// ignore_for_file: unused_element, unnecessary_cast

class InboundSamlConfigIdpConfigIdpCertificate {
  /// The IdP's x509 certificate.
  final String? x509Certificate;

  InboundSamlConfigIdpConfigIdpCertificate({
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

  factory InboundSamlConfigIdpConfigIdpCertificate.fromMap(
      Map<String, dynamic> map) {
    return InboundSamlConfigIdpConfigIdpCertificate(
      x509Certificate: map['x509Certificate'] == null
          ? null
          : map['x509Certificate'] as String,
    );
  }
}
