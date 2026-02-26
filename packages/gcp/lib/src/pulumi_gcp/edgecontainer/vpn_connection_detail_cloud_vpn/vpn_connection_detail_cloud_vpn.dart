// ignore_for_file: unused_element, unnecessary_cast

class VpnConnectionDetailCloudVpn {
  /// (Output)
  /// The created Cloud VPN gateway name.
  final String? gateway;

  VpnConnectionDetailCloudVpn({
    this.gateway,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final gatewayValue = gateway;
    if (gatewayValue != null) {
      map['gateway'] = gatewayValue;
    }
    return map;
  }

  factory VpnConnectionDetailCloudVpn.fromMap(Map<String, dynamic> map) {
    return VpnConnectionDetailCloudVpn(
      gateway: map['gateway'] == null ? null : map['gateway'] as String,
    );
  }
}
