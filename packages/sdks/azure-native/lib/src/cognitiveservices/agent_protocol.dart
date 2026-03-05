/// The protocol used by the agent/exposed by a deployment.
enum AgentProtocol {
  valueAgent("Agent"),
  valueA2A("A2A"),
  valueResponses("Responses");

  const AgentProtocol(this.wireValue);
  final String wireValue;

  static AgentProtocol fromValue(String value) {
    for (final item in AgentProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AgentProtocol value: $value');
  }
}

