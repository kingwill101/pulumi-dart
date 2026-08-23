/// Kind of synchronization on trigger.
enum TriggerKind {
  valueScheduleBased("ScheduleBased");

  const TriggerKind(this.wireValue);
  final String wireValue;

  static TriggerKind fromValue(String value) {
    for (final item in TriggerKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TriggerKind value: $value');
  }
}
