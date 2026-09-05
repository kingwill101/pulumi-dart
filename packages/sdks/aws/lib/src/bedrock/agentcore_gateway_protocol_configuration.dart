// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_protocol_configuration_mcp.dart';

class AgentcoreGatewayProtocolConfiguration {
  /// Model Context Protocol (MCP) configuration block. See `mcp` below.
  final pulumi.Input<AgentcoreGatewayProtocolConfigurationMcp?>? mcp;

  /// Creates a new [AgentcoreGatewayProtocolConfiguration].
  /// [mcp] Model Context Protocol (MCP) configuration block. See `mcp` below.
  const AgentcoreGatewayProtocolConfiguration({
    this.mcp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mcp': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayProtocolConfigurationMcp, Map<String, dynamic>>(mcp, (value) => value.toMap()),
    };
  }

  factory AgentcoreGatewayProtocolConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayProtocolConfiguration(
      mcp: (() { final guardedValue = map['mcp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayProtocolConfigurationMcp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
