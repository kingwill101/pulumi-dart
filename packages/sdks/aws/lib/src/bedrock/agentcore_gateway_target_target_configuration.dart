// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_target_target_configuration_http.dart';
import 'agentcore_gateway_target_target_configuration_inference.dart';
import 'agentcore_gateway_target_target_configuration_mcp.dart';

class AgentcoreGatewayTargetTargetConfiguration {
  /// HTTP target configuration for routing requests directly to an AgentCore Runtime agent. See `http` Block below.
  final pulumi.Input<AgentcoreGatewayTargetTargetConfigurationHttp?>? http;
  /// Inference target configuration for routing requests to a large language model (LLM) provider, either through a built-in connector or an explicitly configured provider. See `inference` Block below.
  final pulumi.Input<AgentcoreGatewayTargetTargetConfigurationInference?>? inference;
  /// Model Context Protocol (MCP) configuration. See `mcp` Block below.
  final pulumi.Input<AgentcoreGatewayTargetTargetConfigurationMcp?>? mcp;

  /// Creates a new [AgentcoreGatewayTargetTargetConfiguration].
  /// [http] HTTP target configuration for routing requests directly to an AgentCore Runtime agent. See `http` Block below.
  /// [inference] Inference target configuration for routing requests to a large language model (LLM) provider, either through a built-in connector or an explicitly configured provider. See `inference` Block below.
  /// [mcp] Model Context Protocol (MCP) configuration. See `mcp` Block below.
  const AgentcoreGatewayTargetTargetConfiguration({
    this.http,
    this.inference,
    this.mcp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'http': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetTargetConfigurationHttp, Map<String, dynamic>>(http, (value) => value.toMap()),
      'inference': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetTargetConfigurationInference, Map<String, dynamic>>(inference, (value) => value.toMap()),
      'mcp': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetTargetConfigurationMcp, Map<String, dynamic>>(mcp, (value) => value.toMap()),
    };
  }

  factory AgentcoreGatewayTargetTargetConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfiguration(
      http: (() { final guardedValue = map['http']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetTargetConfigurationHttp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inference: (() { final guardedValue = map['inference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetTargetConfigurationInference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mcp: (() { final guardedValue = map['mcp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetTargetConfigurationMcp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
