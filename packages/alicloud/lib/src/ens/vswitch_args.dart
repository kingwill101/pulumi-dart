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
    required String cidrBlock,
    String? description,
    required String ensRegionId,
    String? networkId,
    String? vswitchName,
  }) :
      cidrBlock = pulumi.Input.asInput<String>(cidrBlock),
      description = pulumi.Input.asOptionalInput<String>(description),
      ensRegionId = pulumi.Input.asInput<String>(ensRegionId),
      networkId = pulumi.Input.asOptionalInput<String>(networkId),
      vswitchName = pulumi.Input.asOptionalInput<String>(vswitchName);

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
      cidrBlock: map['cidrBlock'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      ensRegionId: map['ensRegionId'] as String,
      networkId: map['networkId'] == null ? null : map['networkId'] as String,
      vswitchName: map['vswitchName'] == null ? null : map['vswitchName'] as String,
    );
  }
}

