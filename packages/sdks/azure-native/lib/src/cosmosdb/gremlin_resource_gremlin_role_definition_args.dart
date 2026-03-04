// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'permission.dart';
import 'role_definition_type.dart';

/// {@template pulumi_cosmosdb_gremlin_resource_gremlin_role_definition_args_doc}
/// The set of arguments for GremlinResourceGremlinRoleDefinition.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_gremlin_resource_gremlin_role_definition_args_doc}
class GremlinResourceGremlinRoleDefinitionArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;

  /// A set of fully qualified Scopes at or below which Gremlin Role Assignments may be created using this Role Definition. This will allow application of this Role Definition on the entire database account or any underlying Database / Collection. Must have at least one element. Scopes higher than Database account are not enforceable as assignable Scopes. Note that resources referenced in assignable Scopes need not exist.
  final pulumi.Input<List<String>>? assignableScopes;

  /// The path id for the Role Definition.
  final pulumi.Input<String>? id;

  /// The set of operations allowed through this Role Definition.
  final pulumi.Input<List<Permission>>? permissions;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The GUID for the Role Definition.
  final pulumi.Input<String>? roleDefinitionId;

  /// A user-friendly name for the Role Definition. Must be unique for the database account.
  final pulumi.Input<String>? roleName;

  /// Indicates whether the Role Definition was built-in or user created.
  final pulumi.Input<RoleDefinitionType>? type;

  /// Creates a new [GremlinResourceGremlinRoleDefinitionArgs].
  /// [accountName] Cosmos DB database account name.
  /// [assignableScopes] A set of fully qualified Scopes at or below which Gremlin Role Assignments may be created using this Role Definition. This will allow application of this Role Definition on the entire database account or any underlying Database / Collection. Must have at least one element. Scopes higher than Database account are not enforceable as assignable Scopes. Note that resources referenced in assignable Scopes need not exist.
  /// [id] The path id for the Role Definition.
  /// [permissions] The set of operations allowed through this Role Definition.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [roleDefinitionId] The GUID for the Role Definition.
  /// [roleName] A user-friendly name for the Role Definition. Must be unique for the database account.
  /// [type] Indicates whether the Role Definition was built-in or user created.
  GremlinResourceGremlinRoleDefinitionArgs({
    required this.accountName,
    this.assignableScopes,
    this.id,
    this.permissions,
    required this.resourceGroupName,
    this.roleDefinitionId,
    this.roleName,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'assignableScopes': ?assignableScopes,
      'id': ?id,
      'permissions':
          ?pulumi.Input.mapOptionalInputValue<
            List<Permission>,
            List<Map<String, dynamic>>
          >(
            permissions,
            (value) =>
                pulumi.Input.encodeList<Permission, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'resourceGroupName': resourceGroupName,
      'roleDefinitionId': ?roleDefinitionId,
      'roleName': ?roleName,
      'type': ?pulumi.Input.mapOptionalInputValue<RoleDefinitionType, String>(
        type,
        (value) => value.wireValue,
      ),
    };
  }

  factory GremlinResourceGremlinRoleDefinitionArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GremlinResourceGremlinRoleDefinitionArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      assignableScopes: (() {
        final guardedValue = map['assignableScopes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      permissions: (() {
        final guardedValue = map['permissions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<Permission>(
            guardedValue,
            (value) =>
                Permission.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      roleDefinitionId: (() {
        final guardedValue = map['roleDefinitionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      roleName: (() {
        final guardedValue = map['roleName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RoleDefinitionType.fromValue(guardedValue as String),
        );
      })(),
    );
  }
}
