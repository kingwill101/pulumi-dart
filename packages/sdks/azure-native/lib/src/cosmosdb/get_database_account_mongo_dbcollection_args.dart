// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_get_database_account_mongo_dbcollection_args_doc}
/// Arguments for getDatabaseAccountMongoDBCollection.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_get_database_account_mongo_dbcollection_args_doc}
class GetDatabaseAccountMongoDBCollectionArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;

  /// Cosmos DB collection name.
  final pulumi.Input<String> collectionName;

  /// Cosmos DB database name.
  final pulumi.Input<String> databaseName;

  /// Name of an Azure resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDatabaseAccountMongoDBCollectionArgs].
  /// [accountName] Cosmos DB database account name.
  /// [collectionName] Cosmos DB collection name.
  /// [databaseName] Cosmos DB database name.
  /// [resourceGroupName] Name of an Azure resource group.
  GetDatabaseAccountMongoDBCollectionArgs({
    required this.accountName,
    required this.collectionName,
    required this.databaseName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'collectionName': collectionName,
      'databaseName': databaseName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDatabaseAccountMongoDBCollectionArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDatabaseAccountMongoDBCollectionArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      collectionName: pulumi.Input.fromValue(map['collectionName'] as String),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
