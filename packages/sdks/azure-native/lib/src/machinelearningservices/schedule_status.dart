import 'package:pulumi/pulumi.dart' as pulumi;

/// Is the schedule enabled or disabled?
enum ScheduleStatus implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const ScheduleStatus(this.wireValue);
  @override
  final String wireValue;

  static ScheduleStatus fromValue(String value) {
    for (final item in ScheduleStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScheduleStatus value: $value');
  }
}
