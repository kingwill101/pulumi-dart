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
  /// The scope of the operation or resource. Valid scopes are: subscription (format: '/subscriptions/{subscriptionId}'), resource group (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}', or resource (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/[{parentResourcePath}/]{resourceType}/{resourceName}'
  final pulumi.Input<String> scope;

  /// Creates a new [RoleDefinitionArgs].
  /// [assignableScopes] Role definition assignable scopes.
  /// [description] The role definition description.
  /// [permissions] Role definition permissions.
  /// [roleDefinitionId] The ID of the role definition.
  /// [roleName] The role name.
  /// [roleType] The role type.
  /// [scope] The scope of the operation or resource. Valid scopes are: subscription (format: '/subscriptions/{subscriptionId}'), resource group (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}', or resource (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/[{parentResourcePath}/]{resourceType}/{resourceName}'
  RoleDefinitionArgs({
    List<String>? assignableScopes,
    String? description,
    List<Permission>? permissions,
    String? roleDefinitionId,
    String? roleName,
    String? roleType,
    required String scope,
  }) :
      assignableScopes = pulumi.Input.asOptionalInput<List<String>>(assignableScopes),
      description = pulumi.Input.asOptionalInput<String>(description),
      permissions = pulumi.Input.asOptionalInput<List<Permission>>(permissions),
      roleDefinitionId = pulumi.Input.asOptionalInput<String>(roleDefinitionId),
      roleName = pulumi.Input.asOptionalInput<String>(roleName),
      roleType = pulumi.Input.asOptionalInput<String>(roleType),
      scope = pulumi.Input.asInput<String>(scope);

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
      assignableScopes: map['assignableScopes'] == null ? null : (map['assignableScopes'] as List).cast<String>(),
      description: map['description'] == null ? null : map['description'] as String,
      permissions: map['permissions'] == null ? null : pulumi.Input.decodeList<Permission>(map['permissions'], (value) => Permission.fromMap((value as Map).cast<String, dynamic>())),
      roleDefinitionId: map['roleDefinitionId'] == null ? null : map['roleDefinitionId'] as String,
      roleName: map['roleName'] == null ? null : map['roleName'] as String,
      roleType: map['roleType'] == null ? null : map['roleType'] as String,
      scope: map['scope'] as String,
    );
  }
}

