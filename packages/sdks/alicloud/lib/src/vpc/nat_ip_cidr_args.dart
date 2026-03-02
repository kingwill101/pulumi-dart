// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_nat_ip_cidr_nat_ip_cidr_args_doc}
/// The set of arguments for NatIpCidr.
/// {@endtemplate}
/// {@macro pulumi_vpc_nat_ip_cidr_nat_ip_cidr_args_doc}
class NatIpCidrArgs {
  /// Specifies whether to precheck this request only. Valid values: `true` and `false`.
  final pulumi.Input<bool>? dryRun;
  /// The ID of the Virtual Private Cloud (VPC) NAT gateway where you want to create the NAT CIDR block.
  final pulumi.Input<String> natGatewayId;
  /// The NAT CIDR block to be created. The CIDR block must meet the following conditions: It must be `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`, or one of their subnets. The subnet mask must be `16` to `32` bits in lengths. To use a public CIDR block as the NAT CIDR block, the VPC to which the VPC NAT gateway belongs must be authorized to use public CIDR blocks. For more information, see [Create a VPC NAT gateway](https://www.alibabacloud.com/help/doc-detail/268230.htm).
  final pulumi.Input<String>? natIpCidr;
  /// The description of the NAT CIDR block. The description must be `2` to `256` characters in length. It must start with a letter but cannot start with `http://` or `https://`.
  final pulumi.Input<String>? natIpCidrDescription;
  /// The name of the NAT CIDR block. The name must be `2` to `128` characters in length and can contain digits, periods (.), underscores (_), and hyphens (-). It must start with a letter. It must start with a letter but cannot start with `http://` or `https://`.
  final pulumi.Input<String>? natIpCidrName;

  /// Creates a new [NatIpCidrArgs].
  /// [dryRun] Specifies whether to precheck this request only. Valid values: `true` and `false`.
  /// [natGatewayId] The ID of the Virtual Private Cloud (VPC) NAT gateway where you want to create the NAT CIDR block.
  /// [natIpCidr] The NAT CIDR block to be created. The CIDR block must meet the following conditions: It must be `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`, or one of their subnets. The subnet mask must be `16` to `32` bits in lengths. To use a public CIDR block as the NAT CIDR block, the VPC to which the VPC NAT gateway belongs must be authorized to use public CIDR blocks. For more information, see [Create a VPC NAT gateway](https://www.alibabacloud.com/help/doc-detail/268230.htm).
  /// [natIpCidrDescription] The description of the NAT CIDR block. The description must be `2` to `256` characters in length. It must start with a letter but cannot start with `http://` or `https://`.
  /// [natIpCidrName] The name of the NAT CIDR block. The name must be `2` to `128` characters in length and can contain digits, periods (.), underscores (_), and hyphens (-). It must start with a letter. It must start with a letter but cannot start with `http://` or `https://`.
  NatIpCidrArgs({
    this.dryRun,
    required this.natGatewayId,
    this.natIpCidr,
    this.natIpCidrDescription,
    this.natIpCidrName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryRun': ?dryRun,
      'natGatewayId': natGatewayId,
      'natIpCidr': ?natIpCidr,
      'natIpCidrDescription': ?natIpCidrDescription,
      'natIpCidrName': ?natIpCidrName,
    };
  }

  factory NatIpCidrArgs.fromMap(Map<String, dynamic> map) {
    return NatIpCidrArgs(
      dryRun: map['dryRun'] == null ? null : (map['dryRun'] as bool).input(),
      natGatewayId: (map['natGatewayId'] as String).input(),
      natIpCidr: map['natIpCidr'] == null ? null : (map['natIpCidr'] as String).input(),
      natIpCidrDescription: map['natIpCidrDescription'] == null ? null : (map['natIpCidrDescription'] as String).input(),
      natIpCidrName: map['natIpCidrName'] == null ? null : (map['natIpCidrName'] as String).input(),
    );
  }
}

