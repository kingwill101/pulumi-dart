// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_h_avip_havip_args_doc}
/// The set of arguments for HAVip.
/// {@endtemplate}
/// {@macro pulumi_vpc_h_avip_havip_args_doc}
class HAVipArgs {
  /// The description of the HaVip instance.
  final pulumi.Input<String>? description;
  /// The name of the HAVIP.
  final pulumi.Input<String>? haVipName;
  /// The name of the HaVip instance.
  final pulumi.Input<String>? havipName;
  /// The ip address of the HaVip. If not filled, the default will be assigned one from the vswitch.
  final pulumi.Input<String>? ipAddress;
  /// The ID of the resource group to which the HAVIP belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// The list of tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The vswitch_id of the HaVip, the field can't be changed.
  final pulumi.Input<String> vswitchId;

  /// Creates a new [HAVipArgs].
  /// [description] The description of the HaVip instance.
  /// [haVipName] The name of the HAVIP.
  /// [havipName] The name of the HaVip instance.
  /// [ipAddress] The ip address of the HaVip. If not filled, the default will be assigned one from the vswitch.
  /// [resourceGroupId] The ID of the resource group to which the HAVIP belongs.
  /// [tags] The list of tags.
  /// [vswitchId] The vswitch_id of the HaVip, the field can't be changed.
  HAVipArgs({
    this.description,
    this.haVipName,
    this.havipName,
    this.ipAddress,
    this.resourceGroupId,
    this.tags,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'haVipName': ?haVipName,
      'havipName': ?havipName,
      'ipAddress': ?ipAddress,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
      'vswitchId': vswitchId,
    };
  }

  factory HAVipArgs.fromMap(Map<String, dynamic> map) {
    return HAVipArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      haVipName: (() { final guardedValue = map['haVipName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      havipName: (() { final guardedValue = map['havipName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
    );
  }
}

