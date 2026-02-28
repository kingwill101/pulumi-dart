// ignore_for_file: unused_element, unnecessary_cast

class FeatureGroupFeatureDefinitionCollectionConfigVectorConfig {
  final int? dimension;

  /// Creates a new [FeatureGroupFeatureDefinitionCollectionConfigVectorConfig].
  /// [dimension] Optional.
  FeatureGroupFeatureDefinitionCollectionConfigVectorConfig({
    this.dimension,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dimensionValue = dimension;
    if (dimensionValue != null) {
      map['dimension'] = dimensionValue;
    }
    return map;
  }

  factory FeatureGroupFeatureDefinitionCollectionConfigVectorConfig.fromMap(
      Map<String, dynamic> map) {
    return FeatureGroupFeatureDefinitionCollectionConfigVectorConfig(
      dimension: map['dimension'] == null ? null : map['dimension'] as int,
    );
  }
}
