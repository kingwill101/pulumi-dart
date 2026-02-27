/// Optional. The launch stage of the metric definition.
enum MetricDescriptorLaunchStageServicemanagementV1 {
  launchStageUnspecified("LAUNCH_STAGE_UNSPECIFIED"),
  unimplemented("UNIMPLEMENTED"),
  prelaunch("PRELAUNCH"),
  earlyAccess("EARLY_ACCESS"),
  alpha("ALPHA"),
  beta("BETA"),
  ga("GA"),
  deprecated("DEPRECATED");

  const MetricDescriptorLaunchStageServicemanagementV1(this.value);
  final String value;

  static MetricDescriptorLaunchStageServicemanagementV1 fromValue(
      String value) {
    for (final item in MetricDescriptorLaunchStageServicemanagementV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown MetricDescriptorLaunchStageServicemanagementV1 value: $value');
  }
}
