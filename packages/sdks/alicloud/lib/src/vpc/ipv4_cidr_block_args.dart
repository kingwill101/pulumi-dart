// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_ipv4_cidr_block_ipv4_cidr_block_args_doc}
/// The set of arguments for Ipv4CidrBlock.
/// {@endtemplate}
/// {@macro pulumi_vpc_ipv4_cidr_block_ipv4_cidr_block_args_doc}
class Ipv4CidrBlockArgs {
  /// The ID of the IP Address Manager (IPAM) pool that contains IPv4 addresses.
  final pulumi.Input<String>? ipv4IpamPoolId;
  /// Additional network segment information.
  final pulumi.Input<String>? secondaryCidrBlock;
  /// Add an additional CIDR block from the IPAM address pool to the VPC by entering a mask.
  ///
  /// &gt; **NOTE:**  Specify the IPAM address pool to add an additional CIDR block to the VPC. Enter at least one of the SecondaryCidrBlock or SecondaryCidrMask parameters.
  final pulumi.Input<int>? secondaryCidrMask;
  /// The ID of the VPC.
  final pulumi.Input<String> vpcId;

  /// Creates a new [Ipv4CidrBlockArgs].
  /// [ipv4IpamPoolId] The ID of the IP Address Manager (IPAM) pool that contains IPv4 addresses.
  /// [secondaryCidrBlock] Additional network segment information.
  /// [secondaryCidrMask] Add an additional CIDR block from the IPAM address pool to the VPC by entering a mask.
  /// [vpcId] The ID of the VPC.
  const Ipv4CidrBlockArgs({
    this.ipv4IpamPoolId,
    this.secondaryCidrBlock,
    this.secondaryCidrMask,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4IpamPoolId': ?ipv4IpamPoolId,
      'secondaryCidrBlock': ?secondaryCidrBlock,
      'secondaryCidrMask': ?secondaryCidrMask,
      'vpcId': vpcId,
    };
  }

  factory Ipv4CidrBlockArgs.fromMap(Map<String, dynamic> map) {
    return Ipv4CidrBlockArgs(
      ipv4IpamPoolId: (() { final guardedValue = map['ipv4IpamPoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryCidrBlock: (() { final guardedValue = map['secondaryCidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryCidrMask: (() { final guardedValue = map['secondaryCidrMask']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}

