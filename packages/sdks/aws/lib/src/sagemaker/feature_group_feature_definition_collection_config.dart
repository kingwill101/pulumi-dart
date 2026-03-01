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
    return <String, dynamic>{
      'vectorConfig': ?vectorConfig == null ? null : vectorConfig!.toMap(),
    };
  }

  factory FeatureGroupFeatureDefinitionCollectionConfig.fromMap(Map<String, dynamic> map) {
    return FeatureGroupFeatureDefinitionCollectionConfig(
      vectorConfig: map['vectorConfig'] == null ? null : FeatureGroupFeatureDefinitionCollectionConfigVectorConfig.fromMap((map['vectorConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

