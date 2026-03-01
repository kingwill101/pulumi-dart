// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Ipv4CidrBlock resources.
class Ipv4CidrBlockState {
  /// The ID of the IP Address Manager (IPAM) pool that contains IPv4 addresses.
  final pulumi.Input<String>? ipv4IpamPoolId;
  /// The ID of the region where the VPC resides.
  final pulumi.Input<String>? regionId;
  /// Additional network segment information.
  final pulumi.Input<String>? secondaryCidrBlock;
  /// Add an additional CIDR block from the IPAM address pool to the VPC by entering a mask.
  ///
  /// > **NOTE:**  Specify the IPAM address pool to add an additional CIDR block to the VPC. Enter at least one of the SecondaryCidrBlock or SecondaryCidrMask parameters.
  final pulumi.Input<int>? secondaryCidrMask;
  /// The ID of the VPC.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [Ipv4CidrBlockState].
  /// [ipv4IpamPoolId] The ID of the IP Address Manager (IPAM) pool that contains IPv4 addresses.
  /// [regionId] The ID of the region where the VPC resides.
  /// [secondaryCidrBlock] Additional network segment information.
  /// [secondaryCidrMask] Add an additional CIDR block from the IPAM address pool to the VPC by entering a mask.
  /// [vpcId] The ID of the VPC.
  Ipv4CidrBlockState({
    pulumi.Output<String>? ipv4IpamPoolId,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? secondaryCidrBlock,
    pulumi.Output<int>? secondaryCidrMask,
    pulumi.Output<String>? vpcId,
  }) :
      ipv4IpamPoolId = pulumi.Input.asOptionalInput<String>(ipv4IpamPoolId),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      secondaryCidrBlock = pulumi.Input.asOptionalInput<String>(secondaryCidrBlock),
      secondaryCidrMask = pulumi.Input.asOptionalInput<int>(secondaryCidrMask),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4IpamPoolId': ?ipv4IpamPoolId,
      'regionId': ?regionId,
      'secondaryCidrBlock': ?secondaryCidrBlock,
      'secondaryCidrMask': ?secondaryCidrMask,
      'vpcId': ?vpcId,
    };
  }

  factory Ipv4CidrBlockState.fromMap(Map<String, dynamic> map) {
    return Ipv4CidrBlockState(
      ipv4IpamPoolId: map['ipv4IpamPoolId'] == null ? null : pulumi.Output.create<String>(map['ipv4IpamPoolId'] as String),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      secondaryCidrBlock: map['secondaryCidrBlock'] == null ? null : pulumi.Output.create<String>(map['secondaryCidrBlock'] as String),
      secondaryCidrMask: map['secondaryCidrMask'] == null ? null : pulumi.Output.create<int>(map['secondaryCidrMask'] as int),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

