// ignore_for_file: unused_element, unnecessary_cast

import 'cassandra_schema_response.dart';

/// Result data returned by getDatabaseAccountCassandraTable.
class GetDatabaseAccountCassandraTableResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Time to live of the Cosmos DB Cassandra table
  final int? defaultTtl;
  /// The unique resource identifier of the database account.
  final String id;
  /// The location of the resource group to which the resource belongs.
  final String? location;
  /// The name of the database account.
  final String name;
  /// Schema of the Cosmos DB Cassandra table
  final CassandraSchemaResponse? schema;
  /// Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  final Map<String, String>? tags;
  /// The type of Azure resource.
  final String type;

  /// Creates a new [GetDatabaseAccountCassandraTableResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [defaultTtl] Time to live of the Cosmos DB Cassandra table
  /// [id] The unique resource identifier of the database account.
  /// [location] The location of the resource group to which the resource belongs.
  /// [name] The name of the database account.
  /// [schema] Schema of the Cosmos DB Cassandra table
  /// [tags] Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  /// [type] The type of Azure resource.
  GetDatabaseAccountCassandraTableResult({
    required this.azureApiVersion,
    this.defaultTtl,
    required this.id,
    this.location,
    required this.name,
    this.schema,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'defaultTtl': ?defaultTtl,
      'id': id,
      'location': ?location,
      'name': name,
      'schema': ?schema == null ? null : schema!.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetDatabaseAccountCassandraTableResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseAccountCassandraTableResult(
      azureApiVersion: map['azureApiVersion'] as String,
      defaultTtl: map['defaultTtl'] == null ? null : map['defaultTtl'] as int,
      id: map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      schema: map['schema'] == null ? null : CassandraSchemaResponse.fromMap((map['schema'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

