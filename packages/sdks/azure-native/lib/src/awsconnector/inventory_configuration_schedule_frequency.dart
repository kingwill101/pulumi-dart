/// Specifies the schedule for generating inventory results.
enum InventoryConfigurationScheduleFrequency {
  daily("Daily"),
  weekly("Weekly");

  const InventoryConfigurationScheduleFrequency(this.wireValue);
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
