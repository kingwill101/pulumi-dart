// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmmigration_v1alpha1_get_group_vmmigration_v1alpha1_args_doc}
/// Arguments for getGroup.
/// {@endtemplate}
/// {@macro pulumi_vmmigration_v1alpha1_get_group_vmmigration_v1alpha1_args_doc}
class GetGroupVmmigrationV1alpha1Args {
  final pulumi.Input<String> groupId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetGroupVmmigrationV1alpha1Args].
  /// [groupId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetGroupVmmigrationV1alpha1Args({
    required String groupId,
    required String location,
    String? project,
  })  : groupId = pulumi.Input.asInput<String>(groupId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupId'] = groupId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetGroupVmmigrationV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return GetGroupVmmigrationV1alpha1Args(
      groupId: map['groupId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
