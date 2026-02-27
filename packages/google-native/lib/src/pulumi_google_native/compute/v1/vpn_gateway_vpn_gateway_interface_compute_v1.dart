// ignore_for_file: unused_element, unnecessary_cast

/// A VPN gateway interface.
class VpnGatewayVpnGatewayInterfaceComputeV1 {
  /// URL of the VLAN attachment (interconnectAttachment) resource for this VPN gateway interface. When the value of this field is present, the VPN gateway is used for HA VPN over Cloud Interconnect; all egress or ingress traffic for this VPN gateway interface goes through the specified VLAN attachment resource.
  final String? interconnectAttachment;

  VpnGatewayVpnGatewayInterfaceComputeV1({
    this.interconnectAttachment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final interconnectAttachmentValue = interconnectAttachment;
    if (interconnectAttachmentValue != null) {
      map['interconnectAttachment'] = interconnectAttachmentValue;
    }
    return map;
  }

  factory VpnGatewayVpnGatewayInterfaceComputeV1.fromMap(
      Map<String, dynamic> map) {
    return VpnGatewayVpnGatewayInterfaceComputeV1(
      interconnectAttachment: map['interconnectAttachment'] == null
          ? null
          : map['interconnectAttachment'] as String,
    );
  }
}
