enum ScanConfigTargetPlatformsItem {
  targetPlatformUnspecified("TARGET_PLATFORM_UNSPECIFIED"),
  appEngine("APP_ENGINE"),
  compute("COMPUTE"),
  cloudRun("CLOUD_RUN"),
  cloudFunctions("CLOUD_FUNCTIONS");

  const ScanConfigTargetPlatformsItem(this.value);
  final String value;

  static ScanConfigTargetPlatformsItem fromValue(String value) {
    for (final item in ScanConfigTargetPlatformsItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScanConfigTargetPlatformsItem value: $value');
  }
}

