// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BgpNetwork resources.
class BgpNetworkState {
  /// The CIDR block of the virtual private cloud (VPC) or vSwitch that you want to connect to a data center.
  final pulumi.Input<String>? dstCidrBlock;
  /// The region ID of the virtual border router (VBR) group.
  final pulumi.Input<String>? routerId;
  /// The state of the advertised BGP network.
  final pulumi.Input<String>? status;
  /// The ID of the VPC.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [BgpNetworkState].
  /// [dstCidrBlock] The CIDR block of the virtual private cloud (VPC) or vSwitch that you want to connect to a data center.
  /// [routerId] The region ID of the virtual border router (VBR) group.
  /// [status] The state of the advertised BGP network.
  /// [vpcId] The ID of the VPC.
  BgpNetworkState({
    pulumi.Output<String>? dstCidrBlock,
    pulumi.Output<String>? routerId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? vpcId,
  }) :
      dstCidrBlock = pulumi.Input.asOptionalInput<String>(dstCidrBlock),
      routerId = pulumi.Input.asOptionalInput<String>(routerId),
      status = pulumi.Input.asOptionalInput<String>(status),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dstCidrBlock': ?dstCidrBlock,
      'routerId': ?routerId,
      'status': ?status,
      'vpcId': ?vpcId,
    };
  }

  factory BgpNetworkState.fromMap(Map<String, dynamic> map) {
    return BgpNetworkState(
      dstCidrBlock: map['dstCidrBlock'] == null ? null : pulumi.Output.create<String>(map['dstCidrBlock'] as String),
      routerId: map['routerId'] == null ? null : pulumi.Output.create<String>(map['routerId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

