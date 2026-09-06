// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_dbdatabase_resource.dart';

/// {@template pulumi_cosmosdb_database_account_mongo_dbdatabase_args_doc}
/// The set of arguments for DatabaseAccountMongoDBDatabase.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_database_account_mongo_dbdatabase_args_doc}
class DatabaseAccountMongoDBDatabaseArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;
  /// Cosmos DB database name.
  final pulumi.Input<String?>? databaseName;
  /// A key-value pair of options to be applied for the request. This corresponds to the headers sent with the request.
  final pulumi.Input<Map<String, String>> options;
  /// The standard JSON format of a MongoDB database
  final pulumi.Input<MongoDBDatabaseResource> resource;
  /// Name of an Azure resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [DatabaseAccountMongoDBDatabaseArgs].
  /// [accountName] Cosmos DB database account name.
  /// [databaseName] Cosmos DB database name.
  /// [options] A key-value pair of options to be applied for the request. This corresponds to the headers sent with the request.
  /// [resource] The standard JSON format of a MongoDB database
  /// [resourceGroupName] Name of an Azure resource group.
  const DatabaseAccountMongoDBDatabaseArgs({
    required this.accountName,
    this.databaseName,
    required this.options,
    required this.resource,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'databaseName': ?databaseName,
      'options': options,
      'resource': pulumi.Input.mapInputValue<MongoDBDatabaseResource, Map<String, dynamic>>(resource, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory DatabaseAccountMongoDBDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseAccountMongoDBDatabaseArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      options: pulumi.Input.fromValue((map['options'] as Map).cast<String, String>()),
      resource: pulumi.Input.fromValue(MongoDBDatabaseResource.fromMap((map['resource']! as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
