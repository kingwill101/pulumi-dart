// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersUserDefinedValue {
  final String comparison;

  /// The key of the map filter. For example, for `ResourceTags`, `Key` identifies the name of the tag. For `UserDefinedFields`, `Key` is the name of the field.
  final String key;
  final String value;

  /// Creates a new [InsightFiltersUserDefinedValue].
  /// [comparison] Required.
  /// [key] The key of the map filter. For example, for `ResourceTags`, `Key` identifies the name of the tag. For `UserDefinedFields`, `Key` is the name of the field.
  /// [value] Required.
  InsightFiltersUserDefinedValue({
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

  factory InsightFiltersUserDefinedValue.fromMap(Map<String, dynamic> map) {
    return InsightFiltersUserDefinedValue(
      comparison: map['comparison'] as String,
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
