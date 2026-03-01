// ignore_for_file: unused_element, unnecessary_cast


class InsightFiltersProcessTerminatedAtDateRange {
  /// A date range unit for the date filter. Valid values: `DAYS`.
  final String unit;
  /// A date range value for the date filter, provided as an Integer.
  final int value;

  /// Creates a new [InsightFiltersProcessTerminatedAtDateRange].
  /// [unit] A date range unit for the date filter. Valid values: `DAYS`.
  /// [value] A date range value for the date filter, provided as an Integer.
  InsightFiltersProcessTerminatedAtDateRange({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unit': unit,
      'value': value,
    };
  }

  factory InsightFiltersProcessTerminatedAtDateRange.fromMap(Map<String, dynamic> map) {
    return InsightFiltersProcessTerminatedAtDateRange(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}

