enum SourceTriggerEvent {
  valueCommit("commit"),
  valuePullrequest("pullrequest");

  const SourceTriggerEvent(this.value);
  final String value;

  static SourceTriggerEvent fromValue(String value) {
    for (final item in SourceTriggerEvent.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SourceTriggerEvent value: $value');
  }
}

