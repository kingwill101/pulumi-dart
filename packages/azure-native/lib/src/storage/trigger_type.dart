/// The trigger type of the storage task assignment execution
enum TriggerType {
  valueRunOnce("RunOnce"),
  valueOnSchedule("OnSchedule");

  const TriggerType(this.value);
  final String value;

  static TriggerType fromValue(String value) {
    for (final item in TriggerType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TriggerType value: $value');
  }
}

