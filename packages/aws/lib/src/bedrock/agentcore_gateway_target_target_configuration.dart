// ignore_for_file: unused_element, unnecessary_cast

import 'agentcore_gateway_target_target_configuration_mcp.dart';

class AgentcoreGatewayTargetTargetConfiguration {
  /// Model Context Protocol (MCP) configuration. See `mcp` below.
  final AgentcoreGatewayTargetTargetConfigurationMcp? mcp;

  /// Creates a new [AgentcoreGatewayTargetTargetConfiguration].
  /// [mcp] Model Context Protocol (MCP) configuration. See `mcp` below.
  AgentcoreGatewayTargetTargetConfiguration({this.mcp});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'mcp': ?mcp == null ? null : mcp!.toMap()};
  }

  factory AgentcoreGatewayTargetTargetConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentcoreGatewayTargetTargetConfiguration(
      mcp: map['mcp'] == null
          ? null
          : AgentcoreGatewayTargetTargetConfigurationMcp.fromMap(
              (map['mcp'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
