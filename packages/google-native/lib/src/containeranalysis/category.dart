// ignore_for_file: unused_element, unnecessary_cast

/// The category to which the update belongs.
class Category {
  /// The identifier of the category.
  final String? categoryId;

  /// The localized name of the category.
  final String? name;

  /// Creates a new [Category].
  /// [categoryId] The identifier of the category.
  /// [name] The localized name of the category.
  Category({
    this.categoryId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final categoryIdValue = categoryId;
    if (categoryIdValue != null) {
      map['categoryId'] = categoryIdValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      categoryId:
          map['categoryId'] == null ? null : map['categoryId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
