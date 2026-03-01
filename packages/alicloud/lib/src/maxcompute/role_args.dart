// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_maxcompute_role_role_args_doc}
/// The set of arguments for Role.
/// {@endtemplate}
/// {@macro pulumi_maxcompute_role_role_args_doc}
class RoleArgs {
  /// Policy Authorization
  /// Refer to [Policy-based access control](https://www.alibabacloud.com/help/en/maxcompute/user-guide/policy-based-access-control-1) and [Authorization practices](https://www.alibabacloud.com/help/en/maxcompute/use-cases/authorization-practices)
  final pulumi.Input<String>? policy;
  /// Project name
  final pulumi.Input<String> projectName;
  /// Role Name
  ///
  /// > **NOTE:** At the beginning of a letter, it can contain letters and numbers and can be no more than 64 characters in length.
  final pulumi.Input<String> roleName;
  /// Role type Valid values: admin/resource
  ///
  /// > **NOTE:** -- management type (admin) role: You can grant management type permissions through Policy. You cannot grant resource permissions to management type roles. You cannot grant management type permissions to management type roles through ACL. -- resource role: you can authorize resource type permissions through Policy or ACL, but cannot authorize management type permissions. For details, see [role-planning](https://www.alibabacloud.com/help/en/maxcompute/user-guide/role-planning)
  final pulumi.Input<String> type;

  /// Creates a new [RoleArgs].
  /// [policy] Policy Authorization
  /// [projectName] Project name
  /// [roleName] Role Name
  /// [type] Role type Valid values: admin/resource
  RoleArgs({
    String? policy,
    required String projectName,
    required String roleName,
    required String type,
  }) :
      policy = pulumi.Input.asOptionalInput<String>(policy),
      projectName = pulumi.Input.asInput<String>(projectName),
      roleName = pulumi.Input.asInput<String>(roleName),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?policy,
      'projectName': projectName,
      'roleName': roleName,
      'type': type,
    };
  }

  factory RoleArgs.fromMap(Map<String, dynamic> map) {
    return RoleArgs(
      policy: map['policy'] == null ? null : map['policy'] as String,
      projectName: map['projectName'] as String,
      roleName: map['roleName'] as String,
      type: map['type'] as String,
    );
  }
}

