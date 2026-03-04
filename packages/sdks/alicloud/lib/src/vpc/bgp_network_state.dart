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
  BgpNetworkState({this.dstCidrBlock, this.routerId, this.status, this.vpcId});

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
      dstCidrBlock: (() {
        final guardedValue = map['dstCidrBlock'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      routerId: (() {
        final guardedValue = map['routerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
