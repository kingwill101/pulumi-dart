// ignore_for_file: unused_element, unnecessary_cast

import 'conflict_resolution_policy.dart';
import 'container_partition_key.dart';
import 'indexing_policy.dart';
import 'resource_restore_parameters.dart';
import 'unique_key_policy.dart';

/// Cosmos DB Gremlin graph resource object
class GremlinGraphResource {
  /// Analytical TTL.
  final double? analyticalStorageTtl;
  /// The conflict resolution policy for the graph.
  final ConflictResolutionPolicy? conflictResolutionPolicy;
  /// Enum to indicate the mode of resource creation.
  final String? createMode;
  /// Default time to live
  final int? defaultTtl;
  /// Name of the Cosmos DB Gremlin graph
  final String id;
  /// The configuration of the indexing policy. By default, the indexing is automatic for all document paths within the graph
  final IndexingPolicy? indexingPolicy;
  /// The configuration of the partition key to be used for partitioning data into multiple partitions
  final ContainerPartitionKey? partitionKey;
  /// Parameters to indicate the information about the restore
  final ResourceRestoreParameters? restoreParameters;
  /// The unique key policy configuration for specifying uniqueness constraints on documents in the collection in the Azure Cosmos DB service.
  final UniqueKeyPolicy? uniqueKeyPolicy;

  /// Creates a new [GremlinGraphResource].
  /// [analyticalStorageTtl] Analytical TTL.
  /// [conflictResolutionPolicy] The conflict resolution policy for the graph.
  /// [createMode] Enum to indicate the mode of resource creation.
  /// [defaultTtl] Default time to live
  /// [id] Name of the Cosmos DB Gremlin graph
  /// [indexingPolicy] The configuration of the indexing policy. By default, the indexing is automatic for all document paths within the graph
  /// [partitionKey] The configuration of the partition key to be used for partitioning data into multiple partitions
  /// [restoreParameters] Parameters to indicate the information about the restore
  /// [uniqueKeyPolicy] The unique key policy configuration for specifying uniqueness constraints on documents in the collection in the Azure Cosmos DB service.
  GremlinGraphResource({
    this.analyticalStorageTtl,
    this.conflictResolutionPolicy,
    this.createMode,
    this.defaultTtl,
    required this.id,
    this.indexingPolicy,
    this.partitionKey,
    this.restoreParameters,
    this.uniqueKeyPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analyticalStorageTtl': ?analyticalStorageTtl,
      'conflictResolutionPolicy': ?conflictResolutionPolicy == null ? null : conflictResolutionPolicy!.toMap(),
      'createMode': ?createMode,
      'defaultTtl': ?defaultTtl,
      'id': id,
      'indexingPolicy': ?indexingPolicy == null ? null : indexingPolicy!.toMap(),
      'partitionKey': ?partitionKey == null ? null : partitionKey!.toMap(),
      'restoreParameters': ?restoreParameters == null ? null : restoreParameters!.toMap(),
      'uniqueKeyPolicy': ?uniqueKeyPolicy == null ? null : uniqueKeyPolicy!.toMap(),
    };
  }

  factory GremlinGraphResource.fromMap(Map<String, dynamic> map) {
    return GremlinGraphResource(
      analyticalStorageTtl: map['analyticalStorageTtl'] == null ? null : map['analyticalStorageTtl'] as double,
      conflictResolutionPolicy: map['conflictResolutionPolicy'] == null ? null : ConflictResolutionPolicy.fromMap((map['conflictResolutionPolicy'] as Map).cast<String, dynamic>()),
      createMode: map['createMode'] == null ? null : map['createMode'] as String,
      defaultTtl: map['defaultTtl'] == null ? null : map['defaultTtl'] as int,
      id: map['id'] as String,
      indexingPolicy: map['indexingPolicy'] == null ? null : IndexingPolicy.fromMap((map['indexingPolicy'] as Map).cast<String, dynamic>()),
      partitionKey: map['partitionKey'] == null ? null : ContainerPartitionKey.fromMap((map['partitionKey'] as Map).cast<String, dynamic>()),
      restoreParameters: map['restoreParameters'] == null ? null : ResourceRestoreParameters.fromMap((map['restoreParameters'] as Map).cast<String, dynamic>()),
      uniqueKeyPolicy: map['uniqueKeyPolicy'] == null ? null : UniqueKeyPolicy.fromMap((map['uniqueKeyPolicy'] as Map).cast<String, dynamic>()),
    );
  }
}

