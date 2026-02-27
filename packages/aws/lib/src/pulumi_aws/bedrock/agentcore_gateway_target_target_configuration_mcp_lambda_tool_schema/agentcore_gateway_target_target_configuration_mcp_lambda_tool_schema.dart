// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../agentcore_gateway_target_target_configuration_mcp_lambda_tool_schema_inline_payload/agentcore_gateway_target_target_configuration_mcp_lambda_tool_schema_inline_payload.dart';
import '../agentcore_gateway_target_target_configuration_mcp_lambda_tool_schema_s3/agentcore_gateway_target_target_configuration_mcp_lambda_tool_schema_s3.dart';

class AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchema {
  /// Inline tool definition. See `inline_payload` below.
  final List<
          AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayload>?
      inlinePayloads;

  /// S3-based tool definition. See `s3` below.
  final AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaS3? s3;

  AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchema({
    this.inlinePayloads,
    this.s3,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final inlinePayloadsValue = inlinePayloads;
    if (inlinePayloadsValue != null) {
      map['inlinePayloads'] = pulumi.Input.encodeList<
          AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayload,
          Map<String, dynamic>>(inlinePayloadsValue, (value) => value.toMap());
    }
    final s3Value = s3;
    if (s3Value != null) {
      map['s3'] = s3Value.toMap();
    }
    return map;
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchema.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchema(
      inlinePayloads: map['inlinePayloads'] == null
          ? null
          : pulumi.Input.decodeList<
                  AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayload>(
              map['inlinePayloads'],
              (value) =>
                  AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayload
                      .fromMap((value as Map).cast<String, dynamic>())),
      s3: map['s3'] == null
          ? null
          : AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaS3
              .fromMap((map['s3'] as Map).cast<String, dynamic>()),
    );
  }
}
