// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'role.dart';

/// {@template pulumi_cosmosdb_mongo_dbresource_mongo_user_definition_args_doc}
/// The set of arguments for MongoDBResourceMongoUserDefinition.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_mongo_dbresource_mongo_user_definition_args_doc}
class MongoDBResourceMongoUserDefinitionArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;
  /// A custom definition for the USer Definition.
  final pulumi.Input<String>? customData;
  /// The database name for which access is being granted for this User Definition.
  final pulumi.Input<String>? databaseName;
  /// The Mongo Auth mechanism. For now, we only support auth mechanism SCRAM-SHA-256.
  final pulumi.Input<String>? mechanisms;
  /// The ID for the User Definition {dbName.userName}.
  final pulumi.Input<String>? mongoUserDefinitionId;
  /// The password for User Definition. Response does not contain user password.
  final pulumi.Input<String>? password;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The set of roles inherited by the User Definition.
  final pulumi.Input<List<Role>>? roles;
  /// The user name for User Definition.
  final pulumi.Input<String>? userName;

  /// Creates a new [MongoDBResourceMongoUserDefinitionArgs].
  /// [accountName] Cosmos DB database account name.
  /// [customData] A custom definition for the USer Definition.
  /// [databaseName] The database name for which access is being granted for this User Definition.
  /// [mechanisms] The Mongo Auth mechanism. For now, we only support auth mechanism SCRAM-SHA-256.
  /// [mongoUserDefinitionId] The ID for the User Definition {dbName.userName}.
  /// [password] The password for User Definition. Response does not contain user password.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [roles] The set of roles inherited by the User Definition.
  /// [userName] The user name for User Definition.
  const MongoDBResourceMongoUserDefinitionArgs({
    required this.accountName,
    this.customData,
    this.databaseName,
    this.mechanisms,
    this.mongoUserDefinitionId,
    this.password,
    required this.resourceGroupName,
    this.roles,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'customData': ?customData,
      'databaseName': ?databaseName,
      'mechanisms': ?mechanisms,
      'mongoUserDefinitionId': ?mongoUserDefinitionId,
      'password': ?password,
      'resourceGroupName': resourceGroupName,
      'roles': ?pulumi.Input.mapOptionalInputValue<List<Role>, List<Map<String, dynamic>>>(roles, (value) => pulumi.Input.encodeList<Role, Map<String, dynamic>>(value, (value) => value.toMap())),
      'userName': ?userName,
    };
  }

  factory MongoDBResourceMongoUserDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return MongoDBResourceMongoUserDefinitionArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      customData: (() { final guardedValue = map['customData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mechanisms: (() { final guardedValue = map['mechanisms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mongoUserDefinitionId: (() { final guardedValue = map['mongoUserDefinitionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      roles: (() { final guardedValue = map['roles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Role>(guardedValue, (value) => Role.fromMap((value as Map).cast<String, dynamic>()))); })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
