// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitoring_v3_group_args_doc}
/// The set of arguments for Group.
/// {@endtemplate}
/// {@macro pulumi_monitoring_v3_group_args_doc}
class GroupArgs {
  /// A user-assigned name for this group, used only for display purposes.
  final pulumi.Input<String>? displayName;
  /// The filter used to determine which monitored resources belong to this group.
  final pulumi.Input<String>? filter;
  /// If true, the members of this group are considered to be a cluster. The system can perform additional analysis on groups that are clusters.
  final pulumi.Input<bool>? isCluster;
  /// The name of the group's parent, if it has one. The format is: projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID] For groups with no parent, parent_name is the empty string, "".
  final pulumi.Input<String>? parentName;
  final pulumi.Input<String>? project;

  /// Creates a new [GroupArgs].
  /// [displayName] A user-assigned name for this group, used only for display purposes.
  /// [filter] The filter used to determine which monitored resources belong to this group.
  /// [isCluster] If true, the members of this group are considered to be a cluster. The system can perform additional analysis on groups that are clusters.
  /// [parentName] The name of the group's parent, if it has one. The format is: projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID] For groups with no parent, parent_name is the empty string, "".
  /// [project] Optional.
  GroupArgs({
    String? displayName,
    String? filter,
    bool? isCluster,
    String? parentName,
    String? project,
  }) :
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      filter = pulumi.Input.asOptionalInput<String>(filter),
      isCluster = pulumi.Input.asOptionalInput<bool>(isCluster),
      parentName = pulumi.Input.asOptionalInput<String>(parentName),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'filter': ?filter,
      'isCluster': ?isCluster,
      'parentName': ?parentName,
      'project': ?project,
    };
  }

  factory GroupArgs.fromMap(Map<String, dynamic> map) {
    return GroupArgs(
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      filter: map['filter'] == null ? null : map['filter'] as String,
      isCluster: map['isCluster'] == null ? null : map['isCluster'] as bool,
      parentName: map['parentName'] == null ? null : map['parentName'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

