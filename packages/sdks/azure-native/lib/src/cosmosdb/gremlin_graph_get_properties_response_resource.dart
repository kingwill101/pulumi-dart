// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conflict_resolution_policy_response.dart';
import 'container_partition_key_response.dart';
import 'indexing_policy_response.dart';
import 'resource_restore_parameters_response.dart';
import 'unique_key_policy_response.dart';

class GremlinGraphGetPropertiesResponseResource {
  /// Analytical TTL.
  final pulumi.Input<double>? analyticalStorageTtl;
  /// The conflict resolution policy for the graph.
  final pulumi.Input<ConflictResolutionPolicyResponse>? conflictResolutionPolicy;
  /// Enum to indicate the mode of resource creation.
  final pulumi.Input<String>? createMode;
  /// Default time to live
  final pulumi.Input<int>? defaultTtl;
  /// A system generated property representing the resource etag required for optimistic concurrency control.
  final pulumi.Input<String> etag;
  /// Name of the Cosmos DB Gremlin graph
  final pulumi.Input<String> id;
  /// The configuration of the indexing policy. By default, the indexing is automatic for all document paths within the graph
  final pulumi.Input<IndexingPolicyResponse>? indexingPolicy;
  /// The configuration of the partition key to be used for partitioning data into multiple partitions
  final pulumi.Input<ContainerPartitionKeyResponse>? partitionKey;
  /// Parameters to indicate the information about the restore
  final pulumi.Input<ResourceRestoreParametersResponse>? restoreParameters;
  /// A system generated property. A unique identifier.
  final pulumi.Input<String> rid;
  /// A system generated property that denotes the last updated timestamp of the resource.
  final pulumi.Input<double> ts;
  /// The unique key policy configuration for specifying uniqueness constraints on documents in the collection in the Azure Cosmos DB service.
  final pulumi.Input<UniqueKeyPolicyResponse>? uniqueKeyPolicy;

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
      'conflictResolutionPolicy': ?pulumi.Input.mapOptionalInputValue<ConflictResolutionPolicyResponse, Map<String, dynamic>>(conflictResolutionPolicy, (value) => value.toMap()),
      'createMode': ?createMode,
      'defaultTtl': ?defaultTtl,
      'etag': etag,
      'id': id,
      'indexingPolicy': ?pulumi.Input.mapOptionalInputValue<IndexingPolicyResponse, Map<String, dynamic>>(indexingPolicy, (value) => value.toMap()),
      'partitionKey': ?pulumi.Input.mapOptionalInputValue<ContainerPartitionKeyResponse, Map<String, dynamic>>(partitionKey, (value) => value.toMap()),
      'restoreParameters': ?pulumi.Input.mapOptionalInputValue<ResourceRestoreParametersResponse, Map<String, dynamic>>(restoreParameters, (value) => value.toMap()),
      'rid': rid,
      'ts': ts,
      'uniqueKeyPolicy': ?pulumi.Input.mapOptionalInputValue<UniqueKeyPolicyResponse, Map<String, dynamic>>(uniqueKeyPolicy, (value) => value.toMap()),
    };
  }

  factory GremlinGraphGetPropertiesResponseResource.fromMap(Map<String, dynamic> map) {
    return GremlinGraphGetPropertiesResponseResource(
      analyticalStorageTtl: map['analyticalStorageTtl'] == null ? null : (map['analyticalStorageTtl']! as double).input(),
      conflictResolutionPolicy: map['conflictResolutionPolicy'] == null ? null : (ConflictResolutionPolicyResponse.fromMap((map['conflictResolutionPolicy']! as Map).cast<String, dynamic>())).input(),
      createMode: map['createMode'] == null ? null : (map['createMode']! as String).input(),
      defaultTtl: map['defaultTtl'] == null ? null : (map['defaultTtl']! as int).input(),
      etag: (map['etag'] as String).input(),
      id: (map['id'] as String).input(),
      indexingPolicy: map['indexingPolicy'] == null ? null : (IndexingPolicyResponse.fromMap((map['indexingPolicy']! as Map).cast<String, dynamic>())).input(),
      partitionKey: map['partitionKey'] == null ? null : (ContainerPartitionKeyResponse.fromMap((map['partitionKey']! as Map).cast<String, dynamic>())).input(),
      restoreParameters: map['restoreParameters'] == null ? null : (ResourceRestoreParametersResponse.fromMap((map['restoreParameters']! as Map).cast<String, dynamic>())).input(),
      rid: (map['rid'] as String).input(),
      ts: (map['ts'] as double).input(),
      uniqueKeyPolicy: map['uniqueKeyPolicy'] == null ? null : (UniqueKeyPolicyResponse.fromMap((map['uniqueKeyPolicy']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

