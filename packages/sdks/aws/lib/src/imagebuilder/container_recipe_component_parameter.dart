// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerRecipeComponentParameter {
  /// The name of the component parameter.
  final pulumi.Input<String> name;
  /// The value for the named component parameter.
  final pulumi.Input<String> value;

  /// Creates a new [ContainerRecipeComponentParameter].
  /// [name] The name of the component parameter.
  /// [value] The value for the named component parameter.
  ContainerRecipeComponentParameter({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory ContainerRecipeComponentParameter.fromMap(Map<String, dynamic> map) {
    return ContainerRecipeComponentParameter(
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

