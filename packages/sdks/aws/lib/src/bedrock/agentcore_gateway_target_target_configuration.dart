// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_target_target_configuration_http.dart';
import 'agentcore_gateway_target_target_configuration_mcp.dart';

class AgentcoreGatewayTargetTargetConfiguration {
  /// HTTP target configuration for routing requests directly to an AgentCore Runtime agent. See `http` below.
  final pulumi.Input<AgentcoreGatewayTargetTargetConfigurationHttp>? http;
  /// Model Context Protocol (MCP) configuration. See `mcp` below.
  final pulumi.Input<AgentcoreGatewayTargetTargetConfigurationMcp>? mcp;

  /// Creates a new [AgentcoreGatewayTargetTargetConfiguration].
  /// [http] HTTP target configuration for routing requests directly to an AgentCore Runtime agent. See `http` below.
  /// [mcp] Model Context Protocol (MCP) configuration. See `mcp` below.
  const AgentcoreGatewayTargetTargetConfiguration({
    this.http,
    this.mcp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'http': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetTargetConfigurationHttp, Map<String, dynamic>>(http, (value) => value.toMap()),
      'mcp': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetTargetConfigurationMcp, Map<String, dynamic>>(mcp, (value) => value.toMap()),
    };
  }

  factory AgentcoreGatewayTargetTargetConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfiguration(
      http: (() { final guardedValue = map['http']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetTargetConfigurationHttp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mcp: (() { final guardedValue = map['mcp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetTargetConfigurationMcp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
