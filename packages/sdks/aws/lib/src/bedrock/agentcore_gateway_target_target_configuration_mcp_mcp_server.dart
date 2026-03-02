// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayTargetTargetConfigurationMcpMcpServer {
  /// Endpoint for the MCP server target configuration.
  final pulumi.Input<String> endpoint;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationMcpMcpServer].
  /// [endpoint] Endpoint for the MCP server target configuration.
  AgentcoreGatewayTargetTargetConfigurationMcpMcpServer({
    required this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpMcpServer.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationMcpMcpServer(
      endpoint: (map['endpoint'] as String).input(),
    );
  }
}

