// ignore_for_file: unused_element, unnecessary_cast

class GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfigTreeAHConfig {
  /// Optional. Number of embeddings on each leaf node. The default value is 1000 if not set.
  final String? leafNodeEmbeddingCount;

  /// Creates a new [GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfigTreeAHConfig].
  /// [leafNodeEmbeddingCount] Optional. Number of embeddings on each leaf node. The default value is 1000 if not set.
  GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfigTreeAHConfig({
    this.leafNodeEmbeddingCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final leafNodeEmbeddingCountValue = leafNodeEmbeddingCount;
    if (leafNodeEmbeddingCountValue != null) {
      map['leafNodeEmbeddingCount'] = leafNodeEmbeddingCountValue;
    }
    return map;
  }

  factory GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfigTreeAHConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfigTreeAHConfig(
      leafNodeEmbeddingCount: map['leafNodeEmbeddingCount'] == null
          ? null
          : map['leafNodeEmbeddingCount'] as String,
    );
  }
}
