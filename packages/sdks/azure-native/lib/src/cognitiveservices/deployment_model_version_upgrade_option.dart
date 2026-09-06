import 'package:pulumi/pulumi.dart' as pulumi;

/// Deployment model version upgrade option.
enum DeploymentModelVersionUpgradeOption implements pulumi.PulumiEnum<String> {
  valueOnceNewDefaultVersionAvailable("OnceNewDefaultVersionAvailable"),
  valueOnceCurrentVersionExpired("OnceCurrentVersionExpired"),
  valueNoAutoUpgrade("NoAutoUpgrade");

  const DeploymentModelVersionUpgradeOption(this.wireValue);
  @override
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
