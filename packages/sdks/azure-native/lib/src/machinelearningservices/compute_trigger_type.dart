/// [Required] The schedule trigger type.
enum ComputeTriggerType {
  recurrence("Recurrence"),
  cron("Cron");

  const ComputeTriggerType(this.wireValue);
  final String wireValue;

  static ComputeTriggerType fromValue(String value) {
    for (final item in ComputeTriggerType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComputeTriggerType value: $value');
  }
}
