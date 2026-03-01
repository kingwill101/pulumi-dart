// ignore_for_file: unused_element, unnecessary_cast

import 'ai_feature_online_store_featureview_vector_search_config_tree_ah_config.dart';

class AiFeatureOnlineStoreFeatureviewVectorSearchConfig {
  /// Configuration options for using brute force search, which simply implements the standard linear search in the database for each query. It is primarily meant for benchmarking and to generate the ground truth for approximate search.
  final Map<String, dynamic>? bruteForceConfig;
  /// Column of crowding. This column contains crowding attribute which is a constraint on a neighbor list produced by nearest neighbor search requiring that no more than some value k' of the k neighbors returned have the same value of crowdingAttribute.
  final String? crowdingColumn;
  /// The distance measure used in nearest neighbor search.
  /// For details on allowed values, see the [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1beta1/projects.locations.featureOnlineStores.featureViews#DistanceMeasureType).
  /// Possible values are: `SQUARED_L2_DISTANCE`, `COSINE_DISTANCE`, `DOT_PRODUCT_DISTANCE`.
  final String? distanceMeasureType;
  /// Column of embedding. This column contains the source data to create index for vector search.
  final String embeddingColumn;
  /// The number of dimensions of the input embedding.
  final int? embeddingDimension;
  /// Columns of features that are used to filter vector search results.
  final List<String>? filterColumns;
  /// Configuration options for the tree-AH algorithm (Shallow tree + Asymmetric Hashing). Please refer to this paper for more details: https://arxiv.org/abs/1908.10396
  /// Structure is documented below.
  final AiFeatureOnlineStoreFeatureviewVectorSearchConfigTreeAhConfig? treeAhConfig;

  /// Creates a new [AiFeatureOnlineStoreFeatureviewVectorSearchConfig].
  /// [bruteForceConfig] Configuration options for using brute force search, which simply implements the standard linear search in the database for each query. It is primarily meant for benchmarking and to generate the ground truth for approximate search.
  /// [crowdingColumn] Column of crowding. This column contains crowding attribute which is a constraint on a neighbor list produced by nearest neighbor search requiring that no more than some value k' of the k neighbors returned have the same value of crowdingAttribute.
  /// [distanceMeasureType] The distance measure used in nearest neighbor search.
  /// [embeddingColumn] Column of embedding. This column contains the source data to create index for vector search.
  /// [embeddingDimension] The number of dimensions of the input embedding.
  /// [filterColumns] Columns of features that are used to filter vector search results.
  /// [treeAhConfig] Configuration options for the tree-AH algorithm (Shallow tree + Asymmetric Hashing). Please refer to this paper for more details: https://arxiv.org/abs/1908.10396
  AiFeatureOnlineStoreFeatureviewVectorSearchConfig({
    this.bruteForceConfig,
    this.crowdingColumn,
    this.distanceMeasureType,
    required this.embeddingColumn,
    this.embeddingDimension,
    this.filterColumns,
    this.treeAhConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bruteForceConfig': ?bruteForceConfig,
      'crowdingColumn': ?crowdingColumn,
      'distanceMeasureType': ?distanceMeasureType,
      'embeddingColumn': embeddingColumn,
      'embeddingDimension': ?embeddingDimension,
      'filterColumns': ?filterColumns,
      'treeAhConfig': ?treeAhConfig == null ? null : treeAhConfig!.toMap(),
    };
  }

  factory AiFeatureOnlineStoreFeatureviewVectorSearchConfig.fromMap(Map<String, dynamic> map) {
    return AiFeatureOnlineStoreFeatureviewVectorSearchConfig(
      bruteForceConfig: map['bruteForceConfig'] == null ? null : (map['bruteForceConfig'] as Map).cast<String, dynamic>(),
      crowdingColumn: map['crowdingColumn'] == null ? null : map['crowdingColumn'] as String,
      distanceMeasureType: map['distanceMeasureType'] == null ? null : map['distanceMeasureType'] as String,
      embeddingColumn: map['embeddingColumn'] as String,
      embeddingDimension: map['embeddingDimension'] == null ? null : map['embeddingDimension'] as int,
      filterColumns: map['filterColumns'] == null ? null : (map['filterColumns'] as List).cast<String>(),
      treeAhConfig: map['treeAhConfig'] == null ? null : AiFeatureOnlineStoreFeatureviewVectorSearchConfigTreeAhConfig.fromMap((map['treeAhConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

