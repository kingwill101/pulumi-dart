// ignore_for_file: unused_element, unnecessary_cast

/// A VPN gateway interface.
class VpnGatewayVpnGatewayInterface {
  /// URL of the VLAN attachment (interconnectAttachment) resource for this VPN gateway interface. When the value of this field is present, the VPN gateway is used for HA VPN over Cloud Interconnect; all egress or ingress traffic for this VPN gateway interface goes through the specified VLAN attachment resource.
  final String? interconnectAttachment;

  /// Creates a new [VpnGatewayVpnGatewayInterface].
  /// [interconnectAttachment] URL of the VLAN attachment (interconnectAttachment) resource for this VPN gateway interface. When the value of this field is present, the VPN gateway is used for HA VPN over Cloud Interconnect; all egress or ingress traffic for this VPN gateway interface goes through the specified VLAN attachment resource.
  VpnGatewayVpnGatewayInterface({this.interconnectAttachment});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'interconnectAttachment': ?interconnectAttachment};
  }

  factory VpnGatewayVpnGatewayInterface.fromMap(Map<String, dynamic> map) {
    return VpnGatewayVpnGatewayInterface(
      interconnectAttachment: map['interconnectAttachment'] == null
          ? null
          : map['interconnectAttachment'] as String,
    );
  }
}
