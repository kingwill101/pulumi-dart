/// Optional. The launch stage of the metric definition.
enum MetricDescriptorLaunchStage2 {
  launchStageUnspecified("LAUNCH_STAGE_UNSPECIFIED"),
  unimplemented("UNIMPLEMENTED"),
  prelaunch("PRELAUNCH"),
  earlyAccess("EARLY_ACCESS"),
  alpha("ALPHA"),
  beta("BETA"),
  ga("GA"),
  deprecated("DEPRECATED");

  const MetricDescriptorLaunchStage2(this.value);
  final String value;

  static MetricDescriptorLaunchStage2 fromValue(String value) {
    for (final item in MetricDescriptorLaunchStage2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MetricDescriptorLaunchStage2 value: $value');
  }
}
