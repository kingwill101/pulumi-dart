/// The time frame for pulling data for the report. If custom, then a specific time period must be provided.
enum TimeframeType {
  valueWeekToDate("WeekToDate"),
  valueMonthToDate("MonthToDate"),
  valueCustom("Custom");

  const TimeframeType(this.value);
  final String value;

  static TimeframeType fromValue(String value) {
    for (final item in TimeframeType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TimeframeType value: $value');
  }
}

