// ignore_for_file: unused_element, unnecessary_cast

class GetContainerRecipeComponentParameter {
  /// Name of the container recipe.
  final String name;

  /// Value of the component parameter.
  final String value;

  /// Creates a new [GetContainerRecipeComponentParameter].
  /// [name] Name of the container recipe.
  /// [value] Value of the component parameter.
  GetContainerRecipeComponentParameter({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory GetContainerRecipeComponentParameter.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetContainerRecipeComponentParameter(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
