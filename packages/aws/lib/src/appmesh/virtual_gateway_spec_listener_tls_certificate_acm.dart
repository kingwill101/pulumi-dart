// ignore_for_file: unused_element, unnecessary_cast

class VirtualGatewaySpecListenerTlsCertificateAcm {
  /// ARN for the certificate.
  final String certificateArn;

  /// Creates a new [VirtualGatewaySpecListenerTlsCertificateAcm].
  /// [certificateArn] ARN for the certificate.
  VirtualGatewaySpecListenerTlsCertificateAcm({
    required this.certificateArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateArn'] = certificateArn;
    return map;
  }

  factory VirtualGatewaySpecListenerTlsCertificateAcm.fromMap(
      Map<String, dynamic> map) {
    return VirtualGatewaySpecListenerTlsCertificateAcm(
      certificateArn: map['certificateArn'] as String,
    );
  }
}
