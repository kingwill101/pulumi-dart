// ignore_for_file: unused_element, unnecessary_cast

/// The interface for the external VPN gateway.
class ExternalVpnGatewayInterfaceResponse2 {
  /// IP address of the interface in the external VPN gateway. Only IPv4 is supported. This IP address can be either from your on-premise gateway or another Cloud provider's VPN gateway, it cannot be an IP address from Google Compute Engine.
  final String ipAddress;

  /// IPv6 address of the interface in the external VPN gateway. This IPv6 address can be either from your on-premise gateway or another Cloud provider's VPN gateway, it cannot be an IP address from Google Compute Engine. Must specify an IPv6 address (not IPV4-mapped) using any format described in RFC 4291 (e.g. 2001:db8:0:0:2d9:51:0:0). The output format is RFC 5952 format (e.g. 2001:db8::2d9:51:0:0).
  final String ipv6Address;

  ExternalVpnGatewayInterfaceResponse2({
    required this.ipAddress,
    required this.ipv6Address,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipAddress'] = ipAddress;
    map['ipv6Address'] = ipv6Address;
    return map;
  }

  factory ExternalVpnGatewayInterfaceResponse2.fromMap(
      Map<String, dynamic> map) {
    return ExternalVpnGatewayInterfaceResponse2(
      ipAddress: map['ipAddress'] as String,
      ipv6Address: map['ipv6Address'] as String,
    );
  }
}
