/// Kind of synchronization on trigger.
enum TriggerKind {
  valueScheduleBased("ScheduleBased");

  const TriggerKind(this.value);
  final String value;

  static TriggerKind fromValue(String value) {
    for (final item in TriggerKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TriggerKind value: $value');
  }
}

