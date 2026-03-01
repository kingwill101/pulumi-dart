// ignore_for_file: unused_element, unnecessary_cast

/// The interface for the external VPN gateway.
class ExternalVpnGatewayInterface {
  /// The numeric ID of this interface. The allowed input values for this id for different redundancy types of external VPN gateway: - SINGLE_IP_INTERNALLY_REDUNDANT - 0 - TWO_IPS_REDUNDANCY - 0, 1 - FOUR_IPS_REDUNDANCY - 0, 1, 2, 3
  final int? id;

  /// IP address of the interface in the external VPN gateway. Only IPv4 is supported. This IP address can be either from your on-premise gateway or another Cloud provider's VPN gateway, it cannot be an IP address from Google Compute Engine.
  final String? ipAddress;

  /// IPv6 address of the interface in the external VPN gateway. This IPv6 address can be either from your on-premise gateway or another Cloud provider's VPN gateway, it cannot be an IP address from Google Compute Engine. Must specify an IPv6 address (not IPV4-mapped) using any format described in RFC 4291 (e.g. 2001:db8:0:0:2d9:51:0:0). The output format is RFC 5952 format (e.g. 2001:db8::2d9:51:0:0).
  final String? ipv6Address;

  /// Creates a new [ExternalVpnGatewayInterface].
  /// [id] The numeric ID of this interface. The allowed input values for this id for different redundancy types of external VPN gateway: - SINGLE_IP_INTERNALLY_REDUNDANT - 0 - TWO_IPS_REDUNDANCY - 0, 1 - FOUR_IPS_REDUNDANCY - 0, 1, 2, 3
  /// [ipAddress] IP address of the interface in the external VPN gateway. Only IPv4 is supported. This IP address can be either from your on-premise gateway or another Cloud provider's VPN gateway, it cannot be an IP address from Google Compute Engine.
  /// [ipv6Address] IPv6 address of the interface in the external VPN gateway. This IPv6 address can be either from your on-premise gateway or another Cloud provider's VPN gateway, it cannot be an IP address from Google Compute Engine. Must specify an IPv6 address (not IPV4-mapped) using any format described in RFC 4291 (e.g. 2001:db8:0:0:2d9:51:0:0). The output format is RFC 5952 format (e.g. 2001:db8::2d9:51:0:0).
  ExternalVpnGatewayInterface({this.id, this.ipAddress, this.ipv6Address});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'ipAddress': ?ipAddress,
      'ipv6Address': ?ipv6Address,
    };
  }

  factory ExternalVpnGatewayInterface.fromMap(Map<String, dynamic> map) {
    return ExternalVpnGatewayInterface(
      id: map['id'] == null ? null : map['id'] as int,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      ipv6Address: map['ipv6Address'] == null
          ? null
          : map['ipv6Address'] as String,
    );
  }
}
