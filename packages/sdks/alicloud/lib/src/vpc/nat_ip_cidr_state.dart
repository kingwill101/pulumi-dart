// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NatIpCidr resources.
class NatIpCidrState {
  /// Specifies whether to precheck this request only. Valid values: `true` and `false`.
  final pulumi.Input<bool>? dryRun;
  /// The ID of the Virtual Private Cloud (VPC) NAT gateway where you want to create the NAT CIDR block.
  final pulumi.Input<String>? natGatewayId;
  /// The NAT CIDR block to be created. The CIDR block must meet the following conditions: It must be `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`, or one of their subnets. The subnet mask must be `16` to `32` bits in lengths. To use a public CIDR block as the NAT CIDR block, the VPC to which the VPC NAT gateway belongs must be authorized to use public CIDR blocks. For more information, see [Create a VPC NAT gateway](https://www.alibabacloud.com/help/doc-detail/268230.htm).
  final pulumi.Input<String>? natIpCidr;
  /// The description of the NAT CIDR block. The description must be `2` to `256` characters in length. It must start with a letter but cannot start with `http://` or `https://`.
  final pulumi.Input<String>? natIpCidrDescription;
  /// The name of the NAT CIDR block. The name must be `2` to `128` characters in length and can contain digits, periods (.), underscores (_), and hyphens (-). It must start with a letter. It must start with a letter but cannot start with `http://` or `https://`.
  final pulumi.Input<String>? natIpCidrName;
  /// The status of the CIDR block of the NAT gateway. Valid values: `Available`.
  final pulumi.Input<String>? status;

  /// Creates a new [NatIpCidrState].
  /// [dryRun] Specifies whether to precheck this request only. Valid values: `true` and `false`.
  /// [natGatewayId] The ID of the Virtual Private Cloud (VPC) NAT gateway where you want to create the NAT CIDR block.
  /// [natIpCidr] The NAT CIDR block to be created. The CIDR block must meet the following conditions: It must be `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`, or one of their subnets. The subnet mask must be `16` to `32` bits in lengths. To use a public CIDR block as the NAT CIDR block, the VPC to which the VPC NAT gateway belongs must be authorized to use public CIDR blocks. For more information, see [Create a VPC NAT gateway](https://www.alibabacloud.com/help/doc-detail/268230.htm).
  /// [natIpCidrDescription] The description of the NAT CIDR block. The description must be `2` to `256` characters in length. It must start with a letter but cannot start with `http://` or `https://`.
  /// [natIpCidrName] The name of the NAT CIDR block. The name must be `2` to `128` characters in length and can contain digits, periods (.), underscores (_), and hyphens (-). It must start with a letter. It must start with a letter but cannot start with `http://` or `https://`.
  /// [status] The status of the CIDR block of the NAT gateway. Valid values: `Available`.
  NatIpCidrState({
    this.dryRun,
    this.natGatewayId,
    this.natIpCidr,
    this.natIpCidrDescription,
    this.natIpCidrName,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryRun': ?dryRun,
      'natGatewayId': ?natGatewayId,
      'natIpCidr': ?natIpCidr,
      'natIpCidrDescription': ?natIpCidrDescription,
      'natIpCidrName': ?natIpCidrName,
      'status': ?status,
    };
  }

  factory NatIpCidrState.fromMap(Map<String, dynamic> map) {
    return NatIpCidrState(
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      natGatewayId: (() { final guardedValue = map['natGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      natIpCidr: (() { final guardedValue = map['natIpCidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      natIpCidrDescription: (() { final guardedValue = map['natIpCidrDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      natIpCidrName: (() { final guardedValue = map['natIpCidrName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

