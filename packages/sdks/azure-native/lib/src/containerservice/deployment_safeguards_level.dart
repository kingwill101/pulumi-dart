import 'package:pulumi/pulumi.dart' as pulumi;

/// The deployment safeguards level. Possible values are Warn and Enforce
enum DeploymentSafeguardsLevel implements pulumi.PulumiEnum<String> {
  warn("Warn"),
  enforce("Enforce");

  const DeploymentSafeguardsLevel(this.wireValue);
  @override
  final String wireValue;

  static DeploymentSafeguardsLevel fromValue(String value) {
    for (final item in DeploymentSafeguardsLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeploymentSafeguardsLevel value: $value');
  }
}
