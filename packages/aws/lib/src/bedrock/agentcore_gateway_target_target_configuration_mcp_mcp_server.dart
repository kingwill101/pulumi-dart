// ignore_for_file: unused_element, unnecessary_cast

class AgentcoreGatewayTargetTargetConfigurationMcpMcpServer {
  /// Endpoint for the MCP server target configuration.
  final String endpoint;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationMcpMcpServer].
  /// [endpoint] Endpoint for the MCP server target configuration.
  AgentcoreGatewayTargetTargetConfigurationMcpMcpServer({
    required this.endpoint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endpoint'] = endpoint;
    return map;
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpMcpServer.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationMcpMcpServer(
      endpoint: map['endpoint'] as String,
    );
  }
}
