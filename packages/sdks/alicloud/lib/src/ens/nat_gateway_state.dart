// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NatGateway resources.
class NatGatewayState {
  /// Creation time. UTC time, in the format of YYYY-MM-DDThh:mm:ssZ.
  final pulumi.Input<String>? createTime;
  /// The ID of the ENS node.
  final pulumi.Input<String>? ensRegionId;
  /// NAT specifications. Value: `enat.default`.
  final pulumi.Input<String>? instanceType;
  /// The name of the NAT gateway. The length is 1 to 128 characters, but it cannot start with 'http:// 'or 'https.
  final pulumi.Input<String>? natName;
  /// The network ID.
  final pulumi.Input<String>? networkId;
  /// The vSwitch ID.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [NatGatewayState].
  /// [createTime] Creation time. UTC time, in the format of YYYY-MM-DDThh:mm:ssZ.
  /// [ensRegionId] The ID of the ENS node.
  /// [instanceType] NAT specifications. Value: `enat.default`.
  /// [natName] The name of the NAT gateway. The length is 1 to 128 characters, but it cannot start with 'http:// 'or 'https.
  /// [networkId] The network ID.
  /// [vswitchId] The vSwitch ID.
  const NatGatewayState({
    this.createTime,
    this.ensRegionId,
    this.instanceType,
    this.natName,
    this.networkId,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'ensRegionId': ?ensRegionId,
      'instanceType': ?instanceType,
      'natName': ?natName,
      'networkId': ?networkId,
      'vswitchId': ?vswitchId,
    };
  }

  factory NatGatewayState.fromMap(Map<String, dynamic> map) {
    return NatGatewayState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ensRegionId: (() { final guardedValue = map['ensRegionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      natName: (() { final guardedValue = map['natName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkId: (() { final guardedValue = map['networkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

