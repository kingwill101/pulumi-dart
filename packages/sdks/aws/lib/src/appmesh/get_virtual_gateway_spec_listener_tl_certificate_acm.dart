// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualGatewaySpecListenerTlCertificateAcm {
  final pulumi.Input<String> certificateArn;

  /// Creates a new [GetVirtualGatewaySpecListenerTlCertificateAcm].
  /// [certificateArn] Required.
  GetVirtualGatewaySpecListenerTlCertificateAcm({required this.certificateArn});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'certificateArn': certificateArn};
  }

  factory GetVirtualGatewaySpecListenerTlCertificateAcm.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualGatewaySpecListenerTlCertificateAcm(
      certificateArn: pulumi.Input.fromValue(map['certificateArn'] as String),
    );
  }
}
