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
    return <String, dynamic>{
      'certificateArn': certificateArn,
    };
  }

  factory VirtualGatewaySpecListenerTlsCertificateAcm.fromMap(Map<String, dynamic> map) {
    return VirtualGatewaySpecListenerTlsCertificateAcm(
      certificateArn: map['certificateArn'] as String,
    );
  }
}

