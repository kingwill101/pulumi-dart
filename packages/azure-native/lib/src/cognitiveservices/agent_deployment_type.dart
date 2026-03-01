/// Gets or sets the type of deployment for the agent.
enum AgentDeploymentType {
  valueManaged("Managed"),
  valueHosted("Hosted"),
  valueCustom("Custom");

  const AgentDeploymentType(this.value);
  final String value;

  static AgentDeploymentType fromValue(String value) {
    for (final item in AgentDeploymentType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AgentDeploymentType value: $value');
  }
}

