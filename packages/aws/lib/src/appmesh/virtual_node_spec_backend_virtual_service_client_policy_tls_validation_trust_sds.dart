// ignore_for_file: unused_element, unnecessary_cast

class VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrustSds {
  /// Name of the secret for a virtual node's Transport Layer Security (TLS) Secret Discovery Service validation context trust.
  final String secretName;

  /// Creates a new [VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrustSds].
  /// [secretName] Name of the secret for a virtual node's Transport Layer Security (TLS) Secret Discovery Service validation context trust.
  VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrustSds({
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'secretName': secretName};
  }

  factory VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrustSds.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrustSds(
      secretName: map['secretName'] as String,
    );
  }
}
