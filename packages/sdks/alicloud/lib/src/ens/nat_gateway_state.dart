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
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? ensRegionId,
    pulumi.Output<String>? instanceType,
    pulumi.Output<String>? natName,
    pulumi.Output<String>? networkId,
    pulumi.Output<String>? vswitchId,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      ensRegionId = pulumi.Input.asOptionalInput<String>(ensRegionId),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      natName = pulumi.Input.asOptionalInput<String>(natName),
      networkId = pulumi.Input.asOptionalInput<String>(networkId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      ensRegionId: map['ensRegionId'] == null ? null : pulumi.Output.create<String>(map['ensRegionId'] as String),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      natName: map['natName'] == null ? null : pulumi.Output.create<String>(map['natName'] as String),
      networkId: map['networkId'] == null ? null : pulumi.Output.create<String>(map['networkId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}

