// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_v1_get_role_args_doc}
/// Arguments for getRole.
/// {@endtemplate}
/// {@macro pulumi_iam_v1_get_role_args_doc}
class GetRoleArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> roleId;

  /// Creates a new [GetRoleArgs].
  /// [project] Optional.
  /// [roleId] Required.
  GetRoleArgs({String? project, required String roleId})
    : project = pulumi.Input.asOptionalInput<String>(project),
      roleId = pulumi.Input.asInput<String>(roleId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'project': ?project, 'roleId': roleId};
  }

  factory GetRoleArgs.fromMap(Map<String, dynamic> map) {
    return GetRoleArgs(
      project: map['project'] == null ? null : map['project'] as String,
      roleId: map['roleId'] as String,
    );
  }
}
