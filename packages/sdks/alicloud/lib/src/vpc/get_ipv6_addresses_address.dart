// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetIpv6AddressesAddress {
  /// The ID of the instance that is assigned the IPv6 address.
  final pulumi.Input<String> associatedInstanceId;
  /// The type of the instance that is assigned the IPv6 address.
  final pulumi.Input<String> associatedInstanceType;
  /// The time when the IPv6 address was created.
  final pulumi.Input<String> createTime;
  /// The ID of the Ipv6 Address.
  final pulumi.Input<String> id;
  /// The address of the Ipv6 Address.
  final pulumi.Input<String> ipv6Address;
  /// The ID of the IPv6 address.
  final pulumi.Input<String> ipv6AddressId;
  /// The name of the IPv6 address.
  final pulumi.Input<String> ipv6AddressName;
  /// The ID of the IPv6 gateway to which the IPv6 address belongs.
  final pulumi.Input<String> ipv6GatewayId;
  /// The type of communication supported by the IPv6 address. Valid values:`Private` or `Public`. `Private`: communication within the private network. `Public`: communication over the public network
  final pulumi.Input<String> networkType;
  /// The status of the IPv6 address. Valid values:`Pending` or `Available`.
  final pulumi.Input<String> status;
  /// The ID of the VPC to which the IPv6 address belongs.
  final pulumi.Input<String> vpcId;
  /// The ID of the vSwitch to which the IPv6 address belongs.
  final pulumi.Input<String> vswitchId;

  /// Creates a new [GetIpv6AddressesAddress].
  /// [associatedInstanceId] The ID of the instance that is assigned the IPv6 address.
  /// [associatedInstanceType] The type of the instance that is assigned the IPv6 address.
  /// [createTime] The time when the IPv6 address was created.
  /// [id] The ID of the Ipv6 Address.
  /// [ipv6Address] The address of the Ipv6 Address.
  /// [ipv6AddressId] The ID of the IPv6 address.
  /// [ipv6AddressName] The name of the IPv6 address.
  /// [ipv6GatewayId] The ID of the IPv6 gateway to which the IPv6 address belongs.
  /// [networkType] The type of communication supported by the IPv6 address. Valid values:`Private` or `Public`. `Private`: communication within the private network. `Public`: communication over the public network
  /// [status] The status of the IPv6 address. Valid values:`Pending` or `Available`.
  /// [vpcId] The ID of the VPC to which the IPv6 address belongs.
  /// [vswitchId] The ID of the vSwitch to which the IPv6 address belongs.
  GetIpv6AddressesAddress({
    required this.associatedInstanceId,
    required this.associatedInstanceType,
    required this.createTime,
    required this.id,
    required this.ipv6Address,
    required this.ipv6AddressId,
    required this.ipv6AddressName,
    required this.ipv6GatewayId,
    required this.networkType,
    required this.status,
    required this.vpcId,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedInstanceId': associatedInstanceId,
      'associatedInstanceType': associatedInstanceType,
      'createTime': createTime,
      'id': id,
      'ipv6Address': ipv6Address,
      'ipv6AddressId': ipv6AddressId,
      'ipv6AddressName': ipv6AddressName,
      'ipv6GatewayId': ipv6GatewayId,
      'networkType': networkType,
      'status': status,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
    };
  }

  factory GetIpv6AddressesAddress.fromMap(Map<String, dynamic> map) {
    return GetIpv6AddressesAddress(
      associatedInstanceId: pulumi.Input.fromValue(map['associatedInstanceId'] as String),
      associatedInstanceType: pulumi.Input.fromValue(map['associatedInstanceType'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      ipv6Address: pulumi.Input.fromValue(map['ipv6Address'] as String),
      ipv6AddressId: pulumi.Input.fromValue(map['ipv6AddressId'] as String),
      ipv6AddressName: pulumi.Input.fromValue(map['ipv6AddressName'] as String),
      ipv6GatewayId: pulumi.Input.fromValue(map['ipv6GatewayId'] as String),
      networkType: pulumi.Input.fromValue(map['networkType'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
    );
  }
}

