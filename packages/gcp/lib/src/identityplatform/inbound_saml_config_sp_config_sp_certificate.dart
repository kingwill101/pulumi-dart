// ignore_for_file: unused_element, unnecessary_cast

class InboundSamlConfigSpConfigSpCertificate {
  /// The x509 certificate
  final String? x509Certificate;

  /// Creates a new [InboundSamlConfigSpConfigSpCertificate].
  /// [x509Certificate] The x509 certificate
  InboundSamlConfigSpConfigSpCertificate({this.x509Certificate});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'x509Certificate': ?x509Certificate};
  }

  factory InboundSamlConfigSpConfigSpCertificate.fromMap(
    Map<String, dynamic> map,
  ) {
    return InboundSamlConfigSpConfigSpCertificate(
      x509Certificate: map['x509Certificate'] == null
          ? null
          : map['x509Certificate'] as String,
    );
  }
}
