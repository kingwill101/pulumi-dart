// ignore_for_file: unused_element, unnecessary_cast


class ImageRecipeComponentParameter {
  /// The name of the component parameter.
  final String name;
  /// The value for the named component parameter.
  final String value;

  /// Creates a new [ImageRecipeComponentParameter].
  /// [name] The name of the component parameter.
  /// [value] The value for the named component parameter.
  ImageRecipeComponentParameter({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory ImageRecipeComponentParameter.fromMap(Map<String, dynamic> map) {
    return ImageRecipeComponentParameter(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

