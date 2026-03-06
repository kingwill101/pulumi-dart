// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetImageRecipeComponentParameter {
  /// Name of the image recipe.
  final pulumi.Input<String> name;
  /// Value of the component parameter.
  final pulumi.Input<String> value;

  /// Creates a new [GetImageRecipeComponentParameter].
  /// [name] Name of the image recipe.
  /// [value] Value of the component parameter.
  const GetImageRecipeComponentParameter({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory GetImageRecipeComponentParameter.fromMap(Map<String, dynamic> map) {
    return GetImageRecipeComponentParameter(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

