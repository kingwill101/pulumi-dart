// ignore_for_file: unused_element, unnecessary_cast

class GetHcVpnGatewayVpnInterface {
  /// The numeric ID of this VPN gateway interface.
  final int id;

  /// URL of the interconnect attachment resource. When the value
  /// of this field is present, the VPN Gateway will be used for
  /// IPsec-encrypted Cloud Interconnect; all Egress or Ingress
  /// traffic for this VPN Gateway interface will go through the
  /// specified interconnect attachment resource.
  ///
  /// Not currently available publicly.
  final String interconnectAttachment;

  /// The external IP address for this VPN gateway interface.
  final String ipAddress;

  GetHcVpnGatewayVpnInterface({
    required this.id,
    required this.interconnectAttachment,
    required this.ipAddress,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['interconnectAttachment'] = interconnectAttachment;
    map['ipAddress'] = ipAddress;
    return map;
  }

  factory GetHcVpnGatewayVpnInterface.fromMap(Map<String, dynamic> map) {
    return GetHcVpnGatewayVpnInterface(
      id: map['id'] as int,
      interconnectAttachment: map['interconnectAttachment'] as String,
      ipAddress: map['ipAddress'] as String,
    );
  }
}
