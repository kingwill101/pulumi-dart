// ignore_for_file: unused_element, unnecessary_cast

import '../feature_group_feature_definition_collection_config/feature_group_feature_definition_collection_config.dart';

class FeatureGroupFeatureDefinition {
  final FeatureGroupFeatureDefinitionCollectionConfig? collectionConfig;
  final String? collectionType;

  /// The name of a feature. <span pulumi-lang-nodejs="`featureName`" pulumi-lang-dotnet="`FeatureName`" pulumi-lang-go="`featureName`" pulumi-lang-python="`feature_name`" pulumi-lang-yaml="`featureName`" pulumi-lang-java="`featureName`">`feature_name`</span> cannot be any of the following: <span pulumi-lang-nodejs="`isDeleted`" pulumi-lang-dotnet="`IsDeleted`" pulumi-lang-go="`isDeleted`" pulumi-lang-python="`is_deleted`" pulumi-lang-yaml="`isDeleted`" pulumi-lang-java="`isDeleted`">`is_deleted`</span>, <span pulumi-lang-nodejs="`writeTime`" pulumi-lang-dotnet="`WriteTime`" pulumi-lang-go="`writeTime`" pulumi-lang-python="`write_time`" pulumi-lang-yaml="`writeTime`" pulumi-lang-java="`writeTime`">`write_time`</span>, <span pulumi-lang-nodejs="`apiInvocationTime`" pulumi-lang-dotnet="`ApiInvocationTime`" pulumi-lang-go="`apiInvocationTime`" pulumi-lang-python="`api_invocation_time`" pulumi-lang-yaml="`apiInvocationTime`" pulumi-lang-java="`apiInvocationTime`">`api_invocation_time`</span>.
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
