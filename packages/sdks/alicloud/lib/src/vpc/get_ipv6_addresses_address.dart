// ignore_for_file: unused_element, unnecessary_cast


class GetIpv6AddressesAddress {
  /// The ID of the instance that is assigned the IPv6 address.
  final String associatedInstanceId;
  /// The type of the instance that is assigned the IPv6 address.
  final String associatedInstanceType;
  /// The time when the IPv6 address was created.
  final String createTime;
  /// The ID of the Ipv6 Address.
  final String id;
  /// The address of the Ipv6 Address.
  final String ipv6Address;
  /// The ID of the IPv6 address.
  final String ipv6AddressId;
  /// The name of the IPv6 address.
  final String ipv6AddressName;
  /// The ID of the IPv6 gateway to which the IPv6 address belongs.
  final String ipv6GatewayId;
  /// The type of communication supported by the IPv6 address. Valid values:`Private` or `Public`. `Private`: communication within the private network. `Public`: communication over the public network
  final String networkType;
  /// The status of the IPv6 address. Valid values:`Pending` or `Available`.
  final String status;
  /// The ID of the VPC to which the IPv6 address belongs.
  final String vpcId;
  /// The ID of the vSwitch to which the IPv6 address belongs.
  final String vswitchId;

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
      associatedInstanceId: map['associatedInstanceId'] as String,
      associatedInstanceType: map['associatedInstanceType'] as String,
      createTime: map['createTime'] as String,
      id: map['id'] as String,
      ipv6Address: map['ipv6Address'] as String,
      ipv6AddressId: map['ipv6AddressId'] as String,
      ipv6AddressName: map['ipv6AddressName'] as String,
      ipv6GatewayId: map['ipv6GatewayId'] as String,
      networkType: map['networkType'] as String,
      status: map['status'] as String,
      vpcId: map['vpcId'] as String,
      vswitchId: map['vswitchId'] as String,
    );
  }
}

