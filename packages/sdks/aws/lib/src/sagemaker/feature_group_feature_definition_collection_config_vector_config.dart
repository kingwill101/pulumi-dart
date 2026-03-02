// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeatureGroupFeatureDefinitionCollectionConfigVectorConfig {
  final pulumi.Input<int>? dimension;

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
      dimension: map['dimension'] == null ? null : (map['dimension'] as int).input(),
    );
  }
}

