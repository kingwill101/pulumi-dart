// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebaseappdistribution_v1_get_group_args_doc}
/// Arguments for getGroup.
/// {@endtemplate}
/// {@macro pulumi_firebaseappdistribution_v1_get_group_args_doc}
class GetGroupArgs {
  final pulumi.Input<String> groupId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetGroupArgs].
  /// [groupId] Required.
  /// [project] Optional.
  GetGroupArgs({required String groupId, String? project})
    : groupId = pulumi.Input.asInput<String>(groupId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'groupId': groupId, 'project': ?project};
  }

  factory GetGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetGroupArgs(
      groupId: map['groupId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
