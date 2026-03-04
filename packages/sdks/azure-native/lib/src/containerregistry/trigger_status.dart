/// The current status of trigger.
enum TriggerStatus {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const TriggerStatus(this.wireValue);
  final String wireValue;

  static TriggerStatus fromValue(String value) {
    for (final item in TriggerStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TriggerStatus value: $value');
  }
}
