// ignore_for_file: unused_element, unnecessary_cast


class InsightFiltersProductField {
  final String comparison;
  /// The key of the map filter. For example, for `ResourceTags`, `Key` identifies the name of the tag. For `UserDefinedFields`, `Key` is the name of the field.
  final String key;
  final String value;

  /// Creates a new [InsightFiltersProductField].
  /// [comparison] Required.
  /// [key] The key of the map filter. For example, for `ResourceTags`, `Key` identifies the name of the tag. For `UserDefinedFields`, `Key` is the name of the field.
  /// [value] Required.
  InsightFiltersProductField({
    required this.comparison,
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'key': key,
      'value': value,
    };
  }

  factory InsightFiltersProductField.fromMap(Map<String, dynamic> map) {
    return InsightFiltersProductField(
      comparison: map['comparison'] as String,
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

