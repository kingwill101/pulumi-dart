// ignore_for_file: unused_element, unnecessary_cast

import 'conflict_resolution_policy_response.dart';
import 'container_partition_key_response.dart';
import 'indexing_policy_response.dart';
import 'resource_restore_parameters_response.dart';
import 'unique_key_policy_response.dart';

class GremlinGraphGetPropertiesResponseResource {
  /// Analytical TTL.
  final double? analyticalStorageTtl;
  /// The conflict resolution policy for the graph.
  final ConflictResolutionPolicyResponse? conflictResolutionPolicy;
  /// Enum to indicate the mode of resource creation.
  final String? createMode;
  /// Default time to live
  final int? defaultTtl;
  /// A system generated property representing the resource etag required for optimistic concurrency control.
  final String etag;
  /// Name of the Cosmos DB Gremlin graph
  final String id;
  /// The configuration of the indexing policy. By default, the indexing is automatic for all document paths within the graph
  final IndexingPolicyResponse? indexingPolicy;
  /// The configuration of the partition key to be used for partitioning data into multiple partitions
  final ContainerPartitionKeyResponse? partitionKey;
  /// Parameters to indicate the information about the restore
  final ResourceRestoreParametersResponse? restoreParameters;
  /// A system generated property. A unique identifier.
  final String rid;
  /// A system generated property that denotes the last updated timestamp of the resource.
  final double ts;
  /// The unique key policy configuration for specifying uniqueness constraints on documents in the collection in the Azure Cosmos DB service.
  final UniqueKeyPolicyResponse? uniqueKeyPolicy;

  /// Creates a new [GremlinGraphGetPropertiesResponseResource].
  /// [analyticalStorageTtl] Analytical TTL.
  /// [conflictResolutionPolicy] The conflict resolution policy for the graph.
  /// [createMode] Enum to indicate the mode of resource creation.
  /// [defaultTtl] Default time to live
  /// [etag] A system generated property representing the resource etag required for optimistic concurrency control.
  /// [id] Name of the Cosmos DB Gremlin graph
  /// [indexingPolicy] The configuration of the indexing policy. By default, the indexing is automatic for all document paths within the graph
  /// [partitionKey] The configuration of the partition key to be used for partitioning data into multiple partitions
  /// [restoreParameters] Parameters to indicate the information about the restore
  /// [rid] A system generated property. A unique identifier.
  /// [ts] A system generated property that denotes the last updated timestamp of the resource.
  /// [uniqueKeyPolicy] The unique key policy configuration for specifying uniqueness constraints on documents in the collection in the Azure Cosmos DB service.
  GremlinGraphGetPropertiesResponseResource({
    this.analyticalStorageTtl,
    this.conflictResolutionPolicy,
    this.createMode,
    this.defaultTtl,
    required this.etag,
    required this.id,
    this.indexingPolicy,
    this.partitionKey,
    this.restoreParameters,
    required this.rid,
    required this.ts,
    this.uniqueKeyPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analyticalStorageTtl': ?analyticalStorageTtl,
      'conflictResolutionPolicy': ?conflictResolutionPolicy == null ? null : conflictResolutionPolicy!.toMap(),
      'createMode': ?createMode,
      'defaultTtl': ?defaultTtl,
      'etag': etag,
      'id': id,
      'indexingPolicy': ?indexingPolicy == null ? null : indexingPolicy!.toMap(),
      'partitionKey': ?partitionKey == null ? null : partitionKey!.toMap(),
      'restoreParameters': ?restoreParameters == null ? null : restoreParameters!.toMap(),
      'rid': rid,
      'ts': ts,
      'uniqueKeyPolicy': ?uniqueKeyPolicy == null ? null : uniqueKeyPolicy!.toMap(),
    };
  }

  factory GremlinGraphGetPropertiesResponseResource.fromMap(Map<String, dynamic> map) {
    return GremlinGraphGetPropertiesResponseResource(
      analyticalStorageTtl: map['analyticalStorageTtl'] == null ? null : map['analyticalStorageTtl'] as double,
      conflictResolutionPolicy: map['conflictResolutionPolicy'] == null ? null : ConflictResolutionPolicyResponse.fromMap((map['conflictResolutionPolicy'] as Map).cast<String, dynamic>()),
      createMode: map['createMode'] == null ? null : map['createMode'] as String,
      defaultTtl: map['defaultTtl'] == null ? null : map['defaultTtl'] as int,
      etag: map['etag'] as String,
      id: map['id'] as String,
      indexingPolicy: map['indexingPolicy'] == null ? null : IndexingPolicyResponse.fromMap((map['indexingPolicy'] as Map).cast<String, dynamic>()),
      partitionKey: map['partitionKey'] == null ? null : ContainerPartitionKeyResponse.fromMap((map['partitionKey'] as Map).cast<String, dynamic>()),
      restoreParameters: map['restoreParameters'] == null ? null : ResourceRestoreParametersResponse.fromMap((map['restoreParameters'] as Map).cast<String, dynamic>()),
      rid: map['rid'] as String,
      ts: map['ts'] as double,
      uniqueKeyPolicy: map['uniqueKeyPolicy'] == null ? null : UniqueKeyPolicyResponse.fromMap((map['uniqueKeyPolicy'] as Map).cast<String, dynamic>()),
    );
  }
}

