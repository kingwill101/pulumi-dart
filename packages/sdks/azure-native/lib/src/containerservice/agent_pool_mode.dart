/// The mode of an agent pool. A cluster must have at least one 'System' Agent Pool at all times. For additional information on agent pool restrictions and best practices, see: https://docs.microsoft.com/azure/aks/use-system-pools
enum AgentPoolMode {
  valueSystem("System"),
  valueUser("User"),
  valueGateway("Gateway");

  const AgentPoolMode(this.value);
  final String value;

  static AgentPoolMode fromValue(String value) {
    for (final item in AgentPoolMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AgentPoolMode value: $value');
  }
}

