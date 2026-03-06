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
  /// &gt; **NOTE:**  Specify the IPAM address pool to add an additional CIDR block to the VPC. Enter at least one of the SecondaryCidrBlock or SecondaryCidrMask parameters.
  final pulumi.Input<int>? secondaryCidrMask;
  /// The ID of the VPC.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [Ipv4CidrBlockState].
  /// [ipv4IpamPoolId] The ID of the IP Address Manager (IPAM) pool that contains IPv4 addresses.
  /// [regionId] The ID of the region where the VPC resides.
  /// [secondaryCidrBlock] Additional network segment information.
  /// [secondaryCidrMask] Add an additional CIDR block from the IPAM address pool to the VPC by entering a mask.
  /// [vpcId] The ID of the VPC.
  const Ipv4CidrBlockState({
    this.ipv4IpamPoolId,
    this.regionId,
    this.secondaryCidrBlock,
    this.secondaryCidrMask,
    this.vpcId,
  });

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
      ipv4IpamPoolId: (() { final guardedValue = map['ipv4IpamPoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionId: (() { final guardedValue = map['regionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryCidrBlock: (() { final guardedValue = map['secondaryCidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryCidrMask: (() { final guardedValue = map['secondaryCidrMask']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

