// ignore_for_file: unused_element, unnecessary_cast

/// The category to which the update belongs.
class CategoryResponse {
  /// The identifier of the category.
  final String categoryId;

  /// The localized name of the category.
  final String name;

  /// Creates a new [CategoryResponse].
  /// [categoryId] The identifier of the category.
  /// [name] The localized name of the category.
  CategoryResponse({required this.categoryId, required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'categoryId': categoryId, 'name': name};
  }

  factory CategoryResponse.fromMap(Map<String, dynamic> map) {
    return CategoryResponse(
      categoryId: map['categoryId'] as String,
      name: map['name'] as String,
    );
  }
}
