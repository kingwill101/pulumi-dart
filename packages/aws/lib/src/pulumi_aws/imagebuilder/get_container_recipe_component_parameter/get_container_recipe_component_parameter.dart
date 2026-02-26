// ignore_for_file: unused_element, unnecessary_cast

class GetContainerRecipeComponentParameter {
  /// Name of the container recipe.
  final String name;

  /// Value of the component parameter.
  final String value;

  GetContainerRecipeComponentParameter({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory GetContainerRecipeComponentParameter.fromMap(
      Map<String, dynamic> map) {
    return GetContainerRecipeComponentParameter(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
