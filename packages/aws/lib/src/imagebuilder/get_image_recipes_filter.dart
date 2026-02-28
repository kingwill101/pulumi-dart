// ignore_for_file: unused_element, unnecessary_cast

class GetImageRecipesFilter {
  /// Name of the filter field. Valid values can be found in the [Image Builder ListImageRecipes API Reference](https://docs.aws.amazon.com/imagebuilder/latest/APIReference/API_ListImageRecipes.html).
  final String name;

  /// Set of values that are accepted for the given filter field. Results will be selected if any given value matches.
  final List<String> values;

  /// Creates a new [GetImageRecipesFilter].
  /// [name] Name of the filter field. Valid values can be found in the [Image Builder ListImageRecipes API Reference](https://docs.aws.amazon.com/imagebuilder/latest/APIReference/API_ListImageRecipes.html).
  /// [values] Set of values that are accepted for the given filter field. Results will be selected if any given value matches.
  GetImageRecipesFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetImageRecipesFilter.fromMap(Map<String, dynamic> map) {
    return GetImageRecipesFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
