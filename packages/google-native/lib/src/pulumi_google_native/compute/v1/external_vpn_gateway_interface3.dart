// ignore_for_file: unused_element, unnecessary_cast

/// The interface for the external VPN gateway.
class ExternalVpnGatewayInterface3 {
  /// The numeric ID of this interface. The allowed input values for this id for different redundancy types of external VPN gateway: - SINGLE_IP_INTERNALLY_REDUNDANT - 0 - TWO_IPS_REDUNDANCY - 0, 1 - FOUR_IPS_REDUNDANCY - 0, 1, 2, 3
  final int? id;

  /// IP address of the interface in the external VPN gateway. Only IPv4 is supported. This IP address can be either from your on-premise gateway or another Cloud provider's VPN gateway, it cannot be an IP address from Google Compute Engine.
  final String? ipAddress;

  ExternalVpnGatewayInterface3({
    this.id,
    this.ipAddress,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final ipAddressValue = ipAddress;
    if (ipAddressValue != null) {
      map['ipAddress'] = ipAddressValue;
    }
    return map;
  }

  factory ExternalVpnGatewayInterface3.fromMap(Map<String, dynamic> map) {
    return ExternalVpnGatewayInterface3(
      id: map['id'] == null ? null : map['id'] as int,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
    );
  }
}
