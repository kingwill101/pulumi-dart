/// The current status of trigger.
enum TriggerStatus {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const TriggerStatus(this.value);
  final String value;

  static TriggerStatus fromValue(String value) {
    for (final item in TriggerStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TriggerStatus value: $value');
  }
}

