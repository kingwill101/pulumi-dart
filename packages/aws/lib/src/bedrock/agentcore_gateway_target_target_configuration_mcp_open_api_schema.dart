// ignore_for_file: unused_element, unnecessary_cast

import 'agentcore_gateway_target_target_configuration_mcp_open_api_schema_inline_payload.dart';
import 'agentcore_gateway_target_target_configuration_mcp_open_api_schema_s3.dart';

class AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchema {
  final AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchemaInlinePayload?
      inlinePayload;
  final AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchemaS3? s3;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchema].
  /// [inlinePayload] Optional.
  /// [s3] Optional.
  AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchema({
    this.inlinePayload,
    this.s3,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final inlinePayloadValue = inlinePayload;
    if (inlinePayloadValue != null) {
      map['inlinePayload'] = inlinePayloadValue.toMap();
    }
    final s3Value = s3;
    if (s3Value != null) {
      map['s3'] = s3Value.toMap();
    }
    return map;
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchema.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchema(
      inlinePayload: map['inlinePayload'] == null
          ? null
          : AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchemaInlinePayload
              .fromMap((map['inlinePayload'] as Map).cast<String, dynamic>()),
      s3: map['s3'] == null
          ? null
          : AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchemaS3.fromMap(
              (map['s3'] as Map).cast<String, dynamic>()),
    );
  }
}
