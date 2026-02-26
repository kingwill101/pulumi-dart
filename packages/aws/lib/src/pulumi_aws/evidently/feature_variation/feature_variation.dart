// ignore_for_file: unused_element, unnecessary_cast

import '../feature_variation_value/feature_variation_value.dart';

class FeatureVariation {
  /// The name of the variation. Minimum length of <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>. Maximum length of <span pulumi-lang-nodejs="`127`" pulumi-lang-dotnet="`127`" pulumi-lang-go="`127`" pulumi-lang-python="`127`" pulumi-lang-yaml="`127`" pulumi-lang-java="`127`">`127`</span>.
  final String name;

  /// A block that specifies the value assigned to this variation. Detailed below
  final FeatureVariationValue value;

  FeatureVariation({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value.toMap();
    return map;
  }

  factory FeatureVariation.fromMap(Map<String, dynamic> map) {
    return FeatureVariation(
      name: map['name'] as String,
      value: FeatureVariationValue.fromMap(
          (map['value'] as Map).cast<String, dynamic>()),
    );
  }
}
