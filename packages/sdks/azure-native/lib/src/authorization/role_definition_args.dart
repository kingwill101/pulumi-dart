// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'permission.dart';

/// {@template pulumi_authorization_role_definition_args_doc}
/// The set of arguments for RoleDefinition.
/// {@endtemplate}
/// {@macro pulumi_authorization_role_definition_args_doc}
class RoleDefinitionArgs {
  /// Role definition assignable scopes.
  final pulumi.Input<List<String>>? assignableScopes;
  /// The role definition description.
  final pulumi.Input<String>? description;
  /// Role definition permissions.
  final pulumi.Input<List<Permission>>? permissions;
  /// The ID of the role definition.
  final pulumi.Input<String>? roleDefinitionId;
  /// The role name.
  final pulumi.Input<String>? roleName;
  /// The role type.
  final pulumi.Input<String>? roleType;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> scope;

  /// Creates a new [RoleDefinitionArgs].
  /// [assignableScopes] Role definition assignable scopes.
  /// [description] The role definition description.
  /// [permissions] Role definition permissions.
  /// [roleDefinitionId] The ID of the role definition.
  /// [roleName] The role name.
  /// [roleType] The role type.
  /// [scope] The fully qualified Azure Resource manager identifier of the resource.
  const RoleDefinitionArgs({
    this.assignableScopes,
    this.description,
    this.permissions,
    this.roleDefinitionId,
    this.roleName,
    this.roleType,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignableScopes': ?assignableScopes,
      'description': ?description,
      'permissions': ?pulumi.Input.mapOptionalInputValue<List<Permission>, List<Map<String, dynamic>>>(permissions, (value) => pulumi.Input.encodeList<Permission, Map<String, dynamic>>(value, (value) => value.toMap())),
      'roleDefinitionId': ?roleDefinitionId,
      'roleName': ?roleName,
      'roleType': ?roleType,
      'scope': scope,
    };
  }

  factory RoleDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return RoleDefinitionArgs(
      assignableScopes: (() { final guardedValue = map['assignableScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Permission>(guardedValue, (value) => Permission.fromMap((value as Map).cast<String, dynamic>()))); })(),
      roleDefinitionId: (() { final guardedValue = map['roleDefinitionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleName: (() { final guardedValue = map['roleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleType: (() { final guardedValue = map['roleType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}
