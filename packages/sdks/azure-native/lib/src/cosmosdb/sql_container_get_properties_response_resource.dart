// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_encryption_policy_response.dart';
import 'computed_property_response.dart';
import 'conflict_resolution_policy_response.dart';
import 'container_partition_key_response.dart';
import 'full_text_policy_response.dart';
import 'indexing_policy_response.dart';
import 'resource_restore_parameters_response.dart';
import 'unique_key_policy_response.dart';
import 'vector_embedding_policy_response.dart';

class SqlContainerGetPropertiesResponseResource {
  /// Analytical TTL.
  final pulumi.Input<double>? analyticalStorageTtl;
  /// The client encryption policy for the container.
  final pulumi.Input<ClientEncryptionPolicyResponse>? clientEncryptionPolicy;
  /// List of computed properties
  final pulumi.Input<List<ComputedPropertyResponse>>? computedProperties;
  /// The conflict resolution policy for the container.
  final pulumi.Input<ConflictResolutionPolicyResponse>? conflictResolutionPolicy;
  /// Enum to indicate the mode of resource creation.
  final pulumi.Input<String>? createMode;
  /// Default time to live
  final pulumi.Input<int>? defaultTtl;
  /// A system generated property representing the resource etag required for optimistic concurrency control.
  final pulumi.Input<String> etag;
  /// The FullText policy for the container.
  final pulumi.Input<FullTextPolicyResponse>? fullTextPolicy;
  /// Name of the Cosmos DB SQL container
  final pulumi.Input<String> id;
  /// The configuration of the indexing policy. By default, the indexing is automatic for all document paths within the container
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
  /// The vector embedding policy for the container.
  final pulumi.Input<VectorEmbeddingPolicyResponse>? vectorEmbeddingPolicy;

  /// Creates a new [SqlContainerGetPropertiesResponseResource].
  /// [analyticalStorageTtl] Analytical TTL.
  /// [clientEncryptionPolicy] The client encryption policy for the container.
  /// [computedProperties] List of computed properties
  /// [conflictResolutionPolicy] The conflict resolution policy for the container.
  /// [createMode] Enum to indicate the mode of resource creation.
  /// [defaultTtl] Default time to live
  /// [etag] A system generated property representing the resource etag required for optimistic concurrency control.
  /// [fullTextPolicy] The FullText policy for the container.
  /// [id] Name of the Cosmos DB SQL container
  /// [indexingPolicy] The configuration of the indexing policy. By default, the indexing is automatic for all document paths within the container
  /// [partitionKey] The configuration of the partition key to be used for partitioning data into multiple partitions
  /// [restoreParameters] Parameters to indicate the information about the restore
  /// [rid] A system generated property. A unique identifier.
  /// [ts] A system generated property that denotes the last updated timestamp of the resource.
  /// [uniqueKeyPolicy] The unique key policy configuration for specifying uniqueness constraints on documents in the collection in the Azure Cosmos DB service.
  /// [vectorEmbeddingPolicy] The vector embedding policy for the container.
  SqlContainerGetPropertiesResponseResource({
    this.analyticalStorageTtl,
    this.clientEncryptionPolicy,
    this.computedProperties,
    this.conflictResolutionPolicy,
    this.createMode,
    this.defaultTtl,
    required this.etag,
    this.fullTextPolicy,
    required this.id,
    this.indexingPolicy,
    this.partitionKey,
    this.restoreParameters,
    required this.rid,
    required this.ts,
    this.uniqueKeyPolicy,
    this.vectorEmbeddingPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analyticalStorageTtl': ?analyticalStorageTtl,
      'clientEncryptionPolicy': ?pulumi.Input.mapOptionalInputValue<ClientEncryptionPolicyResponse, Map<String, dynamic>>(clientEncryptionPolicy, (value) => value.toMap()),
      'computedProperties': ?pulumi.Input.mapOptionalInputValue<List<ComputedPropertyResponse>, List<Map<String, dynamic>>>(computedProperties, (value) => pulumi.Input.encodeList<ComputedPropertyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'conflictResolutionPolicy': ?pulumi.Input.mapOptionalInputValue<ConflictResolutionPolicyResponse, Map<String, dynamic>>(conflictResolutionPolicy, (value) => value.toMap()),
      'createMode': ?createMode,
      'defaultTtl': ?defaultTtl,
      'etag': etag,
      'fullTextPolicy': ?pulumi.Input.mapOptionalInputValue<FullTextPolicyResponse, Map<String, dynamic>>(fullTextPolicy, (value) => value.toMap()),
      'id': id,
      'indexingPolicy': ?pulumi.Input.mapOptionalInputValue<IndexingPolicyResponse, Map<String, dynamic>>(indexingPolicy, (value) => value.toMap()),
      'partitionKey': ?pulumi.Input.mapOptionalInputValue<ContainerPartitionKeyResponse, Map<String, dynamic>>(partitionKey, (value) => value.toMap()),
      'restoreParameters': ?pulumi.Input.mapOptionalInputValue<ResourceRestoreParametersResponse, Map<String, dynamic>>(restoreParameters, (value) => value.toMap()),
      'rid': rid,
      'ts': ts,
      'uniqueKeyPolicy': ?pulumi.Input.mapOptionalInputValue<UniqueKeyPolicyResponse, Map<String, dynamic>>(uniqueKeyPolicy, (value) => value.toMap()),
      'vectorEmbeddingPolicy': ?pulumi.Input.mapOptionalInputValue<VectorEmbeddingPolicyResponse, Map<String, dynamic>>(vectorEmbeddingPolicy, (value) => value.toMap()),
    };
  }

  factory SqlContainerGetPropertiesResponseResource.fromMap(Map<String, dynamic> map) {
    return SqlContainerGetPropertiesResponseResource(
      analyticalStorageTtl: map['analyticalStorageTtl'] == null ? null : (map['analyticalStorageTtl'] as double).input(),
      clientEncryptionPolicy: map['clientEncryptionPolicy'] == null ? null : (ClientEncryptionPolicyResponse.fromMap((map['clientEncryptionPolicy'] as Map).cast<String, dynamic>())).input(),
      computedProperties: map['computedProperties'] == null ? null : (pulumi.Input.decodeList<ComputedPropertyResponse>(map['computedProperties'], (value) => ComputedPropertyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      conflictResolutionPolicy: map['conflictResolutionPolicy'] == null ? null : (ConflictResolutionPolicyResponse.fromMap((map['conflictResolutionPolicy'] as Map).cast<String, dynamic>())).input(),
      createMode: map['createMode'] == null ? null : (map['createMode'] as String).input(),
      defaultTtl: map['defaultTtl'] == null ? null : (map['defaultTtl'] as int).input(),
      etag: (map['etag'] as String).input(),
      fullTextPolicy: map['fullTextPolicy'] == null ? null : (FullTextPolicyResponse.fromMap((map['fullTextPolicy'] as Map).cast<String, dynamic>())).input(),
      id: (map['id'] as String).input(),
      indexingPolicy: map['indexingPolicy'] == null ? null : (IndexingPolicyResponse.fromMap((map['indexingPolicy'] as Map).cast<String, dynamic>())).input(),
      partitionKey: map['partitionKey'] == null ? null : (ContainerPartitionKeyResponse.fromMap((map['partitionKey'] as Map).cast<String, dynamic>())).input(),
      restoreParameters: map['restoreParameters'] == null ? null : (ResourceRestoreParametersResponse.fromMap((map['restoreParameters'] as Map).cast<String, dynamic>())).input(),
      rid: (map['rid'] as String).input(),
      ts: (map['ts'] as double).input(),
      uniqueKeyPolicy: map['uniqueKeyPolicy'] == null ? null : (UniqueKeyPolicyResponse.fromMap((map['uniqueKeyPolicy'] as Map).cast<String, dynamic>())).input(),
      vectorEmbeddingPolicy: map['vectorEmbeddingPolicy'] == null ? null : (VectorEmbeddingPolicyResponse.fromMap((map['vectorEmbeddingPolicy'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

