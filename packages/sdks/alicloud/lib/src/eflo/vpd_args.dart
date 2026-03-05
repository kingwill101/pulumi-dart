// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eflo_vpd_vpd_args_doc}
/// The set of arguments for Vpd.
/// {@endtemplate}
/// {@macro pulumi_eflo_vpd_vpd_args_doc}
class VpdArgs {
  /// The CIDR block of the VPD.
  final pulumi.Input<String> cidr;
  /// The Resource group ID. **NOTE:** From version 1.263.0, `resource_group_id` can be modified.
  final pulumi.Input<String>? resourceGroupId;
  /// The additional CIDR block.
  final pulumi.Input<List<String>>? secondaryCidrBlocks;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the VPD instance.
  final pulumi.Input<String> vpdName;

  /// Creates a new [VpdArgs].
  /// [cidr] The CIDR block of the VPD.
  /// [resourceGroupId] The Resource group ID. **NOTE:** From version 1.263.0, `resource_group_id` can be modified.
  /// [secondaryCidrBlocks] The additional CIDR block.
  /// [tags] The tag of the resource.
  /// [vpdName] The name of the VPD instance.
  VpdArgs({
    required this.cidr,
    this.resourceGroupId,
    this.secondaryCidrBlocks,
    this.tags,
    required this.vpdName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': cidr,
      'resourceGroupId': ?resourceGroupId,
      'secondaryCidrBlocks': ?secondaryCidrBlocks,
      'tags': ?tags,
      'vpdName': vpdName,
    };
  }

  factory VpdArgs.fromMap(Map<String, dynamic> map) {
    return VpdArgs(
      cidr: pulumi.Input.fromValue(map['cidr'] as String),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryCidrBlocks: (() { final guardedValue = map['secondaryCidrBlocks']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpdName: pulumi.Input.fromValue(map['vpdName'] as String),
    );
  }
}

