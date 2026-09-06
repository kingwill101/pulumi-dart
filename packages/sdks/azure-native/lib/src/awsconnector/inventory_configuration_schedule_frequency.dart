import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the schedule for generating inventory results.
enum InventoryConfigurationScheduleFrequency implements pulumi.PulumiEnum<String> {
  daily("Daily"),
  weekly("Weekly");

  const InventoryConfigurationScheduleFrequency(this.wireValue);
  @override
  final String wireValue;

  static InventoryConfigurationScheduleFrequency fromValue(String value) {
    for (final item in InventoryConfigurationScheduleFrequency.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InventoryConfigurationScheduleFrequency value: $value');
  }
}
