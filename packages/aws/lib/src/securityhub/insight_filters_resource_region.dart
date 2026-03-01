// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersResourceRegion {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersResourceRegion].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersResourceRegion({required this.comparison, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'comparison': comparison, 'value': value};
  }

  factory InsightFiltersResourceRegion.fromMap(Map<String, dynamic> map) {
    return InsightFiltersResourceRegion(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
