// ignore_for_file: unused_element, unnecessary_cast

import '../feature_group_feature_definition_collection_config/feature_group_feature_definition_collection_config.dart';

class FeatureGroupFeatureDefinition {
  final FeatureGroupFeatureDefinitionCollectionConfig? collectionConfig;
  final String? collectionType;

  /// The name of a feature. `feature_name` cannot be any of the following: `is_deleted`, `write_time`, `api_invocation_time`.
  final String? featureName;

  /// The value type of a feature. Valid values are `Integral`, `Fractional`, or `String`.
  final String? featureType;

  FeatureGroupFeatureDefinition({
    this.collectionConfig,
    this.collectionType,
    this.featureName,
    this.featureType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final collectionConfigValue = collectionConfig;
    if (collectionConfigValue != null) {
      map['collectionConfig'] = collectionConfigValue.toMap();
    }
    final collectionTypeValue = collectionType;
    if (collectionTypeValue != null) {
      map['collectionType'] = collectionTypeValue;
    }
    final featureNameValue = featureName;
    if (featureNameValue != null) {
      map['featureName'] = featureNameValue;
    }
    final featureTypeValue = featureType;
    if (featureTypeValue != null) {
      map['featureType'] = featureTypeValue;
    }
    return map;
  }

  factory FeatureGroupFeatureDefinition.fromMap(Map<String, dynamic> map) {
    return FeatureGroupFeatureDefinition(
      collectionConfig: map['collectionConfig'] == null
          ? null
          : FeatureGroupFeatureDefinitionCollectionConfig.fromMap(
              (map['collectionConfig'] as Map).cast<String, dynamic>()),
      collectionType: map['collectionType'] == null
          ? null
          : map['collectionType'] as String,
      featureName:
          map['featureName'] == null ? null : map['featureName'] as String,
      featureType:
          map['featureType'] == null ? null : map['featureType'] as String,
    );
  }
}
