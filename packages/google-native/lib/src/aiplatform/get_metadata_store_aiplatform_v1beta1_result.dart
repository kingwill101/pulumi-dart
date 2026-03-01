// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_encryption_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_metadata_store_metadata_store_state_response.dart';

/// Result data returned by getMetadataStore.
class GetMetadataStoreAiplatformV1beta1Result {
  /// Timestamp when this MetadataStore was created.
  final String createTime;

  /// Description of the MetadataStore.
  final String description;

  /// Customer-managed encryption key spec for a Metadata Store. If set, this Metadata Store and all sub-resources of this Metadata Store are secured using this key.
  final GoogleCloudAiplatformV1beta1EncryptionSpecResponse encryptionSpec;

  /// The resource name of the MetadataStore instance.
  final String name;

  /// State information of the MetadataStore.
  final GoogleCloudAiplatformV1beta1MetadataStoreMetadataStoreStateResponse
  state;

  /// Timestamp when this MetadataStore was last updated.
  final String updateTime;

  /// Creates a new [GetMetadataStoreAiplatformV1beta1Result].
  /// [createTime] Timestamp when this MetadataStore was created.
  /// [description] Description of the MetadataStore.
  /// [encryptionSpec] Customer-managed encryption key spec for a Metadata Store. If set, this Metadata Store and all sub-resources of this Metadata Store are secured using this key.
  /// [name] The resource name of the MetadataStore instance.
  /// [state] State information of the MetadataStore.
  /// [updateTime] Timestamp when this MetadataStore was last updated.
  GetMetadataStoreAiplatformV1beta1Result({
    required this.createTime,
    required this.description,
    required this.encryptionSpec,
    required this.name,
    required this.state,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'encryptionSpec': encryptionSpec.toMap(),
      'name': name,
      'state': state.toMap(),
      'updateTime': updateTime,
    };
  }

  factory GetMetadataStoreAiplatformV1beta1Result.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetMetadataStoreAiplatformV1beta1Result(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      encryptionSpec:
          GoogleCloudAiplatformV1beta1EncryptionSpecResponse.fromMap(
            (map['encryptionSpec'] as Map).cast<String, dynamic>(),
          ),
      name: map['name'] as String,
      state:
          GoogleCloudAiplatformV1beta1MetadataStoreMetadataStoreStateResponse.fromMap(
            (map['state'] as Map).cast<String, dynamic>(),
          ),
      updateTime: map['updateTime'] as String,
    );
  }
}
