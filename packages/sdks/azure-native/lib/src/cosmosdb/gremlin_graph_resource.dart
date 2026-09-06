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
  final pulumi.Input<double?>? analyticalStorageTtl;
  /// The conflict resolution policy for the graph.
  final pulumi.Input<ConflictResolutionPolicy?>? conflictResolutionPolicy;
  /// Enum to indicate the mode of resource creation.
  final pulumi.Input<dynamic>? createMode;
  /// Default time to live
  final pulumi.Input<int?>? defaultTtl;
  /// Name of the Cosmos DB Gremlin graph
  final pulumi.Input<String> id;
  /// The configuration of the indexing policy. By default, the indexing is automatic for all document paths within the graph
  final pulumi.Input<IndexingPolicy?>? indexingPolicy;
  /// The configuration of the partition key to be used for partitioning data into multiple partitions
  final pulumi.Input<ContainerPartitionKey?>? partitionKey;
  /// Parameters to indicate the information about the restore
  final pulumi.Input<ResourceRestoreParameters?>? restoreParameters;
  /// The unique key policy configuration for specifying uniqueness constraints on documents in the collection in the Azure Cosmos DB service.
  final pulumi.Input<UniqueKeyPolicy?>? uniqueKeyPolicy;

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
  const GremlinGraphResource({
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
      analyticalStorageTtl: (() { final guardedValue = map['analyticalStorageTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      conflictResolutionPolicy: (() { final guardedValue = map['conflictResolutionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConflictResolutionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createMode: (() { final guardedValue = map['createMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      defaultTtl: (() { final guardedValue = map['defaultTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      indexingPolicy: (() { final guardedValue = map['indexingPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IndexingPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      partitionKey: (() { final guardedValue = map['partitionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerPartitionKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      restoreParameters: (() { final guardedValue = map['restoreParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceRestoreParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      uniqueKeyPolicy: (() { final guardedValue = map['uniqueKeyPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UniqueKeyPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
