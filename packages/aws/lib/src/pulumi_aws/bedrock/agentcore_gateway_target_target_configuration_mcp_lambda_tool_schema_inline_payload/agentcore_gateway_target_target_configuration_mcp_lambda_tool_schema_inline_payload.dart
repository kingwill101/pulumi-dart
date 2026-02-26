// ignore_for_file: unused_element, unnecessary_cast

import '../agentcore_gateway_target_target_configuration_mcp_lambda_tool_schema_inline_payload_input_schema/agentcore_gateway_target_target_configuration_mcp_lambda_tool_schema_inline_payload_input_schema.dart';
import '../agentcore_gateway_target_target_configuration_mcp_lambda_tool_schema_inline_payload_output_schema/agentcore_gateway_target_target_configuration_mcp_lambda_tool_schema_inline_payload_output_schema.dart';

class AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayload {
  /// Description of what the tool does.
  final String description;

  /// Schema for the tool's input. See <span pulumi-lang-nodejs="`schemaDefinition`" pulumi-lang-dotnet="`SchemaDefinition`" pulumi-lang-go="`schemaDefinition`" pulumi-lang-python="`schema_definition`" pulumi-lang-yaml="`schemaDefinition`" pulumi-lang-java="`schemaDefinition`">`schema_definition`</span> below.
  final AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchema
      inputSchema;

  /// Name of the tool.
  final String name;

  /// Schema for the tool's output. See <span pulumi-lang-nodejs="`schemaDefinition`" pulumi-lang-dotnet="`SchemaDefinition`" pulumi-lang-go="`schemaDefinition`" pulumi-lang-python="`schema_definition`" pulumi-lang-yaml="`schemaDefinition`" pulumi-lang-java="`schemaDefinition`">`schema_definition`</span> below.
  final AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchema?
      outputSchema;

  AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayload({
    required this.description,
    required this.inputSchema,
    required this.name,
    this.outputSchema,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['inputSchema'] = inputSchema.toMap();
    map['name'] = name;
    final outputSchemaValue = outputSchema;
    if (outputSchemaValue != null) {
      map['outputSchema'] = outputSchemaValue.toMap();
    }
    return map;
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayload.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayload(
      description: map['description'] as String,
      inputSchema:
          AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadInputSchema
              .fromMap((map['inputSchema'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      outputSchema: map['outputSchema'] == null
          ? null
          : AgentcoreGatewayTargetTargetConfigurationMcpLambdaToolSchemaInlinePayloadOutputSchema
              .fromMap((map['outputSchema'] as Map).cast<String, dynamic>()),
    );
  }
}
