// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_role_definition_type.dart';
import 'privilege.dart';
import 'role.dart';

/// {@template pulumi_cosmosdb_mongo_dbresource_mongo_role_definition_args_doc}
/// The set of arguments for MongoDBResourceMongoRoleDefinition.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_mongo_dbresource_mongo_role_definition_args_doc}
class MongoDBResourceMongoRoleDefinitionArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;
  /// The database name for which access is being granted for this Role Definition.
  final pulumi.Input<String>? databaseName;
  /// The ID for the Role Definition {dbName.roleName}.
  final pulumi.Input<String>? mongoRoleDefinitionId;
  /// A set of privileges contained by the Role Definition. This will allow application of this Role Definition on the entire database account or any underlying Database / Collection. Scopes higher than Database are not enforceable as privilege.
  final pulumi.Input<List<Privilege>>? privileges;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// A user-friendly name for the Role Definition. Must be unique for the database account.
  final pulumi.Input<String>? roleName;
  /// The set of roles inherited by this Role Definition.
  final pulumi.Input<List<Role>>? roles;
  /// Indicates whether the Role Definition was built-in or user created.
  final pulumi.Input<MongoRoleDefinitionType>? type;

  /// Creates a new [MongoDBResourceMongoRoleDefinitionArgs].
  /// [accountName] Cosmos DB database account name.
  /// [databaseName] The database name for which access is being granted for this Role Definition.
  /// [mongoRoleDefinitionId] The ID for the Role Definition {dbName.roleName}.
  /// [privileges] A set of privileges contained by the Role Definition. This will allow application of this Role Definition on the entire database account or any underlying Database / Collection. Scopes higher than Database are not enforceable as privilege.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [roleName] A user-friendly name for the Role Definition. Must be unique for the database account.
  /// [roles] The set of roles inherited by this Role Definition.
  /// [type] Indicates whether the Role Definition was built-in or user created.
  MongoDBResourceMongoRoleDefinitionArgs({
    required pulumi.Output<String> accountName,
    pulumi.Output<String>? databaseName,
    pulumi.Output<String>? mongoRoleDefinitionId,
    pulumi.Output<List<Privilege>>? privileges,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? roleName,
    pulumi.Output<List<Role>>? roles,
    pulumi.Output<MongoRoleDefinitionType>? type,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      databaseName = pulumi.Input.asOptionalInput<String>(databaseName),
      mongoRoleDefinitionId = pulumi.Input.asOptionalInput<String>(mongoRoleDefinitionId),
      privileges = pulumi.Input.asOptionalInput<List<Privilege>>(privileges),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      roleName = pulumi.Input.asOptionalInput<String>(roleName),
      roles = pulumi.Input.asOptionalInput<List<Role>>(roles),
      type = pulumi.Input.asOptionalInput<MongoRoleDefinitionType>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'databaseName': ?databaseName,
      'mongoRoleDefinitionId': ?mongoRoleDefinitionId,
      'privileges': ?pulumi.Input.mapOptionalInputValue<List<Privilege>, List<Map<String, dynamic>>>(privileges, (value) => pulumi.Input.encodeList<Privilege, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'roleName': ?roleName,
      'roles': ?pulumi.Input.mapOptionalInputValue<List<Role>, List<Map<String, dynamic>>>(roles, (value) => pulumi.Input.encodeList<Role, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?pulumi.Input.mapOptionalInputValue<MongoRoleDefinitionType, String>(type, (value) => value.value),
    };
  }

  factory MongoDBResourceMongoRoleDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return MongoDBResourceMongoRoleDefinitionArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      databaseName: map['databaseName'] == null ? null : pulumi.Output.create<String>(map['databaseName'] as String),
      mongoRoleDefinitionId: map['mongoRoleDefinitionId'] == null ? null : pulumi.Output.create<String>(map['mongoRoleDefinitionId'] as String),
      privileges: map['privileges'] == null ? null : pulumi.Output.create<List<Privilege>>(pulumi.Input.decodeList<Privilege>(map['privileges'], (value) => Privilege.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      roleName: map['roleName'] == null ? null : pulumi.Output.create<String>(map['roleName'] as String),
      roles: map['roles'] == null ? null : pulumi.Output.create<List<Role>>(pulumi.Input.decodeList<Role>(map['roles'], (value) => Role.fromMap((value as Map).cast<String, dynamic>()))),
      type: map['type'] == null ? null : pulumi.Output.create<MongoRoleDefinitionType>(MongoRoleDefinitionType.fromValue(map['type'] as String)),
    );
  }
}

