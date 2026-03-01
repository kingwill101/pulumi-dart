// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersResourceId {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersResourceId].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersResourceId({required this.comparison, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'comparison': comparison, 'value': value};
  }

  factory InsightFiltersResourceId.fromMap(Map<String, dynamic> map) {
    return InsightFiltersResourceId(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
