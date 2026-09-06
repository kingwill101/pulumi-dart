import 'package:pulumi/pulumi.dart' as pulumi;

/// Frequency of the schedule.
enum ScheduleFrequency implements pulumi.PulumiEnum<String> {
  daily("Daily"),
  weekly("Weekly"),
  monthly("Monthly");

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
