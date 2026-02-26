/// Platform hosting this deployment.
enum DeploymentPlatform2 {
  platformUnspecified("PLATFORM_UNSPECIFIED"),
  gke("GKE"),
  flex("FLEX"),
  custom("CUSTOM");

  const DeploymentPlatform2(this.value);
  final String value;

  static DeploymentPlatform2 fromValue(String value) {
    for (final item in DeploymentPlatform2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeploymentPlatform2 value: $value');
  }
}
