// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualGatewaySpecListenerTlValidationTrustSd {
  final pulumi.Input<String> secretName;

  /// Creates a new [GetVirtualGatewaySpecListenerTlValidationTrustSd].
  /// [secretName] Required.
  GetVirtualGatewaySpecListenerTlValidationTrustSd({required this.secretName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'secretName': secretName};
  }

  factory GetVirtualGatewaySpecListenerTlValidationTrustSd.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualGatewaySpecListenerTlValidationTrustSd(
      secretName: pulumi.Input.fromValue(map['secretName'] as String),
    );
  }
}
