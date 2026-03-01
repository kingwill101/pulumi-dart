// ignore_for_file: unused_element, unnecessary_cast


class GetNatIpCidrsCidr {
  /// The time when the CIDR block was created.
  final String createTime;
  /// The ID of the Nat Ip Cidr.
  final String id;
  /// Whether it is the default NAT IP ADDRESS. Valid values:`true` or `false`.`true`: is the default NAT IP ADDRESS. `false`: it is not the default NAT IP ADDRESS.
  final bool isDefault;
  /// The ID of the VPC NAT gateway.
  final String natGatewayId;
  /// The NAT CIDR block to be created. The CIDR block must meet the following conditions: It must be `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`, or one of their subnets. The subnet mask must be `16` to `32` bits in lengths. To use a public CIDR block as the NAT CIDR block, the VPC to which the VPC NAT gateway belongs must be authorized to use public CIDR blocks. For more information, see [Create a VPC NAT gateway](https://www.alibabacloud.com/help/doc-detail/268230.htm).
  final String natIpCidr;
  /// NAT IP ADDRESS range to the description of. Length is from `2` to `256` characters, must start with a letter or the Chinese at the beginning, but not at the` http://` Or `https://` at the beginning.
  final String natIpCidrDescription;
  /// NAT IP ADDRESS instance ID.
  final String natIpCidrId;
  /// NAT IP ADDRESS the name of the root directory. Length is from `2` to `128` characters, must start with a letter or the Chinese at the beginning can contain numbers, half a period (.), underscore (_) and dash (-). But do not start with `http://` or `https://` at the beginning.
  final String natIpCidrName;
  /// The status of the CIDR block of the NAT gateway. If the value is `Available`, the CIDR block is available.
  final String status;

  /// Creates a new [GetNatIpCidrsCidr].
  /// [createTime] The time when the CIDR block was created.
  /// [id] The ID of the Nat Ip Cidr.
  /// [isDefault] Whether it is the default NAT IP ADDRESS. Valid values:`true` or `false`.`true`: is the default NAT IP ADDRESS. `false`: it is not the default NAT IP ADDRESS.
  /// [natGatewayId] The ID of the VPC NAT gateway.
  /// [natIpCidr] The NAT CIDR block to be created. The CIDR block must meet the following conditions: It must be `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`, or one of their subnets. The subnet mask must be `16` to `32` bits in lengths. To use a public CIDR block as the NAT CIDR block, the VPC to which the VPC NAT gateway belongs must be authorized to use public CIDR blocks. For more information, see [Create a VPC NAT gateway](https://www.alibabacloud.com/help/doc-detail/268230.htm).
  /// [natIpCidrDescription] NAT IP ADDRESS range to the description of. Length is from `2` to `256` characters, must start with a letter or the Chinese at the beginning, but not at the` http://` Or `https://` at the beginning.
  /// [natIpCidrId] NAT IP ADDRESS instance ID.
  /// [natIpCidrName] NAT IP ADDRESS the name of the root directory. Length is from `2` to `128` characters, must start with a letter or the Chinese at the beginning can contain numbers, half a period (.), underscore (_) and dash (-). But do not start with `http://` or `https://` at the beginning.
  /// [status] The status of the CIDR block of the NAT gateway. If the value is `Available`, the CIDR block is available.
  GetNatIpCidrsCidr({
    required this.createTime,
    required this.id,
    required this.isDefault,
    required this.natGatewayId,
    required this.natIpCidr,
    required this.natIpCidrDescription,
    required this.natIpCidrId,
    required this.natIpCidrName,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'id': id,
      'isDefault': isDefault,
      'natGatewayId': natGatewayId,
      'natIpCidr': natIpCidr,
      'natIpCidrDescription': natIpCidrDescription,
      'natIpCidrId': natIpCidrId,
      'natIpCidrName': natIpCidrName,
      'status': status,
    };
  }

  factory GetNatIpCidrsCidr.fromMap(Map<String, dynamic> map) {
    return GetNatIpCidrsCidr(
      createTime: map['createTime'] as String,
      id: map['id'] as String,
      isDefault: map['isDefault'] as bool,
      natGatewayId: map['natGatewayId'] as String,
      natIpCidr: map['natIpCidr'] as String,
      natIpCidrDescription: map['natIpCidrDescription'] as String,
      natIpCidrId: map['natIpCidrId'] as String,
      natIpCidrName: map['natIpCidrName'] as String,
      status: map['status'] as String,
    );
  }
}

