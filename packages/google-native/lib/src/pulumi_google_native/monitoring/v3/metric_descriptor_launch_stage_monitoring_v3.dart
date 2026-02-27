/// Optional. The launch stage of the metric definition.
enum MetricDescriptorLaunchStageMonitoringV3 {
  launchStageUnspecified("LAUNCH_STAGE_UNSPECIFIED"),
  unimplemented("UNIMPLEMENTED"),
  prelaunch("PRELAUNCH"),
  earlyAccess("EARLY_ACCESS"),
  alpha("ALPHA"),
  beta("BETA"),
  ga("GA"),
  deprecated("DEPRECATED");

  const MetricDescriptorLaunchStageMonitoringV3(this.value);
  final String value;

  static MetricDescriptorLaunchStageMonitoringV3 fromValue(String value) {
    for (final item in MetricDescriptorLaunchStageMonitoringV3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown MetricDescriptorLaunchStageMonitoringV3 value: $value');
  }
}
