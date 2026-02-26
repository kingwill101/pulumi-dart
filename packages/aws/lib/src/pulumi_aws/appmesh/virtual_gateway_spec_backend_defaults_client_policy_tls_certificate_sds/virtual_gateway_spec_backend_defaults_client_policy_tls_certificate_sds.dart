// ignore_for_file: unused_element, unnecessary_cast

class VirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificateSds {
  /// Name of the secret for a virtual gateway's Transport Layer Security (TLS) Secret Discovery Service validation context trust.
  final String secretName;

  VirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificateSds({
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretName'] = secretName;
    return map;
  }

  factory VirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificateSds.fromMap(
      Map<String, dynamic> map) {
    return VirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificateSds(
      secretName: map['secretName'] as String,
    );
  }
}
