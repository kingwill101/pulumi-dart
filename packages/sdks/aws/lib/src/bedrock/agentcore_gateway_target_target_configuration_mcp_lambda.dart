// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_target_target_configuration_mcp_lambda_tool_schema.dart';

class AgentcoreGatewayTargetTargetConfigurationMcpLambda {
  /// ARN of the Lambda function to invoke.
  final pulumi.Input<String> lambdaArn;

  /// Schema definition for the tool. See `tool_schema` below.
  final pulumi.Input<
    AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchema
  >
  toolSchema;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationMcpLambda].
  /// [lambdaArn] ARN of the Lambda function to invoke.
  /// [toolSchema] Schema definition for the tool. See `tool_schema` below.
  AgentcoreGatewayTargetTargetConfigurationMcpLambda({
    required this.lambdaArn,
    required this.toolSchema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lambdaArn': lambdaArn,
      'toolSchema':
          pulumi.Input.mapInputValue<
            AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchema,
            Map<String, dynamic>
          >(toolSchema, (value) => value.toMap()),
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpLambda.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentcoreGatewayTargetTargetConfigurationMcpLambda(
      lambdaArn: pulumi.Input.fromValue(map['lambdaArn'] as String),
      toolSchema: pulumi.Input.fromValue(
        AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchema.fromMap(
          (map['toolSchema']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
