// ignore_for_file: unused_element, unnecessary_cast

import 'feature_group_feature_definition_collection_config_vector_config.dart';

class FeatureGroupFeatureDefinitionCollectionConfig {
  final FeatureGroupFeatureDefinitionCollectionConfigVectorConfig? vectorConfig;

  /// Creates a new [FeatureGroupFeatureDefinitionCollectionConfig].
  /// [vectorConfig] Optional.
  FeatureGroupFeatureDefinitionCollectionConfig({
    this.vectorConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final vectorConfigValue = vectorConfig;
    if (vectorConfigValue != null) {
      map['vectorConfig'] = vectorConfigValue.toMap();
    }
    return map;
  }

  factory FeatureGroupFeatureDefinitionCollectionConfig.fromMap(
      Map<String, dynamic> map) {
    return FeatureGroupFeatureDefinitionCollectionConfig(
      vectorConfig: map['vectorConfig'] == null
          ? null
          : FeatureGroupFeatureDefinitionCollectionConfigVectorConfig.fromMap(
              (map['vectorConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
