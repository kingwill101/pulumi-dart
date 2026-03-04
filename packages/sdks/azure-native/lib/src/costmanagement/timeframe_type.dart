/// The time frame for pulling data for the report. If custom, then a specific time period must be provided.
enum TimeframeType {
  valueWeekToDate("WeekToDate"),
  valueMonthToDate("MonthToDate"),
  valueCustom("Custom");

  const TimeframeType(this.wireValue);
  final String wireValue;

  static TimeframeType fromValue(String value) {
    for (final item in TimeframeType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TimeframeType value: $value');
  }
}
