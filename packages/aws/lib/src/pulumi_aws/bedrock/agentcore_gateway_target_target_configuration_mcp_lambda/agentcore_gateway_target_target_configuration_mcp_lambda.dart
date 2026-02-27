// ignore_for_file: unused_element, unnecessary_cast

import '../agentcore_gateway_target_target_configuration_mcp_lambda_tool_schema/agentcore_gateway_target_target_configuration_mcp_lambda_tool_schema.dart';

class AgentcoreGatewayTargetTargetConfigurationMcpLambda {
  /// ARN of the Lambda function to invoke.
  final String lambdaArn;

  /// Schema definition for the tool. See `tool_schema` below.
  final AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchema toolSchema;

  AgentcoreGatewayTargetTargetConfigurationMcpLambda({
    required this.lambdaArn,
    required this.toolSchema,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lambdaArn'] = lambdaArn;
    map['toolSchema'] = toolSchema.toMap();
    return map;
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpLambda.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationMcpLambda(
      lambdaArn: map['lambdaArn'] as String,
      toolSchema:
          AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchema.fromMap(
              (map['toolSchema'] as Map).cast<String, dynamic>()),
    );
  }
}
