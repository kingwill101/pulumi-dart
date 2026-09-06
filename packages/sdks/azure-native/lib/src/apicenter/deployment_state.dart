import 'package:pulumi/pulumi.dart' as pulumi;

/// State of API deployment.
enum DeploymentState implements pulumi.PulumiEnum<String> {
  active("active"),
  inactive("inactive");

  const DeploymentState(this.wireValue);
  @override
  final String wireValue;

  static DeploymentState fromValue(String value) {
    for (final item in DeploymentState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeploymentState value: $value');
  }
}
