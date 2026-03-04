enum KnownDataFlowStreams {
  valueMicrosoftEvent("Microsoft-Event"),
  valueMicrosoftInsightsMetrics("Microsoft-InsightsMetrics"),
  valueMicrosoftPerf("Microsoft-Perf"),
  valueMicrosoftSyslog("Microsoft-Syslog"),
  valueMicrosoftWindowsEvent("Microsoft-WindowsEvent");

  const KnownDataFlowStreams(this.wireValue);
  final String wireValue;

  static KnownDataFlowStreams fromValue(String value) {
    for (final item in KnownDataFlowStreams.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KnownDataFlowStreams value: $value');
  }
}
