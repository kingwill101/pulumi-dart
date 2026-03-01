// ignore_for_file: unused_element, unnecessary_cast

class InboundSamlConfigIdpConfigIdpCertificate {
  /// The IdP's x509 certificate.
  final String? x509Certificate;

  /// Creates a new [InboundSamlConfigIdpConfigIdpCertificate].
  /// [x509Certificate] The IdP's x509 certificate.
  InboundSamlConfigIdpConfigIdpCertificate({this.x509Certificate});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'x509Certificate': ?x509Certificate};
  }

  factory InboundSamlConfigIdpConfigIdpCertificate.fromMap(
    Map<String, dynamic> map,
  ) {
    return InboundSamlConfigIdpConfigIdpCertificate(
      x509Certificate: map['x509Certificate'] == null
          ? null
          : map['x509Certificate'] as String,
    );
  }
}
