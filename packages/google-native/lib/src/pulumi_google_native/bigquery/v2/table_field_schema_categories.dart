// ignore_for_file: unused_element, unnecessary_cast

/// [Optional] The categories attached to this field, used for field-level access control.
class TableFieldSchemaCategories {
  /// A list of category resource names. For example, "projects/1/taxonomies/2/categories/3". At most 5 categories are allowed.
  final List<String>? names;

  TableFieldSchemaCategories({
    this.names,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final namesValue = names;
    if (namesValue != null) {
      map['names'] = namesValue;
    }
    return map;
  }

  factory TableFieldSchemaCategories.fromMap(Map<String, dynamic> map) {
    return TableFieldSchemaCategories(
      names:
          map['names'] == null ? null : (map['names'] as List).cast<String>(),
    );
  }
}
