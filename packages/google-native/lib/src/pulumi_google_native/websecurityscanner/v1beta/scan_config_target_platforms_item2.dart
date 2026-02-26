enum ScanConfigTargetPlatformsItem2 {
  targetPlatformUnspecified("TARGET_PLATFORM_UNSPECIFIED"),
  appEngine("APP_ENGINE"),
  compute("COMPUTE"),
  cloudRun("CLOUD_RUN"),
  cloudFunctions("CLOUD_FUNCTIONS");

  const ScanConfigTargetPlatformsItem2(this.value);
  final String value;

  static ScanConfigTargetPlatformsItem2 fromValue(String value) {
    for (final item in ScanConfigTargetPlatformsItem2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScanConfigTargetPlatformsItem2 value: $value');
  }
}
