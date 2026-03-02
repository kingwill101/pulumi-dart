// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conflict_resolution_policy.dart';
import 'container_partition_key.dart';
import 'indexing_policy.dart';
import 'resource_restore_parameters.dart';
import 'unique_key_policy.dart';

/// Cosmos DB Gremlin graph resource object
class GremlinGraphResource {
  /// Analytical TTL.
  final pulumi.Input<double>? analyticalStorageTtl;
  /// The conflict resolution policy for the graph.
  final pulumi.Input<ConflictResolutionPolicy>? conflictResolutionPolicy;
  /// Enum to indicate the mode of resource creation.
  final pulumi.Input<String>? createMode;
  /// Default time to live
  final pulumi.Input<int>? defaultTtl;
  /// Name of the Cosmos DB Gremlin graph
  final pulumi.Input<String> id;
  /// The configuration of the indexing policy. By default, the indexing is automatic for all document paths within the graph
  final pulumi.Input<IndexingPolicy>? indexingPolicy;
  /// The configuration of the partition key to be used for partitioning data into multiple partitions
  final pulumi.Input<ContainerPartitionKey>? partitionKey;
  /// Parameters to indicate the information about the restore
  final pulumi.Input<ResourceRestoreParameters>? restoreParameters;
  /// The unique key policy configuration for specifying uniqueness constraints on documents in the collection in the Azure Cosmos DB service.
  final pulumi.Input<UniqueKeyPolicy>? uniqueKeyPolicy;

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
      'conflictResolutionPolicy': ?pulumi.Input.mapOptionalInputValue<ConflictResolutionPolicy, Map<String, dynamic>>(conflictResolutionPolicy, (value) => value.toMap()),
      'createMode': ?createMode,
      'defaultTtl': ?defaultTtl,
      'id': id,
      'indexingPolicy': ?pulumi.Input.mapOptionalInputValue<IndexingPolicy, Map<String, dynamic>>(indexingPolicy, (value) => value.toMap()),
      'partitionKey': ?pulumi.Input.mapOptionalInputValue<ContainerPartitionKey, Map<String, dynamic>>(partitionKey, (value) => value.toMap()),
      'restoreParameters': ?pulumi.Input.mapOptionalInputValue<ResourceRestoreParameters, Map<String, dynamic>>(restoreParameters, (value) => value.toMap()),
      'uniqueKeyPolicy': ?pulumi.Input.mapOptionalInputValue<UniqueKeyPolicy, Map<String, dynamic>>(uniqueKeyPolicy, (value) => value.toMap()),
    };
  }

  factory GremlinGraphResource.fromMap(Map<String, dynamic> map) {
    return GremlinGraphResource(
      analyticalStorageTtl: map['analyticalStorageTtl'] == null ? null : (map['analyticalStorageTtl']! as double).input(),
      conflictResolutionPolicy: map['conflictResolutionPolicy'] == null ? null : (ConflictResolutionPolicy.fromMap((map['conflictResolutionPolicy']! as Map).cast<String, dynamic>())).input(),
      createMode: map['createMode'] == null ? null : (map['createMode']! as String).input(),
      defaultTtl: map['defaultTtl'] == null ? null : (map['defaultTtl']! as int).input(),
      id: (map['id'] as String).input(),
      indexingPolicy: map['indexingPolicy'] == null ? null : (IndexingPolicy.fromMap((map['indexingPolicy']! as Map).cast<String, dynamic>())).input(),
      partitionKey: map['partitionKey'] == null ? null : (ContainerPartitionKey.fromMap((map['partitionKey']! as Map).cast<String, dynamic>())).input(),
      restoreParameters: map['restoreParameters'] == null ? null : (ResourceRestoreParameters.fromMap((map['restoreParameters']! as Map).cast<String, dynamic>())).input(),
      uniqueKeyPolicy: map['uniqueKeyPolicy'] == null ? null : (UniqueKeyPolicy.fromMap((map['uniqueKeyPolicy']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

