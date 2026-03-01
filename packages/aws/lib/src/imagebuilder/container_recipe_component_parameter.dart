// ignore_for_file: unused_element, unnecessary_cast

class ContainerRecipeComponentParameter {
  /// The name of the component parameter.
  final String name;

  /// The value for the named component parameter.
  final String value;

  /// Creates a new [ContainerRecipeComponentParameter].
  /// [name] The name of the component parameter.
  /// [value] The value for the named component parameter.
  ContainerRecipeComponentParameter({required this.name, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory ContainerRecipeComponentParameter.fromMap(Map<String, dynamic> map) {
    return ContainerRecipeComponentParameter(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
