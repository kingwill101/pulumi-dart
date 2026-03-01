/// Deprecated. Must use the MetricDescriptor.launch_stage instead.
enum MetricDescriptorMetadataLaunchStage {
  launchStageUnspecified("LAUNCH_STAGE_UNSPECIFIED"),
  unimplemented("UNIMPLEMENTED"),
  prelaunch("PRELAUNCH"),
  earlyAccess("EARLY_ACCESS"),
  alpha("ALPHA"),
  beta("BETA"),
  ga("GA"),
  deprecated("DEPRECATED");

  const MetricDescriptorMetadataLaunchStage(this.value);
  final String value;

  static MetricDescriptorMetadataLaunchStage fromValue(String value) {
    for (final item in MetricDescriptorMetadataLaunchStage.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown MetricDescriptorMetadataLaunchStage value: $value',
    );
  }
}
