// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_dbcollection_resource.dart';

/// {@template pulumi_cosmosdb_database_account_mongo_dbcollection_args_doc}
/// The set of arguments for DatabaseAccountMongoDBCollection.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_database_account_mongo_dbcollection_args_doc}
class DatabaseAccountMongoDBCollectionArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;

  /// Cosmos DB collection name.
  final pulumi.Input<String>? collectionName;

  /// Cosmos DB database name.
  final pulumi.Input<String> databaseName;

  /// A key-value pair of options to be applied for the request. This corresponds to the headers sent with the request.
  final pulumi.Input<Map<String, String>> options;

  /// The standard JSON format of a MongoDB collection
  final pulumi.Input<MongoDBCollectionResource> resource;

  /// Name of an Azure resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [DatabaseAccountMongoDBCollectionArgs].
  /// [accountName] Cosmos DB database account name.
  /// [collectionName] Cosmos DB collection name.
  /// [databaseName] Cosmos DB database name.
  /// [options] A key-value pair of options to be applied for the request. This corresponds to the headers sent with the request.
  /// [resource] The standard JSON format of a MongoDB collection
  /// [resourceGroupName] Name of an Azure resource group.
  DatabaseAccountMongoDBCollectionArgs({
    required this.accountName,
    this.collectionName,
    required this.databaseName,
    required this.options,
    required this.resource,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'collectionName': ?collectionName,
      'databaseName': databaseName,
      'options': options,
      'resource':
          pulumi.Input.mapInputValue<
            MongoDBCollectionResource,
            Map<String, dynamic>
          >(resource, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory DatabaseAccountMongoDBCollectionArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return DatabaseAccountMongoDBCollectionArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      collectionName: (() {
        final guardedValue = map['collectionName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      options: pulumi.Input.fromValue(
        (map['options'] as Map).cast<String, String>(),
      ),
      resource: pulumi.Input.fromValue(
        MongoDBCollectionResource.fromMap(
          (map['resource']! as Map).cast<String, dynamic>(),
        ),
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
