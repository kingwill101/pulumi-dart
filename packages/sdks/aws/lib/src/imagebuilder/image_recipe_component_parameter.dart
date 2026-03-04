// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImageRecipeComponentParameter {
  /// The name of the component parameter.
  final pulumi.Input<String> name;

  /// The value for the named component parameter.
  final pulumi.Input<String> value;

  /// Creates a new [ImageRecipeComponentParameter].
  /// [name] The name of the component parameter.
  /// [value] The value for the named component parameter.
  ImageRecipeComponentParameter({required this.name, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory ImageRecipeComponentParameter.fromMap(Map<String, dynamic> map) {
    return ImageRecipeComponentParameter(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
