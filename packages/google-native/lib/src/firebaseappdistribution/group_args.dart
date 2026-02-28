// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebaseappdistribution_v1_group_args_doc}
/// The set of arguments for Group.
/// {@endtemplate}
/// {@macro pulumi_firebaseappdistribution_v1_group_args_doc}
class GroupArgs {
  /// The display name of the group.
  final pulumi.Input<String> displayName;
  /// Optional. The "alias" to use for the group, which will become the final component of the group's resource name. This value must be unique per project. The field is named `groupId` to comply with AIP guidance for user-specified IDs. This value should be 4-63 characters, and valid characters are `/a-z-/`. If not set, it will be generated based on the display name.
  final pulumi.Input<String>? groupId;
  /// The name of the group resource. Format: `projects/{project_number}/groups/{group_alias}`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Creates a new [GroupArgs].
  /// [displayName] The display name of the group.
  /// [groupId] Optional. The "alias" to use for the group, which will become the final component of the group's resource name. This value must be unique per project. The field is named `groupId` to comply with AIP guidance for user-specified IDs. This value should be 4-63 characters, and valid characters are `/a-z-/`. If not set, it will be generated based on the display name.
  /// [name] The name of the group resource. Format: `projects/{project_number}/groups/{group_alias}`
  /// [project] Optional.
  GroupArgs({
    required String displayName,
    String? groupId,
    String? name,
    String? project,
  }) :
      displayName = pulumi.Input.asInput<String>(displayName),
      groupId = pulumi.Input.asOptionalInput<String>(groupId),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'groupId': ?groupId,
      'name': ?name,
      'project': ?project,
    };
  }

  factory GroupArgs.fromMap(Map<String, dynamic> map) {
    return GroupArgs(
      displayName: map['displayName'] as String,
      groupId: map['groupId'] == null ? null : map['groupId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

