// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_target_target_configuration_mcp_lambda_tool_schema_inline_payload.dart';
import 'agentcore_gateway_target_target_configuration_mcp_lambda_tool_schema_s3.dart';

class AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchema {
  /// Inline tool definition. See `inlinePayload` below.
  final pulumi.Input<List<AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayload>?>? inlinePayloads;
  /// S3-based tool definition. See `s3` below.
  final pulumi.Input<AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaS3?>? s3;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchema].
  /// [inlinePayloads] Inline tool definition. See `inlinePayload` below.
  /// [s3] S3-based tool definition. See `s3` below.
  const AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchema({
    this.inlinePayloads,
    this.s3,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inlinePayloads': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayload>, List<Map<String, dynamic>>>(inlinePayloads, (value) => pulumi.Input.encodeList<AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayload, Map<String, dynamic>>(value, (value) => value.toMap())),
      's3': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaS3, Map<String, dynamic>>(s3, (value) => value.toMap()),
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchema.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchema(
      inlinePayloads: (() { final guardedValue = map['inlinePayloads']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayload>(guardedValue, (value) => AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayload.fromMap((value as Map).cast<String, dynamic>()))); })(),
      s3: (() { final guardedValue = map['s3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaS3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
