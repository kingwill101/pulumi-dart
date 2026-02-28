// ignore_for_file: unused_element, unnecessary_cast


class GetProductFilter {
  /// Product attribute name that you want to filter on.
  final String field;
  /// Product attribute value that you want to filter on.
  final String value;

  /// Creates a new [GetProductFilter].
  /// [field] Product attribute name that you want to filter on.
  /// [value] Product attribute value that you want to filter on.
  GetProductFilter({
    required this.field,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': field,
      'value': value,
    };
  }

  factory GetProductFilter.fromMap(Map<String, dynamic> map) {
    return GetProductFilter(
      field: map['field'] as String,
      value: map['value'] as String,
    );
  }
}

