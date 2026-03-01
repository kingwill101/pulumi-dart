// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_get_mongo_dbresource_mongo_dbdatabase_args_doc}
/// Arguments for getMongoDBResourceMongoDBDatabase.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_get_mongo_dbresource_mongo_dbdatabase_args_doc}
class GetMongoDBResourceMongoDBDatabaseArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;
  /// Cosmos DB database name.
  final pulumi.Input<String> databaseName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetMongoDBResourceMongoDBDatabaseArgs].
  /// [accountName] Cosmos DB database account name.
  /// [databaseName] Cosmos DB database name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetMongoDBResourceMongoDBDatabaseArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> databaseName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      databaseName = pulumi.Input.asInput<String>(databaseName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'databaseName': databaseName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetMongoDBResourceMongoDBDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return GetMongoDBResourceMongoDBDatabaseArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

