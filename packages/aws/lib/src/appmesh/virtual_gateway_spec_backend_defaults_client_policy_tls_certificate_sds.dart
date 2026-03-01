// ignore_for_file: unused_element, unnecessary_cast

class VirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificateSds {
  /// Name of the secret for a virtual gateway's Transport Layer Security (TLS) Secret Discovery Service validation context trust.
  final String secretName;

  /// Creates a new [VirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificateSds].
  /// [secretName] Name of the secret for a virtual gateway's Transport Layer Security (TLS) Secret Discovery Service validation context trust.
  VirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificateSds({
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'secretName': secretName};
  }

  factory VirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificateSds.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificateSds(
      secretName: map['secretName'] as String,
    );
  }
}
