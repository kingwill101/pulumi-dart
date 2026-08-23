// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_target_target_configuration_mcp_mcp_server_mcp_tool_schema_inline_payload.dart';
import 'agentcore_gateway_target_target_configuration_mcp_mcp_server_mcp_tool_schema_s3.dart';

class AgentcoreGatewayTargetTargetConfigurationMcpMcpServerMcpToolSchema {
  /// Inline tool schema payload. The `inlinePayload` block requires a `payload` (string) containing the MCP tool schema definition.
  final pulumi.Input<AgentcoreGatewayTargetTargetConfigurationMcpMcpServerMcpToolSchemaInlinePayload>? inlinePayload;
  /// S3 location of the tool schema. See `s3` below.
  final pulumi.Input<AgentcoreGatewayTargetTargetConfigurationMcpMcpServerMcpToolSchemaS3>? s3;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationMcpMcpServerMcpToolSchema].
  /// [inlinePayload] Inline tool schema payload. The `inlinePayload` block requires a `payload` (string) containing the MCP tool schema definition.
  /// [s3] S3 location of the tool schema. See `s3` below.
  const AgentcoreGatewayTargetTargetConfigurationMcpMcpServerMcpToolSchema({
    this.inlinePayload,
    this.s3,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inlinePayload': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetTargetConfigurationMcpMcpServerMcpToolSchemaInlinePayload, Map<String, dynamic>>(inlinePayload, (value) => value.toMap()),
      's3': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetTargetConfigurationMcpMcpServerMcpToolSchemaS3, Map<String, dynamic>>(s3, (value) => value.toMap()),
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpMcpServerMcpToolSchema.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationMcpMcpServerMcpToolSchema(
      inlinePayload: (() { final guardedValue = map['inlinePayload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetTargetConfigurationMcpMcpServerMcpToolSchemaInlinePayload.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3: (() { final guardedValue = map['s3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetTargetConfigurationMcpMcpServerMcpToolSchemaS3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
