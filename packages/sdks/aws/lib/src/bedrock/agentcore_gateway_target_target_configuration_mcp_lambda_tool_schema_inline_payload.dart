// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_target_target_configuration_mcp_lambda_tool_schema_inline_payload_input_schema.dart';
import 'agentcore_gateway_target_target_configuration_mcp_lambda_tool_schema_inline_payload_output_schema.dart';

class AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayload {
  /// Description of what the tool does.
  final pulumi.Input<String> description;

  /// Schema for the tool's input. See `schema_definition` below.
  final pulumi.Input<
    AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchema
  >
  inputSchema;

  /// Name of the tool.
  final pulumi.Input<String> name;

  /// Schema for the tool's output. See `schema_definition` below.
  final pulumi.Input<
    AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchema
  >?
  outputSchema;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayload].
  /// [description] Description of what the tool does.
  /// [inputSchema] Schema for the tool's input. See `schema_definition` below.
  /// [name] Name of the tool.
  /// [outputSchema] Schema for the tool's output. See `schema_definition` below.
  AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayload({
    required this.description,
    required this.inputSchema,
    required this.name,
    this.outputSchema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'inputSchema':
          pulumi.Input.mapInputValue<
            AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchema,
            Map<String, dynamic>
          >(inputSchema, (value) => value.toMap()),
      'name': name,
      'outputSchema':
          ?pulumi.Input.mapOptionalInputValue<
            AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchema,
            Map<String, dynamic>
          >(outputSchema, (value) => value.toMap()),
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayload.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayload(
      description: pulumi.Input.fromValue(map['description'] as String),
      inputSchema: pulumi.Input.fromValue(
        AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchema.fromMap(
          (map['inputSchema']! as Map).cast<String, dynamic>(),
        ),
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      outputSchema: (() {
        final guardedValue = map['outputSchema'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchema.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
