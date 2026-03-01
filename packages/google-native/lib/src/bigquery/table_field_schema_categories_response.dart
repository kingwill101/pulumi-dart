// ignore_for_file: unused_element, unnecessary_cast

/// [Optional] The categories attached to this field, used for field-level access control.
class TableFieldSchemaCategoriesResponse {
  /// A list of category resource names. For example, "projects/1/taxonomies/2/categories/3". At most 5 categories are allowed.
  final List<String> names;

  /// Creates a new [TableFieldSchemaCategoriesResponse].
  /// [names] A list of category resource names. For example, "projects/1/taxonomies/2/categories/3". At most 5 categories are allowed.
  TableFieldSchemaCategoriesResponse({required this.names});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'names': names};
  }

  factory TableFieldSchemaCategoriesResponse.fromMap(Map<String, dynamic> map) {
    return TableFieldSchemaCategoriesResponse(
      names: (map['names'] as List).cast<String>(),
    );
  }
}
