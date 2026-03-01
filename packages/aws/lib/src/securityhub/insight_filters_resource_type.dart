// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersResourceType {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersResourceType].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersResourceType({required this.comparison, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'comparison': comparison, 'value': value};
  }

  factory InsightFiltersResourceType.fromMap(Map<String, dynamic> map) {
    return InsightFiltersResourceType(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
