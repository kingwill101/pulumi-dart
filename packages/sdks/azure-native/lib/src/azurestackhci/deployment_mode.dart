import 'package:pulumi/pulumi.dart' as pulumi;

/// Deployment mode to trigger job.
enum DeploymentMode implements pulumi.PulumiEnum<String> {
  validate("Validate"),
  deploy("Deploy");

  const DeploymentMode(this.wireValue);
  @override
  final String wireValue;

  static DeploymentMode fromValue(String value) {
    for (final item in DeploymentMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeploymentMode value: $value');
  }
}
