import 'package:pulumi/pulumi.dart' as pulumi;

/// The time frame for pulling data for the report. If custom, then a specific time period must be provided.
enum TimeframeType implements pulumi.PulumiEnum<String> {
  valueWeekToDate("WeekToDate"),
  valueMonthToDate("MonthToDate"),
  valueCustom("Custom");

  const TimeframeType(this.wireValue);
  @override
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
