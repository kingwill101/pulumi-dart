// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Role resources.
class RoleState {
  /// Policy Authorization
  /// Refer to [Policy-based access control](https://www.alibabacloud.com/help/en/maxcompute/user-guide/policy-based-access-control-1) and [Authorization practices](https://www.alibabacloud.com/help/en/maxcompute/use-cases/authorization-practices)
  final pulumi.Input<String>? policy;
  /// Project name
  final pulumi.Input<String>? projectName;
  /// Role Name
  ///
  /// &gt; **NOTE:** At the beginning of a letter, it can contain letters and numbers and can be no more than 64 characters in length.
  final pulumi.Input<String>? roleName;
  /// Role type Valid values: admin/resource
  ///
  /// &gt; **NOTE:** -- management type (admin) role: You can grant management type permissions through Policy. You cannot grant resource permissions to management type roles. You cannot grant management type permissions to management type roles through ACL. -- resource role: you can authorize resource type permissions through Policy or ACL, but cannot authorize management type permissions. For details, see [role-planning](https://www.alibabacloud.com/help/en/maxcompute/user-guide/role-planning)
  final pulumi.Input<String>? type;

  /// Creates a new [RoleState].
  /// [policy] Policy Authorization
  /// [projectName] Project name
  /// [roleName] Role Name
  /// [type] Role type Valid values: admin/resource
  RoleState({
    this.policy,
    this.projectName,
    this.roleName,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?policy,
      'projectName': ?projectName,
      'roleName': ?roleName,
      'type': ?type,
    };
  }

  factory RoleState.fromMap(Map<String, dynamic> map) {
    return RoleState(
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectName: (() { final guardedValue = map['projectName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleName: (() { final guardedValue = map['roleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

