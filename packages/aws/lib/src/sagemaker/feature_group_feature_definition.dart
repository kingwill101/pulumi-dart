// ignore_for_file: unused_element, unnecessary_cast

import 'feature_group_feature_definition_collection_config.dart';

class FeatureGroupFeatureDefinition {
  final FeatureGroupFeatureDefinitionCollectionConfig? collectionConfig;
  final String? collectionType;

  /// The name of a feature. `feature_name` cannot be any of the following: `is_deleted`, `write_time`, `api_invocation_time`.
  final String? featureName;

  /// The value type of a feature. Valid values are `Integral`, `Fractional`, or `String`.
  final String? featureType;

  /// Creates a new [FeatureGroupFeatureDefinition].
  /// [collectionConfig] Optional.
  /// [collectionType] Optional.
  /// [featureName] The name of a feature. `feature_name` cannot be any of the following: `is_deleted`, `write_time`, `api_invocation_time`.
  /// [featureType] The value type of a feature. Valid values are `Integral`, `Fractional`, or `String`.
  FeatureGroupFeatureDefinition({
    this.collectionConfig,
    this.collectionType,
    this.featureName,
    this.featureType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionConfig': ?collectionConfig == null
          ? null
          : collectionConfig!.toMap(),
      'collectionType': ?collectionType,
      'featureName': ?featureName,
      'featureType': ?featureType,
    };
  }

  factory FeatureGroupFeatureDefinition.fromMap(Map<String, dynamic> map) {
    return FeatureGroupFeatureDefinition(
      collectionConfig: map['collectionConfig'] == null
          ? null
          : FeatureGroupFeatureDefinitionCollectionConfig.fromMap(
              (map['collectionConfig'] as Map).cast<String, dynamic>(),
            ),
      collectionType: map['collectionType'] == null
          ? null
          : map['collectionType'] as String,
      featureName: map['featureName'] == null
          ? null
          : map['featureName'] as String,
      featureType: map['featureType'] == null
          ? null
          : map['featureType'] as String,
    );
  }
}
