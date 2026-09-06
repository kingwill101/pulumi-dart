import 'package:pulumi/pulumi.dart' as pulumi;

/// The mode of an agent pool. A cluster must have at least one 'System' Agent Pool at all times. For additional information on agent pool restrictions and best practices, see: https://docs.microsoft.com/azure/aks/use-system-pools
enum AgentPoolMode implements pulumi.PulumiEnum<String> {
  valueSystem("System"),
  valueUser("User"),
  valueGateway("Gateway");

  const AgentPoolMode(this.wireValue);
  @override
  final String wireValue;

  static AgentPoolMode fromValue(String value) {
    for (final item in AgentPoolMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AgentPoolMode value: $value');
  }
}
