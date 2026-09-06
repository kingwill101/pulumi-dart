import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the type of deployment for the agent.
enum AgentDeploymentType implements pulumi.PulumiEnum<String> {
  managed("Managed"),
  hosted("Hosted"),
  custom("Custom");

  const AgentDeploymentType(this.wireValue);
  @override
  final String wireValue;

  static AgentDeploymentType fromValue(String value) {
    for (final item in AgentDeploymentType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AgentDeploymentType value: $value');
  }
}
