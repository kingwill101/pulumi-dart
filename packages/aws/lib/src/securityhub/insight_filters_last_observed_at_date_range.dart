// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersLastObservedAtDateRange {
  /// A date range unit for the date filter. Valid values: `DAYS`.
  final String unit;

  /// A date range value for the date filter, provided as an Integer.
  final int value;

  /// Creates a new [InsightFiltersLastObservedAtDateRange].
  /// [unit] A date range unit for the date filter. Valid values: `DAYS`.
  /// [value] A date range value for the date filter, provided as an Integer.
  InsightFiltersLastObservedAtDateRange({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['unit'] = unit;
    map['value'] = value;
    return map;
  }

  factory InsightFiltersLastObservedAtDateRange.fromMap(
      Map<String, dynamic> map) {
    return InsightFiltersLastObservedAtDateRange(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}
