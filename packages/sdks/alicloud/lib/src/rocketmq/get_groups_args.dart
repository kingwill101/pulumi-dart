// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rocketmq_get_groups_get_groups_args_doc}
/// Arguments for getGroups.
/// {@endtemplate}
/// {@macro pulumi_rocketmq_get_groups_get_groups_args_doc}
class GetGroupsArgs {
  /// A regex string to filter results by the group name.
  final pulumi.Input<String>? groupIdRegex;
  /// Specify the protocol applicable to the created Group ID. Valid values: `tcp`, `http`. Default to `tcp`.
  final pulumi.Input<String>? groupType;
  /// A list of group names.
  final pulumi.Input<List<String>>? ids;
  /// ID of the ONS Instance that owns the groups.
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// A map of tags assigned to the Ons instance.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetGroupsArgs].
  /// [groupIdRegex] A regex string to filter results by the group name.
  /// [groupType] Specify the protocol applicable to the created Group ID. Valid values: `tcp`, `http`. Default to `tcp`.
  /// [ids] A list of group names.
  /// [instanceId] ID of the ONS Instance that owns the groups.
  /// [nameRegex] Optional.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [tags] A map of tags assigned to the Ons instance.
  GetGroupsArgs({
    pulumi.Output<String>? groupIdRegex,
    pulumi.Output<String>? groupType,
    pulumi.Output<List<String>>? ids,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      groupIdRegex = pulumi.Input.asOptionalInput<String>(groupIdRegex),
      groupType = pulumi.Input.asOptionalInput<String>(groupType),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIdRegex': ?groupIdRegex,
      'groupType': ?groupType,
      'ids': ?ids,
      'instanceId': instanceId,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'tags': ?tags,
    };
  }

  factory GetGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetGroupsArgs(
      groupIdRegex: map['groupIdRegex'] == null ? null : pulumi.Output.create<String>(map['groupIdRegex'] as String),
      groupType: map['groupType'] == null ? null : pulumi.Output.create<String>(map['groupType'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

