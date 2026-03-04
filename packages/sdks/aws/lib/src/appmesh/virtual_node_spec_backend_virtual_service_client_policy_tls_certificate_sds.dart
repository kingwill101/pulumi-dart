// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificateSds {
  /// Name of the secret for a virtual node's Transport Layer Security (TLS) Secret Discovery Service validation context trust.
  final pulumi.Input<String> secretName;

  /// Creates a new [VirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificateSds].
  /// [secretName] Name of the secret for a virtual node's Transport Layer Security (TLS) Secret Discovery Service validation context trust.
  VirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificateSds({
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'secretName': secretName};
  }

  factory VirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificateSds.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificateSds(
      secretName: pulumi.Input.fromValue(map['secretName'] as String),
    );
  }
}
