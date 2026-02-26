// ignore_for_file: unused_element, unnecessary_cast

class HaVpnGatewayVpnInterface {
  /// The numeric ID of this VPN gateway interface.
  final int? id;

  /// URL of the interconnect attachment resource. When the value
  /// of this field is present, the VPN Gateway will be used for
  /// IPsec-encrypted Cloud Interconnect; all Egress or Ingress
  /// traffic for this VPN Gateway interface will go through the
  /// specified interconnect attachment resource.
  /// Not currently available publicly.
  final String? interconnectAttachment;

  /// (Output)
  /// The external IP address for this VPN gateway interface.
  final String? ipAddress;

  HaVpnGatewayVpnInterface({
    this.id,
    this.interconnectAttachment,
    this.ipAddress,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final interconnectAttachmentValue = interconnectAttachment;
    if (interconnectAttachmentValue != null) {
      map['interconnectAttachment'] = interconnectAttachmentValue;
    }
    final ipAddressValue = ipAddress;
    if (ipAddressValue != null) {
      map['ipAddress'] = ipAddressValue;
    }
    return map;
  }

  factory HaVpnGatewayVpnInterface.fromMap(Map<String, dynamic> map) {
    return HaVpnGatewayVpnInterface(
      id: map['id'] == null ? null : map['id'] as int,
      interconnectAttachment: map['interconnectAttachment'] == null
          ? null
          : map['interconnectAttachment'] as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
    );
  }
}
