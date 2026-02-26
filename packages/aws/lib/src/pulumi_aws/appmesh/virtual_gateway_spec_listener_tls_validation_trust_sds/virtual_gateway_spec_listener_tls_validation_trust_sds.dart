// ignore_for_file: unused_element, unnecessary_cast

class VirtualGatewaySpecListenerTlsValidationTrustSds {
  /// Name of the secret for a virtual gateway's Transport Layer Security (TLS) Secret Discovery Service validation context trust.
  final String secretName;

  VirtualGatewaySpecListenerTlsValidationTrustSds({
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretName'] = secretName;
    return map;
  }

  factory VirtualGatewaySpecListenerTlsValidationTrustSds.fromMap(
      Map<String, dynamic> map) {
    return VirtualGatewaySpecListenerTlsValidationTrustSds(
      secretName: map['secretName'] as String,
    );
  }
}
