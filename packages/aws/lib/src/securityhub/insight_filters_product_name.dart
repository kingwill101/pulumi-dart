// ignore_for_file: unused_element, unnecessary_cast


class InsightFiltersProductName {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersProductName].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersProductName({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory InsightFiltersProductName.fromMap(Map<String, dynamic> map) {
    return InsightFiltersProductName(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}

