// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersRecordState {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersRecordState].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersRecordState({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory InsightFiltersRecordState.fromMap(Map<String, dynamic> map) {
    return InsightFiltersRecordState(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
