// ignore_for_file: unused_element, unnecessary_cast


class VirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificateSds {
  /// Name of the secret for a virtual node's Transport Layer Security (TLS) Secret Discovery Service validation context trust.
  final String secretName;

  /// Creates a new [VirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificateSds].
  /// [secretName] Name of the secret for a virtual node's Transport Layer Security (TLS) Secret Discovery Service validation context trust.
  VirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificateSds({
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretName': secretName,
    };
  }

  factory VirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificateSds.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificateSds(
      secretName: map['secretName'] as String,
    );
  }
}

