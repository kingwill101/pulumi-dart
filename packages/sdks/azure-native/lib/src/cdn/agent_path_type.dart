/// The type of the path.
enum AgentPathType {
  chat("Chat"),
  mcpServer("McpServer");

  const AgentPathType(this.wireValue);
  final String wireValue;

  static AgentPathType fromValue(String value) {
    for (final item in AgentPathType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AgentPathType value: $value');
  }
}
