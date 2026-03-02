// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'create_update_options.dart';
import 'mongo_dbcollection_resource.dart';

/// {@template pulumi_cosmosdb_mongo_dbresource_mongo_dbcollection_args_doc}
/// The set of arguments for MongoDBResourceMongoDBCollection.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_mongo_dbresource_mongo_dbcollection_args_doc}
class MongoDBResourceMongoDBCollectionArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;
  /// Cosmos DB collection name.
  final pulumi.Input<String>? collectionName;
  /// Cosmos DB database name.
  final pulumi.Input<String> databaseName;
  /// The location of the resource group to which the resource belongs.
  final pulumi.Input<String>? location;
  /// A key-value pair of options to be applied for the request. This corresponds to the headers sent with the request.
  final pulumi.Input<CreateUpdateOptions>? options;
  /// The standard JSON format of a MongoDB collection
  final pulumi.Input<MongoDBCollectionResource> resource;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [MongoDBResourceMongoDBCollectionArgs].
  /// [accountName] Cosmos DB database account name.
  /// [collectionName] Cosmos DB collection name.
  /// [databaseName] Cosmos DB database name.
  /// [location] The location of the resource group to which the resource belongs.
  /// [options] A key-value pair of options to be applied for the request. This corresponds to the headers sent with the request.
  /// [resource] The standard JSON format of a MongoDB collection
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  MongoDBResourceMongoDBCollectionArgs({
    required this.accountName,
    this.collectionName,
    required this.databaseName,
    this.location,
    this.options,
    required this.resource,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'collectionName': ?collectionName,
      'databaseName': databaseName,
      'location': ?location,
      'options': ?pulumi.Input.mapOptionalInputValue<CreateUpdateOptions, Map<String, dynamic>>(options, (value) => value.toMap()),
      'resource': pulumi.Input.mapInputValue<MongoDBCollectionResource, Map<String, dynamic>>(resource, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory MongoDBResourceMongoDBCollectionArgs.fromMap(Map<String, dynamic> map) {
    return MongoDBResourceMongoDBCollectionArgs(
      accountName: (map['accountName'] as String).input(),
      collectionName: map['collectionName'] == null ? null : (map['collectionName']! as String).input(),
      databaseName: (map['databaseName'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      options: map['options'] == null ? null : (CreateUpdateOptions.fromMap((map['options']! as Map).cast<String, dynamic>())).input(),
      resource: (MongoDBCollectionResource.fromMap((map['resource'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

