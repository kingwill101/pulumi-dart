// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Vswitch resources.
class VswitchState {
  /// The CIDR block of the vSwitch.
  final pulumi.Input<String>? cidrBlock;
  /// The time when the VPC was created.
  final pulumi.Input<String>? createTime;
  /// The description of the vSwitch.
  final pulumi.Input<String>? description;
  /// ENS Region ID.
  final pulumi.Input<String>? ensRegionId;
  /// The ID of the network to which the vSwitch that you want to create belongs.
  final pulumi.Input<String>? networkId;
  /// The status of the vSwitch.
  final pulumi.Input<String>? status;
  /// The name of the vSwitch.
  final pulumi.Input<String>? vswitchName;

  /// Creates a new [VswitchState].
  /// [cidrBlock] The CIDR block of the vSwitch.
  /// [createTime] The time when the VPC was created.
  /// [description] The description of the vSwitch.
  /// [ensRegionId] ENS Region ID.
  /// [networkId] The ID of the network to which the vSwitch that you want to create belongs.
  /// [status] The status of the vSwitch.
  /// [vswitchName] The name of the vSwitch.
  VswitchState({
    pulumi.Output<String>? cidrBlock,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? ensRegionId,
    pulumi.Output<String>? networkId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? vswitchName,
  }) :
      cidrBlock = pulumi.Input.asOptionalInput<String>(cidrBlock),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      ensRegionId = pulumi.Input.asOptionalInput<String>(ensRegionId),
      networkId = pulumi.Input.asOptionalInput<String>(networkId),
      status = pulumi.Input.asOptionalInput<String>(status),
      vswitchName = pulumi.Input.asOptionalInput<String>(vswitchName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': ?cidrBlock,
      'createTime': ?createTime,
      'description': ?description,
      'ensRegionId': ?ensRegionId,
      'networkId': ?networkId,
      'status': ?status,
      'vswitchName': ?vswitchName,
    };
  }

  factory VswitchState.fromMap(Map<String, dynamic> map) {
    return VswitchState(
      cidrBlock: map['cidrBlock'] == null ? null : pulumi.Output.create<String>(map['cidrBlock'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      ensRegionId: map['ensRegionId'] == null ? null : pulumi.Output.create<String>(map['ensRegionId'] as String),
      networkId: map['networkId'] == null ? null : pulumi.Output.create<String>(map['networkId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      vswitchName: map['vswitchName'] == null ? null : pulumi.Output.create<String>(map['vswitchName'] as String),
    );
  }
}

