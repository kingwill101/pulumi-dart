// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_encryption_policy.dart';
import 'computed_property.dart';
import 'conflict_resolution_policy.dart';
import 'container_partition_key.dart';
import 'full_text_policy.dart';
import 'indexing_policy.dart';
import 'resource_restore_parameters.dart';
import 'unique_key_policy.dart';
import 'vector_embedding_policy.dart';

/// Cosmos DB SQL container resource object
class SqlContainerResource {
  /// Analytical TTL.
  final double? analyticalStorageTtl;
  /// The client encryption policy for the container.
  final ClientEncryptionPolicy? clientEncryptionPolicy;
  /// List of computed properties
  final List<ComputedProperty>? computedProperties;
  /// The conflict resolution policy for the container.
  final ConflictResolutionPolicy? conflictResolutionPolicy;
  /// Enum to indicate the mode of resource creation.
  final String? createMode;
  /// Default time to live
  final int? defaultTtl;
  /// The FullText policy for the container.
  final FullTextPolicy? fullTextPolicy;
  /// Name of the Cosmos DB SQL container
  final String id;
  /// The configuration of the indexing policy. By default, the indexing is automatic for all document paths within the container
  final IndexingPolicy? indexingPolicy;
  /// The configuration of the partition key to be used for partitioning data into multiple partitions
  final ContainerPartitionKey? partitionKey;
  /// Parameters to indicate the information about the restore
  final ResourceRestoreParameters? restoreParameters;
  /// The unique key policy configuration for specifying uniqueness constraints on documents in the collection in the Azure Cosmos DB service.
  final UniqueKeyPolicy? uniqueKeyPolicy;
  /// The vector embedding policy for the container.
  final VectorEmbeddingPolicy? vectorEmbeddingPolicy;

  /// Creates a new [SqlContainerResource].
  /// [analyticalStorageTtl] Analytical TTL.
  /// [clientEncryptionPolicy] The client encryption policy for the container.
  /// [computedProperties] List of computed properties
  /// [conflictResolutionPolicy] The conflict resolution policy for the container.
  /// [createMode] Enum to indicate the mode of resource creation.
  /// [defaultTtl] Default time to live
  /// [fullTextPolicy] The FullText policy for the container.
  /// [id] Name of the Cosmos DB SQL container
  /// [indexingPolicy] The configuration of the indexing policy. By default, the indexing is automatic for all document paths within the container
  /// [partitionKey] The configuration of the partition key to be used for partitioning data into multiple partitions
  /// [restoreParameters] Parameters to indicate the information about the restore
  /// [uniqueKeyPolicy] The unique key policy configuration for specifying uniqueness constraints on documents in the collection in the Azure Cosmos DB service.
  /// [vectorEmbeddingPolicy] The vector embedding policy for the container.
  SqlContainerResource({
    this.analyticalStorageTtl,
    this.clientEncryptionPolicy,
    this.computedProperties,
    this.conflictResolutionPolicy,
    this.createMode,
    this.defaultTtl,
    this.fullTextPolicy,
    required this.id,
    this.indexingPolicy,
    this.partitionKey,
    this.restoreParameters,
    this.uniqueKeyPolicy,
    this.vectorEmbeddingPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analyticalStorageTtl': ?analyticalStorageTtl,
      'clientEncryptionPolicy': ?clientEncryptionPolicy == null ? null : clientEncryptionPolicy!.toMap(),
      'computedProperties': ?computedProperties == null ? null : pulumi.Input.encodeList<ComputedProperty, Map<String, dynamic>>(computedProperties!, (value) => value.toMap()),
      'conflictResolutionPolicy': ?conflictResolutionPolicy == null ? null : conflictResolutionPolicy!.toMap(),
      'createMode': ?createMode,
      'defaultTtl': ?defaultTtl,
      'fullTextPolicy': ?fullTextPolicy == null ? null : fullTextPolicy!.toMap(),
      'id': id,
      'indexingPolicy': ?indexingPolicy == null ? null : indexingPolicy!.toMap(),
      'partitionKey': ?partitionKey == null ? null : partitionKey!.toMap(),
      'restoreParameters': ?restoreParameters == null ? null : restoreParameters!.toMap(),
      'uniqueKeyPolicy': ?uniqueKeyPolicy == null ? null : uniqueKeyPolicy!.toMap(),
      'vectorEmbeddingPolicy': ?vectorEmbeddingPolicy == null ? null : vectorEmbeddingPolicy!.toMap(),
    };
  }

  factory SqlContainerResource.fromMap(Map<String, dynamic> map) {
    return SqlContainerResource(
      analyticalStorageTtl: map['analyticalStorageTtl'] == null ? null : map['analyticalStorageTtl'] as double,
      clientEncryptionPolicy: map['clientEncryptionPolicy'] == null ? null : ClientEncryptionPolicy.fromMap((map['clientEncryptionPolicy'] as Map).cast<String, dynamic>()),
      computedProperties: map['computedProperties'] == null ? null : pulumi.Input.decodeList<ComputedProperty>(map['computedProperties'], (value) => ComputedProperty.fromMap((value as Map).cast<String, dynamic>())),
      conflictResolutionPolicy: map['conflictResolutionPolicy'] == null ? null : ConflictResolutionPolicy.fromMap((map['conflictResolutionPolicy'] as Map).cast<String, dynamic>()),
      createMode: map['createMode'] == null ? null : map['createMode'] as String,
      defaultTtl: map['defaultTtl'] == null ? null : map['defaultTtl'] as int,
      fullTextPolicy: map['fullTextPolicy'] == null ? null : FullTextPolicy.fromMap((map['fullTextPolicy'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      indexingPolicy: map['indexingPolicy'] == null ? null : IndexingPolicy.fromMap((map['indexingPolicy'] as Map).cast<String, dynamic>()),
      partitionKey: map['partitionKey'] == null ? null : ContainerPartitionKey.fromMap((map['partitionKey'] as Map).cast<String, dynamic>()),
      restoreParameters: map['restoreParameters'] == null ? null : ResourceRestoreParameters.fromMap((map['restoreParameters'] as Map).cast<String, dynamic>()),
      uniqueKeyPolicy: map['uniqueKeyPolicy'] == null ? null : UniqueKeyPolicy.fromMap((map['uniqueKeyPolicy'] as Map).cast<String, dynamic>()),
      vectorEmbeddingPolicy: map['vectorEmbeddingPolicy'] == null ? null : VectorEmbeddingPolicy.fromMap((map['vectorEmbeddingPolicy'] as Map).cast<String, dynamic>()),
    );
  }
}

