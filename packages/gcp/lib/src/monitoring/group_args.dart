// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitoring_group_group_args_doc}
/// The set of arguments for Group.
/// {@endtemplate}
/// {@macro pulumi_monitoring_group_group_args_doc}
class GroupArgs {
  /// A user-assigned name for this group, used only for display
  /// purposes.
  final pulumi.Input<String> displayName;

  /// The filter used to determine which monitored resources
  /// belong to this group.
  final pulumi.Input<String> filter;

  /// If true, the members of this group are considered to be a
  /// cluster. The system can perform additional analysis on
  /// groups that are clusters.
  final pulumi.Input<bool>? isCluster;

  /// The name of the group's parent, if it has one. The format is
  /// "projects/{project_id_or_number}/groups/{group_id}". For
  /// groups with no parent, parentName is the empty string, "".
  final pulumi.Input<String>? parentName;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GroupArgs].
  /// [displayName] A user-assigned name for this group, used only for display
  /// [filter] The filter used to determine which monitored resources
  /// [isCluster] If true, the members of this group are considered to be a
  /// [parentName] The name of the group's parent, if it has one. The format is
  /// [project] The ID of the project in which the resource belongs.
  GroupArgs({
    required String displayName,
    required String filter,
    bool? isCluster,
    String? parentName,
    String? project,
  })  : displayName = pulumi.Input.asInput<String>(displayName),
        filter = pulumi.Input.asInput<String>(filter),
        isCluster = pulumi.Input.asOptionalInput<bool>(isCluster),
        parentName = pulumi.Input.asOptionalInput<String>(parentName),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    map['filter'] = filter;
    final isClusterValue = isCluster;
    if (isClusterValue != null) {
      map['isCluster'] = isClusterValue;
    }
    final parentNameValue = parentName;
    if (parentNameValue != null) {
      map['parentName'] = parentNameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GroupArgs.fromMap(Map<String, dynamic> map) {
    return GroupArgs(
      displayName: map['displayName'] as String,
      filter: map['filter'] as String,
      isCluster: map['isCluster'] == null ? null : map['isCluster'] as bool,
      parentName:
          map['parentName'] == null ? null : map['parentName'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
