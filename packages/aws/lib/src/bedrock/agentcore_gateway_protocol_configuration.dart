// ignore_for_file: unused_element, unnecessary_cast

import 'agentcore_gateway_protocol_configuration_mcp.dart';

class AgentcoreGatewayProtocolConfiguration {
  /// Model Context Protocol (MCP) configuration block. See `mcp` below.
  final AgentcoreGatewayProtocolConfigurationMcp? mcp;

  /// Creates a new [AgentcoreGatewayProtocolConfiguration].
  /// [mcp] Model Context Protocol (MCP) configuration block. See `mcp` below.
  AgentcoreGatewayProtocolConfiguration({this.mcp});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'mcp': ?mcp == null ? null : mcp!.toMap()};
  }

  factory AgentcoreGatewayProtocolConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentcoreGatewayProtocolConfiguration(
      mcp: map['mcp'] == null
          ? null
          : AgentcoreGatewayProtocolConfigurationMcp.fromMap(
              (map['mcp'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
