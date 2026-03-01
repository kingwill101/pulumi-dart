// ignore_for_file: unused_element, unnecessary_cast


class VirtualNetworkGatewayVpnClientConfigurationRevokedCertificate {
  /// Specifies the name of the certificate resource.
  final String name;
  /// Specifies the public data of the certificate.
  final String thumbprint;

  /// Creates a new [VirtualNetworkGatewayVpnClientConfigurationRevokedCertificate].
  /// [name] Specifies the name of the certificate resource.
  /// [thumbprint] Specifies the public data of the certificate.
  VirtualNetworkGatewayVpnClientConfigurationRevokedCertificate({
    required this.name,
    required this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'thumbprint': thumbprint,
    };
  }

  factory VirtualNetworkGatewayVpnClientConfigurationRevokedCertificate.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayVpnClientConfigurationRevokedCertificate(
      name: map['name'] as String,
      thumbprint: map['thumbprint'] as String,
    );
  }
}

