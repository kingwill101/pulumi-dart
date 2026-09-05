// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificateSd {
  /// Name of the secret for a virtual node's TLS Secret Discovery Service validation context trust.
  final pulumi.Input<String> secretName;

  /// Creates a new [GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificateSd].
  /// [secretName] Name of the secret for a virtual node's TLS Secret Discovery Service validation context trust.
  const GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificateSd({
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretName': secretName,
    };
  }

  factory GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificateSd.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificateSd(
      secretName: pulumi.Input.fromValue(map['secretName'] as String),
    );
  }
}
