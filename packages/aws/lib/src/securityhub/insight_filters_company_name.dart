// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersCompanyName {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersCompanyName].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersCompanyName({required this.comparison, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'comparison': comparison, 'value': value};
  }

  factory InsightFiltersCompanyName.fromMap(Map<String, dynamic> map) {
    return InsightFiltersCompanyName(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
