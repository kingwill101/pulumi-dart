// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersProductField {
  final String comparison;

  /// The key of the map filter. For example, for `ResourceTags`, `Key` identifies the name of the tag. For `UserDefinedFields`, `Key` is the name of the field.
  final String key;
  final String value;

  InsightFiltersProductField({
    required this.comparison,
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory InsightFiltersProductField.fromMap(Map<String, dynamic> map) {
    return InsightFiltersProductField(
      comparison: map['comparison'] as String,
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
