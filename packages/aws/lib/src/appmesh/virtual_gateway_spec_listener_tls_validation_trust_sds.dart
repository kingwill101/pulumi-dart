// ignore_for_file: unused_element, unnecessary_cast

class VirtualGatewaySpecListenerTlsValidationTrustSds {
  /// Name of the secret for a virtual gateway's Transport Layer Security (TLS) Secret Discovery Service validation context trust.
  final String secretName;

  /// Creates a new [VirtualGatewaySpecListenerTlsValidationTrustSds].
  /// [secretName] Name of the secret for a virtual gateway's Transport Layer Security (TLS) Secret Discovery Service validation context trust.
  VirtualGatewaySpecListenerTlsValidationTrustSds({required this.secretName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'secretName': secretName};
  }

  factory VirtualGatewaySpecListenerTlsValidationTrustSds.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualGatewaySpecListenerTlsValidationTrustSds(
      secretName: map['secretName'] as String,
    );
  }
}
