enum KnownWindowsEventLogDataSourceStreams {
  valueMicrosoftWindowsEvent("Microsoft-WindowsEvent"),
  valueMicrosoftEvent("Microsoft-Event");

  const KnownWindowsEventLogDataSourceStreams(this.wireValue);
  final String wireValue;

  static KnownWindowsEventLogDataSourceStreams fromValue(String value) {
    for (final item in KnownWindowsEventLogDataSourceStreams.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KnownWindowsEventLogDataSourceStreams value: $value');
  }
}

