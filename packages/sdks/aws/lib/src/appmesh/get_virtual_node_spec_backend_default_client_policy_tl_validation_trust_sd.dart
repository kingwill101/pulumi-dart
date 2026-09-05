// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustSd {
  /// Name of the secret for a virtual node's TLS Secret Discovery Service validation context trust.
  final pulumi.Input<String> secretName;

  /// Creates a new [GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustSd].
  /// [secretName] Name of the secret for a virtual node's TLS Secret Discovery Service validation context trust.
  const GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustSd({
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretName': secretName,
    };
  }

  factory GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustSd.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustSd(
      secretName: pulumi.Input.fromValue(map['secretName'] as String),
    );
  }
}
