// ignore_for_file: unused_element, unnecessary_cast

import '../ai_index_metadata_config_algorithm_config/ai_index_metadata_config_algorithm_config.dart';

class AiIndexMetadataConfig {
  /// The configuration with regard to the algorithms used for efficient search. This field may be required based on your configuration.
  /// Structure is documented below.
  final AiIndexMetadataConfigAlgorithmConfig? algorithmConfig;

  /// The default number of neighbors to find via approximate search before exact reordering is
  /// performed. Exact reordering is a procedure where results returned by an
  /// approximate search algorithm are reordered via a more expensive distance computation.
  /// Required if tree-AH algorithm is used.
  final int? approximateNeighborsCount;

  /// The number of dimensions of the input vectors.
  final int dimensions;

  /// The distance measure used in nearest neighbor search. The value must be one of the followings:
  /// * SQUARED_L2_DISTANCE: Euclidean (L_2) Distance
  /// * L1_DISTANCE: Manhattan (L_1) Distance
  /// * COSINE_DISTANCE: Cosine Distance. Defined as 1 - cosine similarity.
  /// * DOT_PRODUCT_DISTANCE: Dot Product Distance. Defined as a negative of the dot product
  final String? distanceMeasureType;

  /// Type of normalization to be carried out on each vector. The value must be one of the followings:
  /// * UNIT_L2_NORM: Unit L2 normalization type
  /// * NONE: No normalization type is specified.
  final String? featureNormType;

  /// Index data is split into equal parts to be processed. These are called "shards".
  /// The shard size must be specified when creating an index. The value must be one of the followings:
  /// * SHARD_SIZE_SMALL: Small (2GB)
  /// * SHARD_SIZE_MEDIUM: Medium (20GB)
  /// * SHARD_SIZE_LARGE: Large (50GB)
  final String? shardSize;

  AiIndexMetadataConfig({
    this.algorithmConfig,
    this.approximateNeighborsCount,
    required this.dimensions,
    this.distanceMeasureType,
    this.featureNormType,
    this.shardSize,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final algorithmConfigValue = algorithmConfig;
    if (algorithmConfigValue != null) {
      map['algorithmConfig'] = algorithmConfigValue.toMap();
    }
    final approximateNeighborsCountValue = approximateNeighborsCount;
    if (approximateNeighborsCountValue != null) {
      map['approximateNeighborsCount'] = approximateNeighborsCountValue;
    }
    map['dimensions'] = dimensions;
    final distanceMeasureTypeValue = distanceMeasureType;
    if (distanceMeasureTypeValue != null) {
      map['distanceMeasureType'] = distanceMeasureTypeValue;
    }
    final featureNormTypeValue = featureNormType;
    if (featureNormTypeValue != null) {
      map['featureNormType'] = featureNormTypeValue;
    }
    final shardSizeValue = shardSize;
    if (shardSizeValue != null) {
      map['shardSize'] = shardSizeValue;
    }
    return map;
  }

  factory AiIndexMetadataConfig.fromMap(Map<String, dynamic> map) {
    return AiIndexMetadataConfig(
      algorithmConfig: map['algorithmConfig'] == null
          ? null
          : AiIndexMetadataConfigAlgorithmConfig.fromMap(
              (map['algorithmConfig'] as Map).cast<String, dynamic>()),
      approximateNeighborsCount: map['approximateNeighborsCount'] == null
          ? null
          : map['approximateNeighborsCount'] as int,
      dimensions: map['dimensions'] as int,
      distanceMeasureType: map['distanceMeasureType'] == null
          ? null
          : map['distanceMeasureType'] as String,
      featureNormType: map['featureNormType'] == null
          ? null
          : map['featureNormType'] as String,
      shardSize: map['shardSize'] == null ? null : map['shardSize'] as String,
    );
  }
}
