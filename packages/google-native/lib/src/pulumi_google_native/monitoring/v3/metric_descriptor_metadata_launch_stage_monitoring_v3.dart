/// Deprecated. Must use the MetricDescriptor.launch_stage instead.
enum MetricDescriptorMetadataLaunchStageMonitoringV3 {
  launchStageUnspecified("LAUNCH_STAGE_UNSPECIFIED"),
  unimplemented("UNIMPLEMENTED"),
  prelaunch("PRELAUNCH"),
  earlyAccess("EARLY_ACCESS"),
  alpha("ALPHA"),
  beta("BETA"),
  ga("GA"),
  deprecated("DEPRECATED");

  const MetricDescriptorMetadataLaunchStageMonitoringV3(this.value);
  final String value;

  static MetricDescriptorMetadataLaunchStageMonitoringV3 fromValue(
      String value) {
    for (final item in MetricDescriptorMetadataLaunchStageMonitoringV3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown MetricDescriptorMetadataLaunchStageMonitoringV3 value: $value');
  }
}
