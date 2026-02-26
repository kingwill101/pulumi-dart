// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_encryption_spec_response.dart';
import 'google_cloud_aiplatform_v1_metadata_store_metadata_store_state_response.dart';

/// Result data returned by getMetadataStore.
class GetMetadataStoreResult {
  /// Timestamp when this MetadataStore was created.
  final String createTime;

  /// Description of the MetadataStore.
  final String description;

  /// Customer-managed encryption key spec for a Metadata Store. If set, this Metadata Store and all sub-resources of this Metadata Store are secured using this key.
  final GoogleCloudAiplatformV1EncryptionSpecResponse encryptionSpec;

  /// The resource name of the MetadataStore instance.
  final String name;

  /// State information of the MetadataStore.
  final GoogleCloudAiplatformV1MetadataStoreMetadataStoreStateResponse state;

  /// Timestamp when this MetadataStore was last updated.
  final String updateTime;

  GetMetadataStoreResult({
    required this.createTime,
    required this.description,
    required this.encryptionSpec,
    required this.name,
    required this.state,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['encryptionSpec'] = encryptionSpec.toMap();
    map['name'] = name;
    map['state'] = state.toMap();
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetMetadataStoreResult.fromMap(Map<String, dynamic> map) {
    return GetMetadataStoreResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      encryptionSpec: GoogleCloudAiplatformV1EncryptionSpecResponse.fromMap(
          (map['encryptionSpec'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      state: GoogleCloudAiplatformV1MetadataStoreMetadataStoreStateResponse
          .fromMap((map['state'] as Map).cast<String, dynamic>()),
      updateTime: map['updateTime'] as String,
    );
  }
}
