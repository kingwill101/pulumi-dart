// ignore_for_file: unused_element, unnecessary_cast


class FeatureGroupFeatureDefinitionCollectionConfigVectorConfig {
  final int? dimension;

  /// Creates a new [FeatureGroupFeatureDefinitionCollectionConfigVectorConfig].
  /// [dimension] Optional.
  FeatureGroupFeatureDefinitionCollectionConfigVectorConfig({
    this.dimension,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimension': ?dimension,
    };
  }

  factory FeatureGroupFeatureDefinitionCollectionConfigVectorConfig.fromMap(Map<String, dynamic> map) {
    return FeatureGroupFeatureDefinitionCollectionConfigVectorConfig(
      dimension: map['dimension'] == null ? null : map['dimension'] as int,
    );
  }
}

