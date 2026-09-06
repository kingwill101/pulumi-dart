import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the path.
enum AgentPathType implements pulumi.PulumiEnum<String> {
  chat("Chat"),
  mcpServer("McpServer");

  const AgentPathType(this.wireValue);
  @override
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
