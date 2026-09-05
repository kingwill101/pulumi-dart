// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualNodeSpecBackendDefaultsClientPolicyTlsCertificateSds {
  /// Name of the secret for a virtual node's TLS Secret Discovery Service validation context trust.
  final pulumi.Input<String> secretName;

  /// Creates a new [VirtualNodeSpecBackendDefaultsClientPolicyTlsCertificateSds].
  /// [secretName] Name of the secret for a virtual node's TLS Secret Discovery Service validation context trust.
  const VirtualNodeSpecBackendDefaultsClientPolicyTlsCertificateSds({
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretName': secretName,
    };
  }

  factory VirtualNodeSpecBackendDefaultsClientPolicyTlsCertificateSds.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecBackendDefaultsClientPolicyTlsCertificateSds(
      secretName: pulumi.Input.fromValue(map['secretName'] as String),
    );
  }
}
