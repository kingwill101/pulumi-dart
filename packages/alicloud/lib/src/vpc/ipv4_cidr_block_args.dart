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
  /// > **NOTE:**  Specify the IPAM address pool to add an additional CIDR block to the VPC. Enter at least one of the SecondaryCidrBlock or SecondaryCidrMask parameters.
  final pulumi.Input<int>? secondaryCidrMask;
  /// The ID of the VPC.
  final pulumi.Input<String> vpcId;

  /// Creates a new [Ipv4CidrBlockArgs].
  /// [ipv4IpamPoolId] The ID of the IP Address Manager (IPAM) pool that contains IPv4 addresses.
  /// [secondaryCidrBlock] Additional network segment information.
  /// [secondaryCidrMask] Add an additional CIDR block from the IPAM address pool to the VPC by entering a mask.
  /// [vpcId] The ID of the VPC.
  Ipv4CidrBlockArgs({
    String? ipv4IpamPoolId,
    String? secondaryCidrBlock,
    int? secondaryCidrMask,
    required String vpcId,
  }) :
      ipv4IpamPoolId = pulumi.Input.asOptionalInput<String>(ipv4IpamPoolId),
      secondaryCidrBlock = pulumi.Input.asOptionalInput<String>(secondaryCidrBlock),
      secondaryCidrMask = pulumi.Input.asOptionalInput<int>(secondaryCidrMask),
      vpcId = pulumi.Input.asInput<String>(vpcId);

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
      ipv4IpamPoolId: map['ipv4IpamPoolId'] == null ? null : map['ipv4IpamPoolId'] as String,
      secondaryCidrBlock: map['secondaryCidrBlock'] == null ? null : map['secondaryCidrBlock'] as String,
      secondaryCidrMask: map['secondaryCidrMask'] == null ? null : map['secondaryCidrMask'] as int,
      vpcId: map['vpcId'] as String,
    );
  }
}

