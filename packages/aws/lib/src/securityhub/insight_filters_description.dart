// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersDescription {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersDescription].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersDescription({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory InsightFiltersDescription.fromMap(Map<String, dynamic> map) {
    return InsightFiltersDescription(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
