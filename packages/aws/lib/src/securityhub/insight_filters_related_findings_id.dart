// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersRelatedFindingsId {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersRelatedFindingsId].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersRelatedFindingsId({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory InsightFiltersRelatedFindingsId.fromMap(Map<String, dynamic> map) {
    return InsightFiltersRelatedFindingsId(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
