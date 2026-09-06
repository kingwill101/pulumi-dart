import 'package:pulumi/pulumi.dart' as pulumi;

/// The time frame for pulling data for the report. If custom, then a specific time period must be provided.
enum ReportTimeframeType implements pulumi.PulumiEnum<String> {
  valueWeekToDate("WeekToDate"),
  valueMonthToDate("MonthToDate"),
  valueYearToDate("YearToDate"),
  valueCustom("Custom");

  const ReportTimeframeType(this.wireValue);
  @override
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
