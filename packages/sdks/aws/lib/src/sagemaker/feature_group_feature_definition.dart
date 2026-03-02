// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_group_feature_definition_collection_config.dart';

class FeatureGroupFeatureDefinition {
  final pulumi.Input<FeatureGroupFeatureDefinitionCollectionConfig>? collectionConfig;
  final pulumi.Input<String>? collectionType;
  /// The name of a feature. `feature_name` cannot be any of the following: `is_deleted`, `write_time`, `api_invocation_time`.
  final pulumi.Input<String>? featureName;
  /// The value type of a feature. Valid values are `Integral`, `Fractional`, or `String`.
  final pulumi.Input<String>? featureType;

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
      'collectionConfig': ?pulumi.Input.mapOptionalInputValue<FeatureGroupFeatureDefinitionCollectionConfig, Map<String, dynamic>>(collectionConfig, (value) => value.toMap()),
      'collectionType': ?collectionType,
      'featureName': ?featureName,
      'featureType': ?featureType,
    };
  }

  factory FeatureGroupFeatureDefinition.fromMap(Map<String, dynamic> map) {
    return FeatureGroupFeatureDefinition(
      collectionConfig: map['collectionConfig'] == null ? null : ((FeatureGroupFeatureDefinitionCollectionConfig.fromMap((map['collectionConfig']! as Map).cast<String, dynamic>())).input()).input(),
      collectionType: map['collectionType'] == null ? null : ((map['collectionType'] as String).input()).input(),
      featureName: map['featureName'] == null ? null : ((map['featureName'] as String).input()).input(),
      featureType: map['featureType'] == null ? null : ((map['featureType'] as String).input()).input(),
    );
  }
}

