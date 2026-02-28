/// Platform hosting this deployment.
enum DeploymentPlatform {
  platformUnspecified("PLATFORM_UNSPECIFIED"),
  gke("GKE"),
  flex("FLEX"),
  custom("CUSTOM");

  const DeploymentPlatform(this.value);
  final String value;

  static DeploymentPlatform fromValue(String value) {
    for (final item in DeploymentPlatform.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeploymentPlatform value: $value');
  }
}

