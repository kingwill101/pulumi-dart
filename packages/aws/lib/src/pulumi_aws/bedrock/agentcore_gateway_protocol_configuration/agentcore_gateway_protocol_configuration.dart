// ignore_for_file: unused_element, unnecessary_cast

import '../agentcore_gateway_protocol_configuration_mcp/agentcore_gateway_protocol_configuration_mcp.dart';

class AgentcoreGatewayProtocolConfiguration {
  /// Model Context Protocol (MCP) configuration block. See <span pulumi-lang-nodejs="`mcp`" pulumi-lang-dotnet="`Mcp`" pulumi-lang-go="`mcp`" pulumi-lang-python="`mcp`" pulumi-lang-yaml="`mcp`" pulumi-lang-java="`mcp`">`mcp`</span> below.
  final AgentcoreGatewayProtocolConfigurationMcp? mcp;

  AgentcoreGatewayProtocolConfiguration({
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

  factory AgentcoreGatewayProtocolConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreGatewayProtocolConfiguration(
      mcp: map['mcp'] == null
          ? null
          : AgentcoreGatewayProtocolConfigurationMcp.fromMap(
              (map['mcp'] as Map).cast<String, dynamic>()),
    );
  }
}
