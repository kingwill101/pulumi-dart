// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersProcessPath {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersProcessPath].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersProcessPath({required this.comparison, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'comparison': comparison, 'value': value};
  }

  factory InsightFiltersProcessPath.fromMap(Map<String, dynamic> map) {
    return InsightFiltersProcessPath(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
