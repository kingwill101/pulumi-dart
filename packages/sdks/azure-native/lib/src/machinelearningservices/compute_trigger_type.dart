/// [Required] The schedule trigger type.
enum ComputeTriggerType {
  valueRecurrence("Recurrence"),
  valueCron("Cron");

  const ComputeTriggerType(this.value);
  final String value;

  static ComputeTriggerType fromValue(String value) {
    for (final item in ComputeTriggerType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComputeTriggerType value: $value');
  }
}

