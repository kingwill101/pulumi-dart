/// The protocol used by the agent/exposed by a deployment.
enum AgentProtocol {
  valueAgent("Agent"),
  valueA2A("A2A"),
  valueResponses("Responses");

  const AgentProtocol(this.value);
  final String value;

  static AgentProtocol fromValue(String value) {
    for (final item in AgentProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AgentProtocol value: $value');
  }
}

