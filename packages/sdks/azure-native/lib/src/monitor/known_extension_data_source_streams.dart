import 'package:pulumi/pulumi.dart' as pulumi;

enum KnownExtensionDataSourceStreams implements pulumi.PulumiEnum<String> {
  valueMicrosoftEvent("Microsoft-Event"),
  valueMicrosoftInsightsMetrics("Microsoft-InsightsMetrics"),
  valueMicrosoftPerf("Microsoft-Perf"),
  valueMicrosoftSyslog("Microsoft-Syslog"),
  valueMicrosoftWindowsEvent("Microsoft-WindowsEvent");

  const KnownExtensionDataSourceStreams(this.wireValue);
  @override
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
