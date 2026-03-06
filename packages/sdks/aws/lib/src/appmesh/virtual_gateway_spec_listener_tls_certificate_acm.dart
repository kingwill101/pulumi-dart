// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualGatewaySpecListenerTlsCertificateAcm {
  /// ARN for the certificate.
  final pulumi.Input<String> certificateArn;

  /// Creates a new [VirtualGatewaySpecListenerTlsCertificateAcm].
  /// [certificateArn] ARN for the certificate.
  const VirtualGatewaySpecListenerTlsCertificateAcm({
    required this.certificateArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateArn': certificateArn,
    };
  }

  factory VirtualGatewaySpecListenerTlsCertificateAcm.fromMap(Map<String, dynamic> map) {
    return VirtualGatewaySpecListenerTlsCertificateAcm(
      certificateArn: pulumi.Input.fromValue(map['certificateArn'] as String),
    );
  }
}

