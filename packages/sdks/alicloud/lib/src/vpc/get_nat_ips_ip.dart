// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNatIpsIp {
  /// The ID of the Nat Ip.
  final pulumi.Input<String> id;
  /// Indicates whether the BGP Group is the default NAT IP ADDRESS. Valid values: `true`: is the default NAT IP ADDRESS. `false`: it is not the default NAT IP ADDRESS.
  final pulumi.Input<bool> isDefault;
  /// The ID of the Virtual Private Cloud (VPC) NAT gateway to which the NAT IP address belongs.
  final pulumi.Input<String> natGatewayId;
  /// The NAT IP address that is queried.
  final pulumi.Input<String> natIp;
  /// The CIDR block to which the NAT IP address belongs.
  final pulumi.Input<String> natIpCidr;
  /// The description of the NAT IP address.
  final pulumi.Input<String> natIpDescription;
  /// The ID of the NAT IP address.
  final pulumi.Input<String> natIpId;
  /// The name of the NAT IP address.
  final pulumi.Input<String> natIpName;
  /// The status of the NAT IP address. Valid values: `Available`, `Deleting` and `Creating`.
  final pulumi.Input<String> status;

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
  const GetNatIpsIp({
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
      id: pulumi.Input.fromValue(map['id'] as String),
      isDefault: pulumi.Input.fromValue(map['isDefault'] as bool),
      natGatewayId: pulumi.Input.fromValue(map['natGatewayId'] as String),
      natIp: pulumi.Input.fromValue(map['natIp'] as String),
      natIpCidr: pulumi.Input.fromValue(map['natIpCidr'] as String),
      natIpDescription: pulumi.Input.fromValue(map['natIpDescription'] as String),
      natIpId: pulumi.Input.fromValue(map['natIpId'] as String),
      natIpName: pulumi.Input.fromValue(map['natIpName'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

