import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates whether or not this scheduled task is enabled.
enum ScheduleEnableStatus implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const ScheduleEnableStatus(this.wireValue);
  @override
  final String wireValue;

  static ScheduleEnableStatus fromValue(String value) {
    for (final item in ScheduleEnableStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScheduleEnableStatus value: $value');
  }
}
