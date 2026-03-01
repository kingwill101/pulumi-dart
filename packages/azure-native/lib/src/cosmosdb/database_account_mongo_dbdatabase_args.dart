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
  final pulumi.Input<String>? databaseName;
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
  DatabaseAccountMongoDBDatabaseArgs({
    required String accountName,
    String? databaseName,
    required Map<String, String> options,
    required MongoDBDatabaseResource resource,
    required String resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      databaseName = pulumi.Input.asOptionalInput<String>(databaseName),
      options = pulumi.Input.asInput<Map<String, String>>(options),
      resource = pulumi.Input.asInput<MongoDBDatabaseResource>(resource),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      accountName: map['accountName'] as String,
      databaseName: map['databaseName'] == null ? null : map['databaseName'] as String,
      options: (map['options'] as Map).cast<String, String>(),
      resource: MongoDBDatabaseResource.fromMap((map['resource'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

