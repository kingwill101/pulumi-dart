// ignore_for_file: unused_element, unnecessary_cast

class VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrustSds {
  /// Name of the secret for a virtual node's Transport Layer Security (TLS) Secret Discovery Service validation context trust.
  final String secretName;

  VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrustSds({
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretName'] = secretName;
    return map;
  }

  factory VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrustSds.fromMap(
      Map<String, dynamic> map) {
    return VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrustSds(
      secretName: map['secretName'] as String,
    );
  }
}
