// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustFile {
  final pulumi.Input<String> certificateChain;

  /// Creates a new [GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustFile].
  /// [certificateChain] Required.
  GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustFile({
    required this.certificateChain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'certificateChain': certificateChain};
  }

  factory GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustFile.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustFile(
      certificateChain: pulumi.Input.fromValue(
        map['certificateChain'] as String,
      ),
    );
  }
}
