// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitoring_v3_get_group_args_doc}
/// Arguments for getGroup.
/// {@endtemplate}
/// {@macro pulumi_monitoring_v3_get_group_args_doc}
class GetGroupArgs {
  final pulumi.Input<String> groupId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetGroupArgs].
  /// [groupId] Required.
  /// [project] Optional.
  GetGroupArgs({
    required String groupId,
    String? project,
  })  : groupId = pulumi.Input.asInput<String>(groupId),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupId'] = groupId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetGroupArgs(
      groupId: map['groupId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
