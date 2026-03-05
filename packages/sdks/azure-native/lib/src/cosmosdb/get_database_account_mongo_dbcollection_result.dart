// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_index_response.dart';

/// Result data returned by getDatabaseAccountMongoDBCollection.
class GetDatabaseAccountMongoDBCollectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The unique resource identifier of the database account.
  final String id;
  /// List of index keys
  final List<MongoIndexResponse>? indexes;
  /// The location of the resource group to which the resource belongs.
  final String? location;
  /// The name of the database account.
  final String name;
  /// A key-value pair of shard keys to be applied for the request.
  final Map<String, String>? shardKey;
  /// Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  final Map<String, String>? tags;
  /// The type of Azure resource.
  final String type;

  /// Creates a new [GetDatabaseAccountMongoDBCollectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The unique resource identifier of the database account.
  /// [indexes] List of index keys
  /// [location] The location of the resource group to which the resource belongs.
  /// [name] The name of the database account.
  /// [shardKey] A key-value pair of shard keys to be applied for the request.
  /// [tags] Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  /// [type] The type of Azure resource.
  GetDatabaseAccountMongoDBCollectionResult({
    required this.azureApiVersion,
    required this.id,
    this.indexes,
    this.location,
    required this.name,
    this.shardKey,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'indexes': ?(() { final guardedValue = indexes; if (guardedValue == null) return null; return pulumi.Input.encodeList<MongoIndexResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': name,
      'shardKey': ?shardKey,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetDatabaseAccountMongoDBCollectionResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseAccountMongoDBCollectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      indexes: (() { final guardedValue = map['indexes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<MongoIndexResponse>(guardedValue, (value) => MongoIndexResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      shardKey: (() { final guardedValue = map['shardKey']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

