// ignore_for_file: unused_element, unnecessary_cast

import 'feature_variation_value.dart';

class FeatureVariation {
  /// The name of the variation. Minimum length of `1`. Maximum length of `127`.
  final String name;

  /// A block that specifies the value assigned to this variation. Detailed below
  final FeatureVariationValue value;

  /// Creates a new [FeatureVariation].
  /// [name] The name of the variation. Minimum length of `1`. Maximum length of `127`.
  /// [value] A block that specifies the value assigned to this variation. Detailed below
  FeatureVariation({required this.name, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value.toMap()};
  }

  factory FeatureVariation.fromMap(Map<String, dynamic> map) {
    return FeatureVariation(
      name: map['name'] as String,
      value: FeatureVariationValue.fromMap(
        (map['value'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
