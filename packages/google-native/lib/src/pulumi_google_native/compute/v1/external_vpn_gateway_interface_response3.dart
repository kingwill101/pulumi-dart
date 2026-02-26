// ignore_for_file: unused_element, unnecessary_cast

/// The interface for the external VPN gateway.
class ExternalVpnGatewayInterfaceResponse3 {
  /// IP address of the interface in the external VPN gateway. Only IPv4 is supported. This IP address can be either from your on-premise gateway or another Cloud provider's VPN gateway, it cannot be an IP address from Google Compute Engine.
  final String ipAddress;

  ExternalVpnGatewayInterfaceResponse3({
    required this.ipAddress,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipAddress'] = ipAddress;
    return map;
  }

  factory ExternalVpnGatewayInterfaceResponse3.fromMap(
      Map<String, dynamic> map) {
    return ExternalVpnGatewayInterfaceResponse3(
      ipAddress: map['ipAddress'] as String,
    );
  }
}
