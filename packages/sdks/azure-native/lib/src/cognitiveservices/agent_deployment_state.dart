import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the current operational state of the deployment (and, intrinsically, of the comprising agents).
enum AgentDeploymentState implements pulumi.PulumiEnum<String> {
  starting("Starting"),
  running("Running"),
  stopping("Stopping"),
  stopped("Stopped"),
  failed("Failed"),
  deleting("Deleting"),
  deleted("Deleted"),
  updating("Updating");

  const AgentDeploymentState(this.wireValue);
  @override
  final String wireValue;

  static AgentDeploymentState fromValue(String value) {
    for (final item in AgentDeploymentState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AgentDeploymentState value: $value');
  }
}
