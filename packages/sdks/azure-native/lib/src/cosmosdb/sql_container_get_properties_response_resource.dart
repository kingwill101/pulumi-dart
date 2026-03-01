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
  final double? analyticalStorageTtl;
  /// The client encryption policy for the container.
  final ClientEncryptionPolicyResponse? clientEncryptionPolicy;
  /// List of computed properties
  final List<ComputedPropertyResponse>? computedProperties;
  /// The conflict resolution policy for the container.
  final ConflictResolutionPolicyResponse? conflictResolutionPolicy;
  /// Enum to indicate the mode of resource creation.
  final String? createMode;
  /// Default time to live
  final int? defaultTtl;
  /// A system generated property representing the resource etag required for optimistic concurrency control.
  final String etag;
  /// The FullText policy for the container.
  final FullTextPolicyResponse? fullTextPolicy;
  /// Name of the Cosmos DB SQL container
  final String id;
  /// The configuration of the indexing policy. By default, the indexing is automatic for all document paths within the container
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
  /// The vector embedding policy for the container.
  final VectorEmbeddingPolicyResponse? vectorEmbeddingPolicy;

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
      'clientEncryptionPolicy': ?clientEncryptionPolicy == null ? null : clientEncryptionPolicy!.toMap(),
      'computedProperties': ?computedProperties == null ? null : pulumi.Input.encodeList<ComputedPropertyResponse, Map<String, dynamic>>(computedProperties!, (value) => value.toMap()),
      'conflictResolutionPolicy': ?conflictResolutionPolicy == null ? null : conflictResolutionPolicy!.toMap(),
      'createMode': ?createMode,
      'defaultTtl': ?defaultTtl,
      'etag': etag,
      'fullTextPolicy': ?fullTextPolicy == null ? null : fullTextPolicy!.toMap(),
      'id': id,
      'indexingPolicy': ?indexingPolicy == null ? null : indexingPolicy!.toMap(),
      'partitionKey': ?partitionKey == null ? null : partitionKey!.toMap(),
      'restoreParameters': ?restoreParameters == null ? null : restoreParameters!.toMap(),
      'rid': rid,
      'ts': ts,
      'uniqueKeyPolicy': ?uniqueKeyPolicy == null ? null : uniqueKeyPolicy!.toMap(),
      'vectorEmbeddingPolicy': ?vectorEmbeddingPolicy == null ? null : vectorEmbeddingPolicy!.toMap(),
    };
  }

  factory SqlContainerGetPropertiesResponseResource.fromMap(Map<String, dynamic> map) {
    return SqlContainerGetPropertiesResponseResource(
      analyticalStorageTtl: map['analyticalStorageTtl'] == null ? null : map['analyticalStorageTtl'] as double,
      clientEncryptionPolicy: map['clientEncryptionPolicy'] == null ? null : ClientEncryptionPolicyResponse.fromMap((map['clientEncryptionPolicy'] as Map).cast<String, dynamic>()),
      computedProperties: map['computedProperties'] == null ? null : pulumi.Input.decodeList<ComputedPropertyResponse>(map['computedProperties'], (value) => ComputedPropertyResponse.fromMap((value as Map).cast<String, dynamic>())),
      conflictResolutionPolicy: map['conflictResolutionPolicy'] == null ? null : ConflictResolutionPolicyResponse.fromMap((map['conflictResolutionPolicy'] as Map).cast<String, dynamic>()),
      createMode: map['createMode'] == null ? null : map['createMode'] as String,
      defaultTtl: map['defaultTtl'] == null ? null : map['defaultTtl'] as int,
      etag: map['etag'] as String,
      fullTextPolicy: map['fullTextPolicy'] == null ? null : FullTextPolicyResponse.fromMap((map['fullTextPolicy'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      indexingPolicy: map['indexingPolicy'] == null ? null : IndexingPolicyResponse.fromMap((map['indexingPolicy'] as Map).cast<String, dynamic>()),
      partitionKey: map['partitionKey'] == null ? null : ContainerPartitionKeyResponse.fromMap((map['partitionKey'] as Map).cast<String, dynamic>()),
      restoreParameters: map['restoreParameters'] == null ? null : ResourceRestoreParametersResponse.fromMap((map['restoreParameters'] as Map).cast<String, dynamic>()),
      rid: map['rid'] as String,
      ts: map['ts'] as double,
      uniqueKeyPolicy: map['uniqueKeyPolicy'] == null ? null : UniqueKeyPolicyResponse.fromMap((map['uniqueKeyPolicy'] as Map).cast<String, dynamic>()),
      vectorEmbeddingPolicy: map['vectorEmbeddingPolicy'] == null ? null : VectorEmbeddingPolicyResponse.fromMap((map['vectorEmbeddingPolicy'] as Map).cast<String, dynamic>()),
    );
  }
}

