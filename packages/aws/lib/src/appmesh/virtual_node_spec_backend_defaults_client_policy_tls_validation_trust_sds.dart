// ignore_for_file: unused_element, unnecessary_cast

class VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustSds {
  /// Name of the secret for a virtual node's Transport Layer Security (TLS) Secret Discovery Service validation context trust.
  final String secretName;

  /// Creates a new [VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustSds].
  /// [secretName] Name of the secret for a virtual node's Transport Layer Security (TLS) Secret Discovery Service validation context trust.
  VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustSds({
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretName'] = secretName;
    return map;
  }

  factory VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustSds.fromMap(
      Map<String, dynamic> map) {
    return VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustSds(
      secretName: map['secretName'] as String,
    );
  }
}
