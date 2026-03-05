// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_target_target_configuration_mcp.dart';

class AgentcoreGatewayTargetTargetConfiguration {
  /// Model Context Protocol (MCP) configuration. See `mcp` below.
  final pulumi.Input<AgentcoreGatewayTargetTargetConfigurationMcp>? mcp;

  /// Creates a new [AgentcoreGatewayTargetTargetConfiguration].
  /// [mcp] Model Context Protocol (MCP) configuration. See `mcp` below.
  AgentcoreGatewayTargetTargetConfiguration({
    this.mcp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mcp': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetTargetConfigurationMcp, Map<String, dynamic>>(mcp, (value) => value.toMap()),
    };
  }

  factory AgentcoreGatewayTargetTargetConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfiguration(
      mcp: (() { final guardedValue = map['mcp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetTargetConfigurationMcp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

