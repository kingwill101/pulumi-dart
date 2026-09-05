// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeatureGroupFeatureDefinitionCollectionConfigVectorConfig {
  final pulumi.Input<int?>? dimension;

  /// Creates a new [FeatureGroupFeatureDefinitionCollectionConfigVectorConfig].
  /// [dimension] Optional.
  const FeatureGroupFeatureDefinitionCollectionConfigVectorConfig({
    this.dimension,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimension': ?dimension,
    };
  }

  factory FeatureGroupFeatureDefinitionCollectionConfigVectorConfig.fromMap(Map<String, dynamic> map) {
    return FeatureGroupFeatureDefinitionCollectionConfigVectorConfig(
      dimension: (() { final guardedValue = map['dimension']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
