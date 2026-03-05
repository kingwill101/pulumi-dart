// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_variation_value.dart';

class FeatureVariation {
  /// The name of the variation. Minimum length of `1`. Maximum length of `127`.
  final pulumi.Input<String> name;
  /// A block that specifies the value assigned to this variation. Detailed below
  final pulumi.Input<FeatureVariationValue> value;

  /// Creates a new [FeatureVariation].
  /// [name] The name of the variation. Minimum length of `1`. Maximum length of `127`.
  /// [value] A block that specifies the value assigned to this variation. Detailed below
  FeatureVariation({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': pulumi.Input.mapInputValue<FeatureVariationValue, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory FeatureVariation.fromMap(Map<String, dynamic> map) {
    return FeatureVariation(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(FeatureVariationValue.fromMap((map['value']! as Map).cast<String, dynamic>())),
    );
  }
}

