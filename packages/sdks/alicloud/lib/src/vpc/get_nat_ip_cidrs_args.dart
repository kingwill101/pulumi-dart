// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_get_nat_ip_cidrs_get_nat_ip_cidrs_args_doc}
/// Arguments for getNatIpCidrs.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_nat_ip_cidrs_get_nat_ip_cidrs_args_doc}
class GetNatIpCidrsArgs {
  /// A list of Nat Ip Cidr IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Nat Ip Cidr name.
  final pulumi.Input<String>? nameRegex;
  /// NAT IP ADDRESS range to the security group of the Kafka VPC NAT gateway instance ID.
  final pulumi.Input<String> natGatewayId;
  /// The name of the CIDR block that you want to query. Support up to `20`.
  final pulumi.Input<List<String>>? natIpCidrNames;
  /// The NAT CIDR block to be created. Support up to `20`. The CIDR block must meet the following conditions: It must be `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`, or one of their subnets. The subnet mask must be `16` to `32` bits in lengths. To use a public CIDR block as the NAT CIDR block, the VPC to which the VPC NAT gateway belongs must be authorized to use public CIDR blocks. For more information, see [Create a VPC NAT gateway](https://www.alibabacloud.com/help/doc-detail/268230.htm).
  final pulumi.Input<List<String>>? natIpCidrs;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the NAT IP address. Valid values:`Available`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetNatIpCidrsArgs].
  /// [ids] A list of Nat Ip Cidr IDs.
  /// [nameRegex] A regex string to filter results by Nat Ip Cidr name.
  /// [natGatewayId] NAT IP ADDRESS range to the security group of the Kafka VPC NAT gateway instance ID.
  /// [natIpCidrNames] The name of the CIDR block that you want to query. Support up to `20`.
  /// [natIpCidrs] The NAT CIDR block to be created. Support up to `20`. The CIDR block must meet the following conditions: It must be `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`, or one of their subnets. The subnet mask must be `16` to `32` bits in lengths. To use a public CIDR block as the NAT CIDR block, the VPC to which the VPC NAT gateway belongs must be authorized to use public CIDR blocks. For more information, see [Create a VPC NAT gateway](https://www.alibabacloud.com/help/doc-detail/268230.htm).
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the NAT IP address. Valid values:`Available`.
  GetNatIpCidrsArgs({
    this.ids,
    this.nameRegex,
    required this.natGatewayId,
    this.natIpCidrNames,
    this.natIpCidrs,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'natGatewayId': natGatewayId,
      'natIpCidrNames': ?natIpCidrNames,
      'natIpCidrs': ?natIpCidrs,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetNatIpCidrsArgs.fromMap(Map<String, dynamic> map) {
    return GetNatIpCidrsArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      natGatewayId: pulumi.Input.fromValue(map['natGatewayId'] as String),
      natIpCidrNames: (() { final guardedValue = map['natIpCidrNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      natIpCidrs: (() { final guardedValue = map['natIpCidrs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

