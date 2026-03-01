/// Specifies the schedule for generating inventory results.
enum InventoryConfigurationScheduleFrequency {
  daily("Daily"),
  weekly("Weekly");

  const InventoryConfigurationScheduleFrequency(this.value);
  final String value;

  static InventoryConfigurationScheduleFrequency fromValue(String value) {
    for (final item in InventoryConfigurationScheduleFrequency.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InventoryConfigurationScheduleFrequency value: $value');
  }
}

