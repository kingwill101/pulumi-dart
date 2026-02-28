// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersResourcePartition {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersResourcePartition].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersResourcePartition({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory InsightFiltersResourcePartition.fromMap(Map<String, dynamic> map) {
    return InsightFiltersResourcePartition(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
