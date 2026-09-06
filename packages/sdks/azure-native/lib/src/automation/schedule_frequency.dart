import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the frequency of the schedule.
enum ScheduleFrequency implements pulumi.PulumiEnum<String> {
  oneTime("OneTime"),
  day("Day"),
  hour("Hour"),
  week("Week"),
  month("Month"),
  minute("Minute");

  const ScheduleFrequency(this.wireValue);
  @override
  final String wireValue;

  static ScheduleFrequency fromValue(String value) {
    for (final item in ScheduleFrequency.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScheduleFrequency value: $value');
  }
}
