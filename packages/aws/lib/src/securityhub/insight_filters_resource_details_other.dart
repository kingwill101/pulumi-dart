// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersResourceDetailsOther {
  final String comparison;

  /// The key of the map filter. For example, for `ResourceTags`, `Key` identifies the name of the tag. For `UserDefinedFields`, `Key` is the name of the field.
  final String key;
  final String value;

  /// Creates a new [InsightFiltersResourceDetailsOther].
  /// [comparison] Required.
  /// [key] The key of the map filter. For example, for `ResourceTags`, `Key` identifies the name of the tag. For `UserDefinedFields`, `Key` is the name of the field.
  /// [value] Required.
  InsightFiltersResourceDetailsOther({
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

  factory InsightFiltersResourceDetailsOther.fromMap(Map<String, dynamic> map) {
    return InsightFiltersResourceDetailsOther(
      comparison: map['comparison'] as String,
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
