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
    required this.accountName,
    this.databaseName,
    this.mongoRoleDefinitionId,
    this.privileges,
    required this.resourceGroupName,
    this.roleName,
    this.roles,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'databaseName': ?databaseName,
      'mongoRoleDefinitionId': ?mongoRoleDefinitionId,
      'privileges': ?pulumi.Input.mapOptionalInputValue<List<Privilege>, List<Map<String, dynamic>>>(privileges, (value) => pulumi.Input.encodeList<Privilege, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'roleName': ?roleName,
      'roles': ?pulumi.Input.mapOptionalInputValue<List<Role>, List<Map<String, dynamic>>>(roles, (value) => pulumi.Input.encodeList<Role, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?pulumi.Input.mapOptionalInputValue<MongoRoleDefinitionType, String>(type, (value) => value.wireValue),
    };
  }

  factory MongoDBResourceMongoRoleDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return MongoDBResourceMongoRoleDefinitionArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mongoRoleDefinitionId: (() { final guardedValue = map['mongoRoleDefinitionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privileges: (() { final guardedValue = map['privileges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Privilege>(guardedValue, (value) => Privilege.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      roleName: (() { final guardedValue = map['roleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roles: (() { final guardedValue = map['roles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Role>(guardedValue, (value) => Role.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MongoRoleDefinitionType.fromValue(guardedValue as String)); })(),
    );
  }
}

