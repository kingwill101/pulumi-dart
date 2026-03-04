/// Trigger Kind.
enum TriggerEventType {
  valueFileEvent("FileEvent"),
  valuePeriodicTimerEvent("PeriodicTimerEvent");

  const TriggerEventType(this.wireValue);
  final String wireValue;

  static TriggerEventType fromValue(String value) {
    for (final item in TriggerEventType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TriggerEventType value: $value');
  }
}
