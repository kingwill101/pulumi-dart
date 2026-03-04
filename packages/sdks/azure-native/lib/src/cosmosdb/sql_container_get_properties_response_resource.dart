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
  final pulumi.Input<ConflictResolutionPolicyResponse>?
  conflictResolutionPolicy;

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
      'clientEncryptionPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            ClientEncryptionPolicyResponse,
            Map<String, dynamic>
          >(clientEncryptionPolicy, (value) => value.toMap()),
      'computedProperties':
          ?pulumi.Input.mapOptionalInputValue<
            List<ComputedPropertyResponse>,
            List<Map<String, dynamic>>
          >(
            computedProperties,
            (value) =>
                pulumi.Input.encodeList<
                  ComputedPropertyResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'conflictResolutionPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            ConflictResolutionPolicyResponse,
            Map<String, dynamic>
          >(conflictResolutionPolicy, (value) => value.toMap()),
      'createMode': ?createMode,
      'defaultTtl': ?defaultTtl,
      'etag': etag,
      'fullTextPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            FullTextPolicyResponse,
            Map<String, dynamic>
          >(fullTextPolicy, (value) => value.toMap()),
      'id': id,
      'indexingPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            IndexingPolicyResponse,
            Map<String, dynamic>
          >(indexingPolicy, (value) => value.toMap()),
      'partitionKey':
          ?pulumi.Input.mapOptionalInputValue<
            ContainerPartitionKeyResponse,
            Map<String, dynamic>
          >(partitionKey, (value) => value.toMap()),
      'restoreParameters':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceRestoreParametersResponse,
            Map<String, dynamic>
          >(restoreParameters, (value) => value.toMap()),
      'rid': rid,
      'ts': ts,
      'uniqueKeyPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            UniqueKeyPolicyResponse,
            Map<String, dynamic>
          >(uniqueKeyPolicy, (value) => value.toMap()),
      'vectorEmbeddingPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            VectorEmbeddingPolicyResponse,
            Map<String, dynamic>
          >(vectorEmbeddingPolicy, (value) => value.toMap()),
    };
  }

  factory SqlContainerGetPropertiesResponseResource.fromMap(
    Map<String, dynamic> map,
  ) {
    return SqlContainerGetPropertiesResponseResource(
      analyticalStorageTtl: (() {
        final guardedValue = map['analyticalStorageTtl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      clientEncryptionPolicy: (() {
        final guardedValue = map['clientEncryptionPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClientEncryptionPolicyResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      computedProperties: (() {
        final guardedValue = map['computedProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ComputedPropertyResponse>(
            guardedValue,
            (value) => ComputedPropertyResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      conflictResolutionPolicy: (() {
        final guardedValue = map['conflictResolutionPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConflictResolutionPolicyResponse.fromMap(
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
      etag: pulumi.Input.fromValue(map['etag'] as String),
      fullTextPolicy: (() {
        final guardedValue = map['fullTextPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FullTextPolicyResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      indexingPolicy: (() {
        final guardedValue = map['indexingPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IndexingPolicyResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      partitionKey: (() {
        final guardedValue = map['partitionKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ContainerPartitionKeyResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      restoreParameters: (() {
        final guardedValue = map['restoreParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceRestoreParametersResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      rid: pulumi.Input.fromValue(map['rid'] as String),
      ts: pulumi.Input.fromValue(map['ts'] as double),
      uniqueKeyPolicy: (() {
        final guardedValue = map['uniqueKeyPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          UniqueKeyPolicyResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      vectorEmbeddingPolicy: (() {
        final guardedValue = map['vectorEmbeddingPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VectorEmbeddingPolicyResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
