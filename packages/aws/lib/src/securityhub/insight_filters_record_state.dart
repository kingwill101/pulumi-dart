// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersRecordState {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersRecordState].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersRecordState({required this.comparison, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'comparison': comparison, 'value': value};
  }

  factory InsightFiltersRecordState.fromMap(Map<String, dynamic> map) {
    return InsightFiltersRecordState(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
