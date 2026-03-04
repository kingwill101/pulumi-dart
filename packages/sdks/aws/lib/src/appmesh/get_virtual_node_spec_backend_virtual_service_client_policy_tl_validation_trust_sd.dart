// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustSd {
  final pulumi.Input<String> secretName;

  /// Creates a new [GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustSd].
  /// [secretName] Required.
  GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustSd({
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'secretName': secretName};
  }

  factory GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustSd.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustSd(
      secretName: pulumi.Input.fromValue(map['secretName'] as String),
    );
  }
}
