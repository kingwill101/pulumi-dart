// ignore_for_file: unused_element, unnecessary_cast

class ContainerRecipeComponentParameter {
  /// The name of the component parameter.
  final String name;

  /// The value for the named component parameter.
  final String value;

  ContainerRecipeComponentParameter({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory ContainerRecipeComponentParameter.fromMap(Map<String, dynamic> map) {
    return ContainerRecipeComponentParameter(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
