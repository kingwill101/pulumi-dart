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
    String? description,
    String? haVipName,
    String? havipName,
    String? ipAddress,
    String? resourceGroupId,
    Map<String, String>? tags,
    required String vswitchId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      haVipName = pulumi.Input.asOptionalInput<String>(haVipName),
      havipName = pulumi.Input.asOptionalInput<String>(havipName),
      ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vswitchId = pulumi.Input.asInput<String>(vswitchId);

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
      description: map['description'] == null ? null : map['description'] as String,
      haVipName: map['haVipName'] == null ? null : map['haVipName'] as String,
      havipName: map['havipName'] == null ? null : map['havipName'] as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      vswitchId: map['vswitchId'] as String,
    );
  }
}

