// ignore_for_file: unused_element, unnecessary_cast

import 'agentcore_gateway_target_target_configuration_mcp_lambda_tool_schema_inline_payload_input_schema.dart';
import 'agentcore_gateway_target_target_configuration_mcp_lambda_tool_schema_inline_payload_output_schema.dart';

class AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayload {
  /// Description of what the tool does.
  final String description;
  /// Schema for the tool's input. See `schema_definition` below.
  final AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchema inputSchema;
  /// Name of the tool.
  final String name;
  /// Schema for the tool's output. See `schema_definition` below.
  final AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchema? outputSchema;

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
      'inputSchema': inputSchema.toMap(),
      'name': name,
      'outputSchema': ?outputSchema == null ? null : outputSchema!.toMap(),
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayload.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayload(
      description: map['description'] as String,
      inputSchema: AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchema.fromMap((map['inputSchema'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      outputSchema: map['outputSchema'] == null ? null : AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchema.fromMap((map['outputSchema'] as Map).cast<String, dynamic>()),
    );
  }
}

