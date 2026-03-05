// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualGatewaySpecListenerTlValidationTrustFile {
  final pulumi.Input<String> certificateChain;

  /// Creates a new [GetVirtualGatewaySpecListenerTlValidationTrustFile].
  /// [certificateChain] Required.
  GetVirtualGatewaySpecListenerTlValidationTrustFile({
    required this.certificateChain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateChain': certificateChain,
    };
  }

  factory GetVirtualGatewaySpecListenerTlValidationTrustFile.fromMap(Map<String, dynamic> map) {
    return GetVirtualGatewaySpecListenerTlValidationTrustFile(
      certificateChain: pulumi.Input.fromValue(map['certificateChain'] as String),
    );
  }
}

