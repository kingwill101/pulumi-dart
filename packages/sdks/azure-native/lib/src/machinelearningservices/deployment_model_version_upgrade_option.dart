/// Deployment model version upgrade option.
enum DeploymentModelVersionUpgradeOption {
  valueOnceNewDefaultVersionAvailable("OnceNewDefaultVersionAvailable"),
  valueOnceCurrentVersionExpired("OnceCurrentVersionExpired"),
  valueNoAutoUpgrade("NoAutoUpgrade");

  const DeploymentModelVersionUpgradeOption(this.wireValue);
  final String wireValue;

  static DeploymentModelVersionUpgradeOption fromValue(String value) {
    for (final item in DeploymentModelVersionUpgradeOption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeploymentModelVersionUpgradeOption value: $value');
  }
}
