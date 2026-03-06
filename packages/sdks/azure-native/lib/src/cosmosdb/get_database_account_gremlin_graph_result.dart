// ignore_for_file: unused_element, unnecessary_cast

import 'conflict_resolution_policy_response.dart';
import 'container_partition_key_response.dart';
import 'indexing_policy_response.dart';
import 'unique_key_policy_response.dart';

/// Result data returned by getDatabaseAccountGremlinGraph.
class GetDatabaseAccountGremlinGraphResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The conflict resolution policy for the graph.
  final ConflictResolutionPolicyResponse? conflictResolutionPolicy;
  /// Default time to live
  final int? defaultTtl;
  /// A system generated property representing the resource etag required for optimistic concurrency control.
  final String? etag;
  /// The unique resource identifier of the database account.
  final String id;
  /// The configuration of the indexing policy. By default, the indexing is automatic for all document paths within the graph
  final IndexingPolicyResponse? indexingPolicy;
  /// The location of the resource group to which the resource belongs.
  final String? location;
  /// The name of the database account.
  final String name;
  /// The configuration of the partition key to be used for partitioning data into multiple partitions
  final ContainerPartitionKeyResponse? partitionKey;
  /// A system generated property. A unique identifier.
  final String? rid;
  /// Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  final Map<String, String>? tags;
  /// A system generated property that denotes the last updated timestamp of the resource.
  final dynamic ts;
  /// The type of Azure resource.
  final String type;
  /// The unique key policy configuration for specifying uniqueness constraints on documents in the collection in the Azure Cosmos DB service.
  final UniqueKeyPolicyResponse? uniqueKeyPolicy;

  /// Creates a new [GetDatabaseAccountGremlinGraphResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [conflictResolutionPolicy] The conflict resolution policy for the graph.
  /// [defaultTtl] Default time to live
  /// [etag] A system generated property representing the resource etag required for optimistic concurrency control.
  /// [id] The unique resource identifier of the database account.
  /// [indexingPolicy] The configuration of the indexing policy. By default, the indexing is automatic for all document paths within the graph
  /// [location] The location of the resource group to which the resource belongs.
  /// [name] The name of the database account.
  /// [partitionKey] The configuration of the partition key to be used for partitioning data into multiple partitions
  /// [rid] A system generated property. A unique identifier.
  /// [tags] Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  /// [ts] A system generated property that denotes the last updated timestamp of the resource.
  /// [type] The type of Azure resource.
  /// [uniqueKeyPolicy] The unique key policy configuration for specifying uniqueness constraints on documents in the collection in the Azure Cosmos DB service.
  const GetDatabaseAccountGremlinGraphResult({
    required this.azureApiVersion,
    this.conflictResolutionPolicy,
    this.defaultTtl,
    this.etag,
    required this.id,
    this.indexingPolicy,
    this.location,
    required this.name,
    this.partitionKey,
    this.rid,
    this.tags,
    this.ts,
    required this.type,
    this.uniqueKeyPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'conflictResolutionPolicy': ?conflictResolutionPolicy?.toMap(),
      'defaultTtl': ?defaultTtl,
      'etag': ?etag,
      'id': id,
      'indexingPolicy': ?indexingPolicy?.toMap(),
      'location': ?location,
      'name': name,
      'partitionKey': ?partitionKey?.toMap(),
      'rid': ?rid,
      'tags': ?tags,
      'ts': ?ts,
      'type': type,
      'uniqueKeyPolicy': ?uniqueKeyPolicy?.toMap(),
    };
  }

  factory GetDatabaseAccountGremlinGraphResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseAccountGremlinGraphResult(
      azureApiVersion: map['azureApiVersion'] as String,
      conflictResolutionPolicy: (() { final guardedValue = map['conflictResolutionPolicy']; if (guardedValue == null) return null; return ConflictResolutionPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      defaultTtl: (() { final guardedValue = map['defaultTtl']; if (guardedValue == null) return null; return guardedValue as int; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      indexingPolicy: (() { final guardedValue = map['indexingPolicy']; if (guardedValue == null) return null; return IndexingPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      partitionKey: (() { final guardedValue = map['partitionKey']; if (guardedValue == null) return null; return ContainerPartitionKeyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      rid: (() { final guardedValue = map['rid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      ts: (() { final guardedValue = map['ts']; if (guardedValue == null) return null; return guardedValue; })(),
      type: map['type'] as String,
      uniqueKeyPolicy: (() { final guardedValue = map['uniqueKeyPolicy']; if (guardedValue == null) return null; return UniqueKeyPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

