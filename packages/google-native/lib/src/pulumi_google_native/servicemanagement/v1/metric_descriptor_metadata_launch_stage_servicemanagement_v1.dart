/// Deprecated. Must use the MetricDescriptor.launch_stage instead.
enum MetricDescriptorMetadataLaunchStageServicemanagementV1 {
  launchStageUnspecified("LAUNCH_STAGE_UNSPECIFIED"),
  unimplemented("UNIMPLEMENTED"),
  prelaunch("PRELAUNCH"),
  earlyAccess("EARLY_ACCESS"),
  alpha("ALPHA"),
  beta("BETA"),
  ga("GA"),
  deprecated("DEPRECATED");

  const MetricDescriptorMetadataLaunchStageServicemanagementV1(this.value);
  final String value;

  static MetricDescriptorMetadataLaunchStageServicemanagementV1 fromValue(
      String value) {
    for (final item
        in MetricDescriptorMetadataLaunchStageServicemanagementV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown MetricDescriptorMetadataLaunchStageServicemanagementV1 value: $value');
  }
}
