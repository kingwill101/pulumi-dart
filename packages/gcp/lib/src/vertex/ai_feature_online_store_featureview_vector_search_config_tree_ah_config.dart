// ignore_for_file: unused_element, unnecessary_cast

class AiFeatureOnlineStoreFeatureviewVectorSearchConfigTreeAhConfig {
  /// Number of embeddings on each leaf node. The default value is 1000 if not set.
  final String? leafNodeEmbeddingCount;

  /// Creates a new [AiFeatureOnlineStoreFeatureviewVectorSearchConfigTreeAhConfig].
  /// [leafNodeEmbeddingCount] Number of embeddings on each leaf node. The default value is 1000 if not set.
  AiFeatureOnlineStoreFeatureviewVectorSearchConfigTreeAhConfig({
    this.leafNodeEmbeddingCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'leafNodeEmbeddingCount': ?leafNodeEmbeddingCount};
  }

  factory AiFeatureOnlineStoreFeatureviewVectorSearchConfigTreeAhConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return AiFeatureOnlineStoreFeatureviewVectorSearchConfigTreeAhConfig(
      leafNodeEmbeddingCount: map['leafNodeEmbeddingCount'] == null
          ? null
          : map['leafNodeEmbeddingCount'] as String,
    );
  }
}
