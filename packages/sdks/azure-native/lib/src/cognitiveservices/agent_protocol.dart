/// The protocol used by the agent/exposed by a deployment.
enum AgentProtocol {
  agent("Agent"),
  a2A("A2A"),
  responses("Responses");

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
