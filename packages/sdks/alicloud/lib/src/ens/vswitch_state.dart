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
    this.cidrBlock,
    this.createTime,
    this.description,
    this.ensRegionId,
    this.networkId,
    this.status,
    this.vswitchName,
  });

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
      cidrBlock: map['cidrBlock'] == null ? null : (map['cidrBlock']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      ensRegionId: map['ensRegionId'] == null ? null : (map['ensRegionId']! as String).input(),
      networkId: map['networkId'] == null ? null : (map['networkId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      vswitchName: map['vswitchName'] == null ? null : (map['vswitchName']! as String).input(),
    );
  }
}

