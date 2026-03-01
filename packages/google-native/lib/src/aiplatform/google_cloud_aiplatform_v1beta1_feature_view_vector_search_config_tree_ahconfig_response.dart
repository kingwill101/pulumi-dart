// ignore_for_file: unused_element, unnecessary_cast

class GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfigTreeAHConfigResponse {
  /// Optional. Number of embeddings on each leaf node. The default value is 1000 if not set.
  final String leafNodeEmbeddingCount;

  /// Creates a new [GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfigTreeAHConfigResponse].
  /// [leafNodeEmbeddingCount] Optional. Number of embeddings on each leaf node. The default value is 1000 if not set.
  GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfigTreeAHConfigResponse({
    required this.leafNodeEmbeddingCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'leafNodeEmbeddingCount': leafNodeEmbeddingCount};
  }

  factory GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfigTreeAHConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfigTreeAHConfigResponse(
      leafNodeEmbeddingCount: map['leafNodeEmbeddingCount'] as String,
    );
  }
}
