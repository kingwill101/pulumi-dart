// ignore_for_file: unused_element, unnecessary_cast


class GetNatIpsIp {
  /// The ID of the Nat Ip.
  final String id;
  /// Indicates whether the BGP Group is the default NAT IP ADDRESS. Valid values: `true`: is the default NAT IP ADDRESS. `false`: it is not the default NAT IP ADDRESS.
  final bool isDefault;
  /// The ID of the Virtual Private Cloud (VPC) NAT gateway to which the NAT IP address belongs.
  final String natGatewayId;
  /// The NAT IP address that is queried.
  final String natIp;
  /// The CIDR block to which the NAT IP address belongs.
  final String natIpCidr;
  /// The description of the NAT IP address.
  final String natIpDescription;
  /// The ID of the NAT IP address.
  final String natIpId;
  /// The name of the NAT IP address.
  final String natIpName;
  /// The status of the NAT IP address. Valid values: `Available`, `Deleting` and `Creating`.
  final String status;

  /// Creates a new [GetNatIpsIp].
  /// [id] The ID of the Nat Ip.
  /// [isDefault] Indicates whether the BGP Group is the default NAT IP ADDRESS. Valid values: `true`: is the default NAT IP ADDRESS. `false`: it is not the default NAT IP ADDRESS.
  /// [natGatewayId] The ID of the Virtual Private Cloud (VPC) NAT gateway to which the NAT IP address belongs.
  /// [natIp] The NAT IP address that is queried.
  /// [natIpCidr] The CIDR block to which the NAT IP address belongs.
  /// [natIpDescription] The description of the NAT IP address.
  /// [natIpId] The ID of the NAT IP address.
  /// [natIpName] The name of the NAT IP address.
  /// [status] The status of the NAT IP address. Valid values: `Available`, `Deleting` and `Creating`.
  GetNatIpsIp({
    required this.id,
    required this.isDefault,
    required this.natGatewayId,
    required this.natIp,
    required this.natIpCidr,
    required this.natIpDescription,
    required this.natIpId,
    required this.natIpName,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'isDefault': isDefault,
      'natGatewayId': natGatewayId,
      'natIp': natIp,
      'natIpCidr': natIpCidr,
      'natIpDescription': natIpDescription,
      'natIpId': natIpId,
      'natIpName': natIpName,
      'status': status,
    };
  }

  factory GetNatIpsIp.fromMap(Map<String, dynamic> map) {
    return GetNatIpsIp(
      id: map['id'] as String,
      isDefault: map['isDefault'] as bool,
      natGatewayId: map['natGatewayId'] as String,
      natIp: map['natIp'] as String,
      natIpCidr: map['natIpCidr'] as String,
      natIpDescription: map['natIpDescription'] as String,
      natIpId: map['natIpId'] as String,
      natIpName: map['natIpName'] as String,
      status: map['status'] as String,
    );
  }
}

