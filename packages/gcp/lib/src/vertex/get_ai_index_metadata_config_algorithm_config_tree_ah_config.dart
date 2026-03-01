// ignore_for_file: unused_element, unnecessary_cast


class GetAiIndexMetadataConfigAlgorithmConfigTreeAhConfig {
  /// Number of embeddings on each leaf node. The default value is 1000 if not set.
  final int leafNodeEmbeddingCount;
  /// The default percentage of leaf nodes that any query may be searched. Must be in
  /// range 1-100, inclusive. The default value is 10 (means 10%) if not set.
  final int leafNodesToSearchPercent;

  /// Creates a new [GetAiIndexMetadataConfigAlgorithmConfigTreeAhConfig].
  /// [leafNodeEmbeddingCount] Number of embeddings on each leaf node. The default value is 1000 if not set.
  /// [leafNodesToSearchPercent] The default percentage of leaf nodes that any query may be searched. Must be in
  GetAiIndexMetadataConfigAlgorithmConfigTreeAhConfig({
    required this.leafNodeEmbeddingCount,
    required this.leafNodesToSearchPercent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'leafNodeEmbeddingCount': leafNodeEmbeddingCount,
      'leafNodesToSearchPercent': leafNodesToSearchPercent,
    };
  }

  factory GetAiIndexMetadataConfigAlgorithmConfigTreeAhConfig.fromMap(Map<String, dynamic> map) {
    return GetAiIndexMetadataConfigAlgorithmConfigTreeAhConfig(
      leafNodeEmbeddingCount: map['leafNodeEmbeddingCount'] as int,
      leafNodesToSearchPercent: map['leafNodesToSearchPercent'] as int,
    );
  }
}

