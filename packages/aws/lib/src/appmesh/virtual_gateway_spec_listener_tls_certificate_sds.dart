// ignore_for_file: unused_element, unnecessary_cast

class VirtualGatewaySpecListenerTlsCertificateSds {
  /// Name of the secret for a virtual gateway's Transport Layer Security (TLS) Secret Discovery Service validation context trust.
  final String secretName;

  /// Creates a new [VirtualGatewaySpecListenerTlsCertificateSds].
  /// [secretName] Name of the secret for a virtual gateway's Transport Layer Security (TLS) Secret Discovery Service validation context trust.
  VirtualGatewaySpecListenerTlsCertificateSds({
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretName'] = secretName;
    return map;
  }

  factory VirtualGatewaySpecListenerTlsCertificateSds.fromMap(
      Map<String, dynamic> map) {
    return VirtualGatewaySpecListenerTlsCertificateSds(
      secretName: map['secretName'] as String,
    );
  }
}
