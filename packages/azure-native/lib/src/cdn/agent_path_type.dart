/// The type of the path.
enum AgentPathType {
  chat("Chat"),
  mcpServer("McpServer");

  const AgentPathType(this.value);
  final String value;

  static AgentPathType fromValue(String value) {
    for (final item in AgentPathType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AgentPathType value: $value');
  }
}

