// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificateSd {
  /// Name of the secret for a virtual node's Transport Layer Security (TLS) Secret Discovery Service validation context trust.
  final pulumi.Input<String> secretName;

  /// Creates a new [GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificateSd].
  /// [secretName] Name of the secret for a virtual node's Transport Layer Security (TLS) Secret Discovery Service validation context trust.
  const GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificateSd({
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretName': secretName,
    };
  }

  factory GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificateSd.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificateSd(
      secretName: pulumi.Input.fromValue(map['secretName'] as String),
    );
  }
}
