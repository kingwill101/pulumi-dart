// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_group_feature_definition_collection_config_vector_config.dart';

class FeatureGroupFeatureDefinitionCollectionConfig {
  final pulumi.Input<FeatureGroupFeatureDefinitionCollectionConfigVectorConfig>? vectorConfig;

  /// Creates a new [FeatureGroupFeatureDefinitionCollectionConfig].
  /// [vectorConfig] Optional.
  const FeatureGroupFeatureDefinitionCollectionConfig({
    this.vectorConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vectorConfig': ?pulumi.Input.mapOptionalInputValue<FeatureGroupFeatureDefinitionCollectionConfigVectorConfig, Map<String, dynamic>>(vectorConfig, (value) => value.toMap()),
    };
  }

  factory FeatureGroupFeatureDefinitionCollectionConfig.fromMap(Map<String, dynamic> map) {
    return FeatureGroupFeatureDefinitionCollectionConfig(
      vectorConfig: (() { final guardedValue = map['vectorConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeatureGroupFeatureDefinitionCollectionConfigVectorConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
