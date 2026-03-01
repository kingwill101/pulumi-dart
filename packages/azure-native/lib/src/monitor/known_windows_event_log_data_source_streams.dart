enum KnownWindowsEventLogDataSourceStreams {
  valueMicrosoftWindowsEvent("Microsoft-WindowsEvent"),
  valueMicrosoftEvent("Microsoft-Event");

  const KnownWindowsEventLogDataSourceStreams(this.value);
  final String value;

  static KnownWindowsEventLogDataSourceStreams fromValue(String value) {
    for (final item in KnownWindowsEventLogDataSourceStreams.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KnownWindowsEventLogDataSourceStreams value: $value');
  }
}

