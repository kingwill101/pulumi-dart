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
  NatGatewayState({
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
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      ensRegionId: map['ensRegionId'] == null ? null : (map['ensRegionId']! as String).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType']! as String).input(),
      natName: map['natName'] == null ? null : (map['natName']! as String).input(),
      networkId: map['networkId'] == null ? null : (map['networkId']! as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId']! as String).input(),
    );
  }
}

