/// Optional. The launch stage of the metric definition.
enum MetricDescriptorLaunchStage {
  launchStageUnspecified("LAUNCH_STAGE_UNSPECIFIED"),
  unimplemented("UNIMPLEMENTED"),
  prelaunch("PRELAUNCH"),
  earlyAccess("EARLY_ACCESS"),
  alpha("ALPHA"),
  beta("BETA"),
  ga("GA"),
  deprecated("DEPRECATED");

  const MetricDescriptorLaunchStage(this.value);
  final String value;

  static MetricDescriptorLaunchStage fromValue(String value) {
    for (final item in MetricDescriptorLaunchStage.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MetricDescriptorLaunchStage value: $value');
  }
}
