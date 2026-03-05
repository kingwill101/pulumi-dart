// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ens_vswitch_vswitch_args_doc}
/// The set of arguments for Vswitch.
/// {@endtemplate}
/// {@macro pulumi_ens_vswitch_vswitch_args_doc}
class VswitchArgs {
  /// The CIDR block of the vSwitch.
  final pulumi.Input<String> cidrBlock;
  /// The description of the vSwitch.
  final pulumi.Input<String>? description;
  /// ENS Region ID.
  final pulumi.Input<String> ensRegionId;
  /// The ID of the network to which the vSwitch that you want to create belongs.
  final pulumi.Input<String>? networkId;
  /// The name of the vSwitch.
  final pulumi.Input<String>? vswitchName;

  /// Creates a new [VswitchArgs].
  /// [cidrBlock] The CIDR block of the vSwitch.
  /// [description] The description of the vSwitch.
  /// [ensRegionId] ENS Region ID.
  /// [networkId] The ID of the network to which the vSwitch that you want to create belongs.
  /// [vswitchName] The name of the vSwitch.
  VswitchArgs({
    required this.cidrBlock,
    this.description,
    required this.ensRegionId,
    this.networkId,
    this.vswitchName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': cidrBlock,
      'description': ?description,
      'ensRegionId': ensRegionId,
      'networkId': ?networkId,
      'vswitchName': ?vswitchName,
    };
  }

  factory VswitchArgs.fromMap(Map<String, dynamic> map) {
    return VswitchArgs(
      cidrBlock: pulumi.Input.fromValue(map['cidrBlock'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ensRegionId: pulumi.Input.fromValue(map['ensRegionId'] as String),
      networkId: (() { final guardedValue = map['networkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchName: (() { final guardedValue = map['vswitchName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

