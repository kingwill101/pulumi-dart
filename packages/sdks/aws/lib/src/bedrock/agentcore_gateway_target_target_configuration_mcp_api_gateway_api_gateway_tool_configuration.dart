// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_target_target_configuration_mcp_api_gateway_api_gateway_tool_configuration_tool_filter.dart';
import 'agentcore_gateway_target_target_configuration_mcp_api_gateway_api_gateway_tool_configuration_tool_override.dart';

class AgentcoreGatewayTargetTargetConfigurationMcpApiGatewayApiGatewayToolConfiguration {
  /// Repeatable block of path and method patterns to expose as tools. See `toolFilter` below.
  final pulumi.Input<List<AgentcoreGatewayTargetTargetConfigurationMcpApiGatewayApiGatewayToolConfigurationToolFilter>?>? toolFilters;
  /// Repeatable block of explicit tool definitions with optional custom names and descriptions. See `toolOverride` below.
  final pulumi.Input<List<AgentcoreGatewayTargetTargetConfigurationMcpApiGatewayApiGatewayToolConfigurationToolOverride>?>? toolOverrides;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationMcpApiGatewayApiGatewayToolConfiguration].
  /// [toolFilters] Repeatable block of path and method patterns to expose as tools. See `toolFilter` below.
  /// [toolOverrides] Repeatable block of explicit tool definitions with optional custom names and descriptions. See `toolOverride` below.
  const AgentcoreGatewayTargetTargetConfigurationMcpApiGatewayApiGatewayToolConfiguration({
    this.toolFilters,
    this.toolOverrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'toolFilters': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreGatewayTargetTargetConfigurationMcpApiGatewayApiGatewayToolConfigurationToolFilter>, List<Map<String, dynamic>>>(toolFilters, (value) => pulumi.Input.encodeList<AgentcoreGatewayTargetTargetConfigurationMcpApiGatewayApiGatewayToolConfigurationToolFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'toolOverrides': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreGatewayTargetTargetConfigurationMcpApiGatewayApiGatewayToolConfigurationToolOverride>, List<Map<String, dynamic>>>(toolOverrides, (value) => pulumi.Input.encodeList<AgentcoreGatewayTargetTargetConfigurationMcpApiGatewayApiGatewayToolConfigurationToolOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpApiGatewayApiGatewayToolConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationMcpApiGatewayApiGatewayToolConfiguration(
      toolFilters: (() { final guardedValue = map['toolFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreGatewayTargetTargetConfigurationMcpApiGatewayApiGatewayToolConfigurationToolFilter>(guardedValue, (value) => AgentcoreGatewayTargetTargetConfigurationMcpApiGatewayApiGatewayToolConfigurationToolFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      toolOverrides: (() { final guardedValue = map['toolOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreGatewayTargetTargetConfigurationMcpApiGatewayApiGatewayToolConfigurationToolOverride>(guardedValue, (value) => AgentcoreGatewayTargetTargetConfigurationMcpApiGatewayApiGatewayToolConfigurationToolOverride.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
