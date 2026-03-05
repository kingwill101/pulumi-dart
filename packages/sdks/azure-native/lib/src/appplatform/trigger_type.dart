/// Type of job trigger
enum TriggerType {
  valueManual("Manual");

  const TriggerType(this.wireValue);
  final String wireValue;

  static TriggerType fromValue(String value) {
    for (final item in TriggerType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TriggerType value: $value');
  }
}

