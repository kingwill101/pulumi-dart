/// Deployment model version upgrade option.
enum DeploymentModelVersionUpgradeOption {
  valueOnceNewDefaultVersionAvailable("OnceNewDefaultVersionAvailable"),
  valueOnceCurrentVersionExpired("OnceCurrentVersionExpired"),
  valueNoAutoUpgrade("NoAutoUpgrade");

  const DeploymentModelVersionUpgradeOption(this.value);
  final String value;

  static DeploymentModelVersionUpgradeOption fromValue(String value) {
    for (final item in DeploymentModelVersionUpgradeOption.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeploymentModelVersionUpgradeOption value: $value');
  }
}

