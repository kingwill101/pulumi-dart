// ignore_for_file: unused_element, unnecessary_cast


/// Contains settings for embedding management.
class GoogleCloudAiplatformV1beta1FeatureOnlineStoreEmbeddingManagement {
  /// Optional. Immutable. Whether to enable embedding management in this FeatureOnlineStore. It's immutable after creation to ensure the FeatureOnlineStore availability.
  final bool? enabled;

  /// Creates a new [GoogleCloudAiplatformV1beta1FeatureOnlineStoreEmbeddingManagement].
  /// [enabled] Optional. Immutable. Whether to enable embedding management in this FeatureOnlineStore. It's immutable after creation to ensure the FeatureOnlineStore availability.
  GoogleCloudAiplatformV1beta1FeatureOnlineStoreEmbeddingManagement({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory GoogleCloudAiplatformV1beta1FeatureOnlineStoreEmbeddingManagement.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1FeatureOnlineStoreEmbeddingManagement(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

