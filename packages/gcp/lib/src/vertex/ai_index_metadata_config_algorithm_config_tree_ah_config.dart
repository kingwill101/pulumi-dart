// ignore_for_file: unused_element, unnecessary_cast

class AiIndexMetadataConfigAlgorithmConfigTreeAhConfig {
  /// Number of embeddings on each leaf node. The default value is 1000 if not set.
  final int? leafNodeEmbeddingCount;

  /// The default percentage of leaf nodes that any query may be searched. Must be in
  /// range 1-100, inclusive. The default value is 10 (means 10%) if not set.
  final int? leafNodesToSearchPercent;

  /// Creates a new [AiIndexMetadataConfigAlgorithmConfigTreeAhConfig].
  /// [leafNodeEmbeddingCount] Number of embeddings on each leaf node. The default value is 1000 if not set.
  /// [leafNodesToSearchPercent] The default percentage of leaf nodes that any query may be searched. Must be in
  AiIndexMetadataConfigAlgorithmConfigTreeAhConfig({
    this.leafNodeEmbeddingCount,
    this.leafNodesToSearchPercent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'leafNodeEmbeddingCount': ?leafNodeEmbeddingCount,
      'leafNodesToSearchPercent': ?leafNodesToSearchPercent,
    };
  }

  factory AiIndexMetadataConfigAlgorithmConfigTreeAhConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return AiIndexMetadataConfigAlgorithmConfigTreeAhConfig(
      leafNodeEmbeddingCount: map['leafNodeEmbeddingCount'] == null
          ? null
          : map['leafNodeEmbeddingCount'] as int,
      leafNodesToSearchPercent: map['leafNodesToSearchPercent'] == null
          ? null
          : map['leafNodesToSearchPercent'] as int,
    );
  }
}
