// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_target_target_configuration_mcp_mcp_server_mcp_tool_schema.dart';

class AgentcoreGatewayTargetTargetConfigurationMcpMcpServer {
  /// Endpoint for the MCP server target configuration.
  final pulumi.Input<String> endpoint;
  /// Listing mode for the MCP server target. Valid values are `DEFAULT` and `DYNAMIC`. MCP resources for `DEFAULT` targets are cached at the control plane for faster access, while resources for `DYNAMIC` targets are retrieved dynamically when listing tools.
  final pulumi.Input<String>? listingMode;
  /// Tool schema configuration for the MCP server target. Supported only when the credential provider is configured with an authorization code grant type. When set, dynamic tool discovery and synchronization are disabled. See `mcpToolSchema` below.
  final pulumi.Input<AgentcoreGatewayTargetTargetConfigurationMcpMcpServerMcpToolSchema>? mcpToolSchema;
  /// Priority for resolving MCP server targets with shared resource URIs. Lower values take precedence. Defaults to `1000` when not set.
  final pulumi.Input<int>? resourcePriority;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationMcpMcpServer].
  /// [endpoint] Endpoint for the MCP server target configuration.
  /// [listingMode] Listing mode for the MCP server target. Valid values are `DEFAULT` and `DYNAMIC`. MCP resources for `DEFAULT` targets are cached at the control plane for faster access, while resources for `DYNAMIC` targets are retrieved dynamically when listing tools.
  /// [mcpToolSchema] Tool schema configuration for the MCP server target. Supported only when the credential provider is configured with an authorization code grant type. When set, dynamic tool discovery and synchronization are disabled. See `mcpToolSchema` below.
  /// [resourcePriority] Priority for resolving MCP server targets with shared resource URIs. Lower values take precedence. Defaults to `1000` when not set.
  const AgentcoreGatewayTargetTargetConfigurationMcpMcpServer({
    required this.endpoint,
    this.listingMode,
    this.mcpToolSchema,
    this.resourcePriority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
      'listingMode': ?listingMode,
      'mcpToolSchema': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetTargetConfigurationMcpMcpServerMcpToolSchema, Map<String, dynamic>>(mcpToolSchema, (value) => value.toMap()),
      'resourcePriority': ?resourcePriority,
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpMcpServer.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationMcpMcpServer(
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      listingMode: (() { final guardedValue = map['listingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mcpToolSchema: (() { final guardedValue = map['mcpToolSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetTargetConfigurationMcpMcpServerMcpToolSchema.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourcePriority: (() { final guardedValue = map['resourcePriority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
