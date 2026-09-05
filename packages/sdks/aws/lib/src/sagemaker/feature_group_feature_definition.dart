// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_group_feature_definition_collection_config.dart';

class FeatureGroupFeatureDefinition {
  final pulumi.Input<FeatureGroupFeatureDefinitionCollectionConfig?>? collectionConfig;
  final pulumi.Input<String?>? collectionType;
  /// The name of a feature. `featureName` cannot be any of the following: `isDeleted`, `writeTime`, `apiInvocationTime`.
  final pulumi.Input<String?>? featureName;
  /// The value type of a feature. Valid values are `Integral`, `Fractional`, or `String`.
  final pulumi.Input<String?>? featureType;

  /// Creates a new [FeatureGroupFeatureDefinition].
  /// [collectionConfig] Optional.
  /// [collectionType] Optional.
  /// [featureName] The name of a feature. `featureName` cannot be any of the following: `isDeleted`, `writeTime`, `apiInvocationTime`.
  /// [featureType] The value type of a feature. Valid values are `Integral`, `Fractional`, or `String`.
  const FeatureGroupFeatureDefinition({
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
      collectionConfig: (() { final guardedValue = map['collectionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeatureGroupFeatureDefinitionCollectionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      collectionType: (() { final guardedValue = map['collectionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      featureName: (() { final guardedValue = map['featureName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      featureType: (() { final guardedValue = map['featureType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
