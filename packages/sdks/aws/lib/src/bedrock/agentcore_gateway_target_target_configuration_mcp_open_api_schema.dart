// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_target_target_configuration_mcp_open_api_schema_inline_payload.dart';
import 'agentcore_gateway_target_target_configuration_mcp_open_api_schema_s3.dart';

class AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchema {
  final pulumi.Input<AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchemaInlinePayload>? inlinePayload;
  final pulumi.Input<AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchemaS3>? s3;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchema].
  /// [inlinePayload] Optional.
  /// [s3] Optional.
  const AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchema({
    this.inlinePayload,
    this.s3,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inlinePayload': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchemaInlinePayload, Map<String, dynamic>>(inlinePayload, (value) => value.toMap()),
      's3': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchemaS3, Map<String, dynamic>>(s3, (value) => value.toMap()),
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchema.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchema(
      inlinePayload: (() { final guardedValue = map['inlinePayload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchemaInlinePayload.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3: (() { final guardedValue = map['s3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchemaS3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
