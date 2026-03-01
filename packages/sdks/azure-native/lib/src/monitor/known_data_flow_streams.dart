enum KnownDataFlowStreams {
  valueMicrosoftEvent("Microsoft-Event"),
  valueMicrosoftInsightsMetrics("Microsoft-InsightsMetrics"),
  valueMicrosoftPerf("Microsoft-Perf"),
  valueMicrosoftSyslog("Microsoft-Syslog"),
  valueMicrosoftWindowsEvent("Microsoft-WindowsEvent");

  const KnownDataFlowStreams(this.value);
  final String value;

  static KnownDataFlowStreams fromValue(String value) {
    for (final item in KnownDataFlowStreams.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KnownDataFlowStreams value: $value');
  }
}

