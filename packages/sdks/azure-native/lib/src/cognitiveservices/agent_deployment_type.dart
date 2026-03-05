/// Gets or sets the type of deployment for the agent.
enum AgentDeploymentType {
  valueManaged("Managed"),
  valueHosted("Hosted"),
  valueCustom("Custom");

  const AgentDeploymentType(this.wireValue);
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

