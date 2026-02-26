/// Deprecated. Must use the MetricDescriptor.launch_stage instead.
enum MetricDescriptorMetadataLaunchStage3 {
  launchStageUnspecified("LAUNCH_STAGE_UNSPECIFIED"),
  unimplemented("UNIMPLEMENTED"),
  prelaunch("PRELAUNCH"),
  earlyAccess("EARLY_ACCESS"),
  alpha("ALPHA"),
  beta("BETA"),
  ga("GA"),
  deprecated("DEPRECATED");

  const MetricDescriptorMetadataLaunchStage3(this.value);
  final String value;

  static MetricDescriptorMetadataLaunchStage3 fromValue(String value) {
    for (final item in MetricDescriptorMetadataLaunchStage3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown MetricDescriptorMetadataLaunchStage3 value: $value');
  }
}
