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
  final pulumi.Input<double>? analyticalStorageTtl;

  /// The client encryption policy for the container.
  final pulumi.Input<ClientEncryptionPolicy>? clientEncryptionPolicy;

  /// List of computed properties
  final pulumi.Input<List<ComputedProperty>>? computedProperties;

  /// The conflict resolution policy for the container.
  final pulumi.Input<ConflictResolutionPolicy>? conflictResolutionPolicy;

  /// Enum to indicate the mode of resource creation.
  final pulumi.Input<String>? createMode;

  /// Default time to live
  final pulumi.Input<int>? defaultTtl;

  /// The FullText policy for the container.
  final pulumi.Input<FullTextPolicy>? fullTextPolicy;

  /// Name of the Cosmos DB SQL container
  final pulumi.Input<String> id;

  /// The configuration of the indexing policy. By default, the indexing is automatic for all document paths within the container
  final pulumi.Input<IndexingPolicy>? indexingPolicy;

  /// The configuration of the partition key to be used for partitioning data into multiple partitions
  final pulumi.Input<ContainerPartitionKey>? partitionKey;

  /// Parameters to indicate the information about the restore
  final pulumi.Input<ResourceRestoreParameters>? restoreParameters;

  /// The unique key policy configuration for specifying uniqueness constraints on documents in the collection in the Azure Cosmos DB service.
  final pulumi.Input<UniqueKeyPolicy>? uniqueKeyPolicy;

  /// The vector embedding policy for the container.
  final pulumi.Input<VectorEmbeddingPolicy>? vectorEmbeddingPolicy;

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
      'clientEncryptionPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            ClientEncryptionPolicy,
            Map<String, dynamic>
          >(clientEncryptionPolicy, (value) => value.toMap()),
      'computedProperties':
          ?pulumi.Input.mapOptionalInputValue<
            List<ComputedProperty>,
            List<Map<String, dynamic>>
          >(
            computedProperties,
            (value) =>
                pulumi.Input.encodeList<ComputedProperty, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'conflictResolutionPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            ConflictResolutionPolicy,
            Map<String, dynamic>
          >(conflictResolutionPolicy, (value) => value.toMap()),
      'createMode': ?createMode,
      'defaultTtl': ?defaultTtl,
      'fullTextPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            FullTextPolicy,
            Map<String, dynamic>
          >(fullTextPolicy, (value) => value.toMap()),
      'id': id,
      'indexingPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            IndexingPolicy,
            Map<String, dynamic>
          >(indexingPolicy, (value) => value.toMap()),
      'partitionKey':
          ?pulumi.Input.mapOptionalInputValue<
            ContainerPartitionKey,
            Map<String, dynamic>
          >(partitionKey, (value) => value.toMap()),
      'restoreParameters':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceRestoreParameters,
            Map<String, dynamic>
          >(restoreParameters, (value) => value.toMap()),
      'uniqueKeyPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            UniqueKeyPolicy,
            Map<String, dynamic>
          >(uniqueKeyPolicy, (value) => value.toMap()),
      'vectorEmbeddingPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            VectorEmbeddingPolicy,
            Map<String, dynamic>
          >(vectorEmbeddingPolicy, (value) => value.toMap()),
    };
  }

  factory SqlContainerResource.fromMap(Map<String, dynamic> map) {
    return SqlContainerResource(
      analyticalStorageTtl: (() {
        final guardedValue = map['analyticalStorageTtl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      clientEncryptionPolicy: (() {
        final guardedValue = map['clientEncryptionPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClientEncryptionPolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      computedProperties: (() {
        final guardedValue = map['computedProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ComputedProperty>(
            guardedValue,
            (value) => ComputedProperty.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      conflictResolutionPolicy: (() {
        final guardedValue = map['conflictResolutionPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConflictResolutionPolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      createMode: (() {
        final guardedValue = map['createMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultTtl: (() {
        final guardedValue = map['defaultTtl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      fullTextPolicy: (() {
        final guardedValue = map['fullTextPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FullTextPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      indexingPolicy: (() {
        final guardedValue = map['indexingPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IndexingPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      partitionKey: (() {
        final guardedValue = map['partitionKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ContainerPartitionKey.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      restoreParameters: (() {
        final guardedValue = map['restoreParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceRestoreParameters.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      uniqueKeyPolicy: (() {
        final guardedValue = map['uniqueKeyPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          UniqueKeyPolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      vectorEmbeddingPolicy: (() {
        final guardedValue = map['vectorEmbeddingPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VectorEmbeddingPolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
