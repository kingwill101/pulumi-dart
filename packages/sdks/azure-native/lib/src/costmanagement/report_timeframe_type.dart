/// The time frame for pulling data for the report. If custom, then a specific time period must be provided.
enum ReportTimeframeType {
  valueWeekToDate("WeekToDate"),
  valueMonthToDate("MonthToDate"),
  valueYearToDate("YearToDate"),
  valueCustom("Custom");

  const ReportTimeframeType(this.wireValue);
  final String wireValue;

  static ReportTimeframeType fromValue(String value) {
    for (final item in ReportTimeframeType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReportTimeframeType value: $value');
  }
}

