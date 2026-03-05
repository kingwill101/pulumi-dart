enum SourceTriggerEvent {
  valueCommit("commit"),
  valuePullrequest("pullrequest");

  const SourceTriggerEvent(this.wireValue);
  final String wireValue;

  static SourceTriggerEvent fromValue(String value) {
    for (final item in SourceTriggerEvent.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SourceTriggerEvent value: $value');
  }
}

