/// Optional. The launch stage of the metric definition.
enum MetricDescriptorLaunchStage3 {
  launchStageUnspecified("LAUNCH_STAGE_UNSPECIFIED"),
  unimplemented("UNIMPLEMENTED"),
  prelaunch("PRELAUNCH"),
  earlyAccess("EARLY_ACCESS"),
  alpha("ALPHA"),
  beta("BETA"),
  ga("GA"),
  deprecated("DEPRECATED");

  const MetricDescriptorLaunchStage3(this.value);
  final String value;

  static MetricDescriptorLaunchStage3 fromValue(String value) {
    for (final item in MetricDescriptorLaunchStage3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MetricDescriptorLaunchStage3 value: $value');
  }
}
