// ignore_for_file: unused_element, unnecessary_cast

class GetImageRecipeComponentParameter {
  /// Name of the image recipe.
  final String name;

  /// Value of the component parameter.
  final String value;

  /// Creates a new [GetImageRecipeComponentParameter].
  /// [name] Name of the image recipe.
  /// [value] Value of the component parameter.
  GetImageRecipeComponentParameter({required this.name, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory GetImageRecipeComponentParameter.fromMap(Map<String, dynamic> map) {
    return GetImageRecipeComponentParameter(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
