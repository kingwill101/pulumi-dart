// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersResourceType {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersResourceType].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersResourceType({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory InsightFiltersResourceType.fromMap(Map<String, dynamic> map) {
    return InsightFiltersResourceType(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
