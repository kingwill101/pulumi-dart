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
    required pulumi.Output<String> accountName,
    pulumi.Output<List<String>>? assignableScopes,
    pulumi.Output<String>? id,
    pulumi.Output<List<Permission>>? permissions,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? roleDefinitionId,
    pulumi.Output<String>? roleName,
    pulumi.Output<RoleDefinitionType>? type,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      assignableScopes = pulumi.Input.asOptionalInput<List<String>>(assignableScopes),
      id = pulumi.Input.asOptionalInput<String>(id),
      permissions = pulumi.Input.asOptionalInput<List<Permission>>(permissions),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      roleDefinitionId = pulumi.Input.asOptionalInput<String>(roleDefinitionId),
      roleName = pulumi.Input.asOptionalInput<String>(roleName),
      type = pulumi.Input.asOptionalInput<RoleDefinitionType>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'assignableScopes': ?assignableScopes,
      'id': ?id,
      'permissions': ?pulumi.Input.mapOptionalInputValue<List<Permission>, List<Map<String, dynamic>>>(permissions, (value) => pulumi.Input.encodeList<Permission, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'roleDefinitionId': ?roleDefinitionId,
      'roleName': ?roleName,
      'type': ?pulumi.Input.mapOptionalInputValue<RoleDefinitionType, String>(type, (value) => value.value),
    };
  }

  factory GremlinResourceGremlinRoleDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GremlinResourceGremlinRoleDefinitionArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      assignableScopes: map['assignableScopes'] == null ? null : pulumi.Output.create<List<String>>((map['assignableScopes'] as List).cast<String>()),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      permissions: map['permissions'] == null ? null : pulumi.Output.create<List<Permission>>(pulumi.Input.decodeList<Permission>(map['permissions'], (value) => Permission.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      roleDefinitionId: map['roleDefinitionId'] == null ? null : pulumi.Output.create<String>(map['roleDefinitionId'] as String),
      roleName: map['roleName'] == null ? null : pulumi.Output.create<String>(map['roleName'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<RoleDefinitionType>(RoleDefinitionType.fromValue(map['type'] as String)),
    );
  }
}

