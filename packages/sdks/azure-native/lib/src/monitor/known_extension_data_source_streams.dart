enum KnownExtensionDataSourceStreams {
  valueMicrosoftEvent("Microsoft-Event"),
  valueMicrosoftInsightsMetrics("Microsoft-InsightsMetrics"),
  valueMicrosoftPerf("Microsoft-Perf"),
  valueMicrosoftSyslog("Microsoft-Syslog"),
  valueMicrosoftWindowsEvent("Microsoft-WindowsEvent");

  const KnownExtensionDataSourceStreams(this.wireValue);
  final String wireValue;

  static KnownExtensionDataSourceStreams fromValue(String value) {
    for (final item in KnownExtensionDataSourceStreams.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KnownExtensionDataSourceStreams value: $value');
  }
}
