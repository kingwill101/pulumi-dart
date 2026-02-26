// ignore_for_file: unused_element, unnecessary_cast

import '../agentcore_gateway_target_target_configuration_mcp/agentcore_gateway_target_target_configuration_mcp.dart';

class AgentcoreGatewayTargetTargetConfiguration {
  /// Model Context Protocol (MCP) configuration. See <span pulumi-lang-nodejs="`mcp`" pulumi-lang-dotnet="`Mcp`" pulumi-lang-go="`mcp`" pulumi-lang-python="`mcp`" pulumi-lang-yaml="`mcp`" pulumi-lang-java="`mcp`">`mcp`</span> below.
  final AgentcoreGatewayTargetTargetConfigurationMcp? mcp;

  AgentcoreGatewayTargetTargetConfiguration({
    this.mcp,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final mcpValue = mcp;
    if (mcpValue != null) {
      map['mcp'] = mcpValue.toMap();
    }
    return map;
  }

  factory AgentcoreGatewayTargetTargetConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfiguration(
      mcp: map['mcp'] == null
          ? null
          : AgentcoreGatewayTargetTargetConfigurationMcp.fromMap(
              (map['mcp'] as Map).cast<String, dynamic>()),
    );
  }
}
