// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersUpdatedAtDateRange {
  /// A date range unit for the date filter. Valid values: `DAYS`.
  final String unit;

  /// A date range value for the date filter, provided as an Integer.
  final int value;

  InsightFiltersUpdatedAtDateRange({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['unit'] = unit;
    map['value'] = value;
    return map;
  }

  factory InsightFiltersUpdatedAtDateRange.fromMap(Map<String, dynamic> map) {
    return InsightFiltersUpdatedAtDateRange(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}
