// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_bgp_network_bgp_network_args_doc}
/// The set of arguments for BgpNetwork.
/// {@endtemplate}
/// {@macro pulumi_vpc_bgp_network_bgp_network_args_doc}
class BgpNetworkArgs {
  /// The CIDR block of the virtual private cloud (VPC) or vSwitch that you want to connect to a data center.
  final pulumi.Input<String> dstCidrBlock;
  /// The region ID of the virtual border router (VBR) group.
  final pulumi.Input<String> routerId;
  /// The ID of the VPC.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [BgpNetworkArgs].
  /// [dstCidrBlock] The CIDR block of the virtual private cloud (VPC) or vSwitch that you want to connect to a data center.
  /// [routerId] The region ID of the virtual border router (VBR) group.
  /// [vpcId] The ID of the VPC.
  BgpNetworkArgs({
    required pulumi.Output<String> dstCidrBlock,
    required pulumi.Output<String> routerId,
    pulumi.Output<String>? vpcId,
  }) :
      dstCidrBlock = pulumi.Input.asInput<String>(dstCidrBlock),
      routerId = pulumi.Input.asInput<String>(routerId),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dstCidrBlock': dstCidrBlock,
      'routerId': routerId,
      'vpcId': ?vpcId,
    };
  }

  factory BgpNetworkArgs.fromMap(Map<String, dynamic> map) {
    return BgpNetworkArgs(
      dstCidrBlock: pulumi.Output.create<String>(map['dstCidrBlock'] as String),
      routerId: pulumi.Output.create<String>(map['routerId'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

