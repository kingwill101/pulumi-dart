// ignore_for_file: unused_element, unnecessary_cast


class GetVirtualNetworkGatewayVpnClientConfigurationRootCertificate {
  /// Specifies the name of the Virtual Network Gateway.
  final String name;
  /// The public certificate of the root certificate
  /// authority. The certificate must be provided in Base-64 encoded X.509 format
  /// (PEM).
  final String publicCertData;

  /// Creates a new [GetVirtualNetworkGatewayVpnClientConfigurationRootCertificate].
  /// [name] Specifies the name of the Virtual Network Gateway.
  /// [publicCertData] The public certificate of the root certificate
  GetVirtualNetworkGatewayVpnClientConfigurationRootCertificate({
    required this.name,
    required this.publicCertData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'publicCertData': publicCertData,
    };
  }

  factory GetVirtualNetworkGatewayVpnClientConfigurationRootCertificate.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkGatewayVpnClientConfigurationRootCertificate(
      name: map['name'] as String,
      publicCertData: map['publicCertData'] as String,
    );
  }
}

