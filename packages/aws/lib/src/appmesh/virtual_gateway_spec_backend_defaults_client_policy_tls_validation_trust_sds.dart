// ignore_for_file: unused_element, unnecessary_cast

class VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrustSds {
  /// Name of the secret for a virtual gateway's Transport Layer Security (TLS) Secret Discovery Service validation context trust.
  final String secretName;

  /// Creates a new [VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrustSds].
  /// [secretName] Name of the secret for a virtual gateway's Transport Layer Security (TLS) Secret Discovery Service validation context trust.
  VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrustSds({
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretName'] = secretName;
    return map;
  }

  factory VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrustSds.fromMap(
      Map<String, dynamic> map) {
    return VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrustSds(
      secretName: map['secretName'] as String,
    );
  }
}
