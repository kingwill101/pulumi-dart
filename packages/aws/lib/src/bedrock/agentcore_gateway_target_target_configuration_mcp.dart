// ignore_for_file: unused_element, unnecessary_cast

import 'agentcore_gateway_target_target_configuration_mcp_lambda.dart';
import 'agentcore_gateway_target_target_configuration_mcp_mcp_server.dart';
import 'agentcore_gateway_target_target_configuration_mcp_open_api_schema.dart';
import 'agentcore_gateway_target_target_configuration_mcp_smithy_model.dart';

class AgentcoreGatewayTargetTargetConfigurationMcp {
  /// Lambda function target configuration. See `lambda` below.
  final AgentcoreGatewayTargetTargetConfigurationMcpLambda? lambda;

  /// MCP server target configuration. See `mcp_server` below.
  final AgentcoreGatewayTargetTargetConfigurationMcpMcpServer? mcpServer;

  /// OpenAPI schema-based target configuration. See `api_schema_configuration` below.
  final AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchema?
      openApiSchema;

  /// Smithy model-based target configuration. See `api_schema_configuration` below.
  final AgentcoreGatewayTargetTargetConfigurationMcpSmithyModel? smithyModel;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationMcp].
  /// [lambda] Lambda function target configuration. See `lambda` below.
  /// [mcpServer] MCP server target configuration. See `mcp_server` below.
  /// [openApiSchema] OpenAPI schema-based target configuration. See `api_schema_configuration` below.
  /// [smithyModel] Smithy model-based target configuration. See `api_schema_configuration` below.
  AgentcoreGatewayTargetTargetConfigurationMcp({
    this.lambda,
    this.mcpServer,
    this.openApiSchema,
    this.smithyModel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final lambdaValue = lambda;
    if (lambdaValue != null) {
      map['lambda'] = lambdaValue.toMap();
    }
    final mcpServerValue = mcpServer;
    if (mcpServerValue != null) {
      map['mcpServer'] = mcpServerValue.toMap();
    }
    final openApiSchemaValue = openApiSchema;
    if (openApiSchemaValue != null) {
      map['openApiSchema'] = openApiSchemaValue.toMap();
    }
    final smithyModelValue = smithyModel;
    if (smithyModelValue != null) {
      map['smithyModel'] = smithyModelValue.toMap();
    }
    return map;
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcp.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationMcp(
      lambda: map['lambda'] == null
          ? null
          : AgentcoreGatewayTargetTargetConfigurationMcpLambda.fromMap(
              (map['lambda'] as Map).cast<String, dynamic>()),
      mcpServer: map['mcpServer'] == null
          ? null
          : AgentcoreGatewayTargetTargetConfigurationMcpMcpServer.fromMap(
              (map['mcpServer'] as Map).cast<String, dynamic>()),
      openApiSchema: map['openApiSchema'] == null
          ? null
          : AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchema.fromMap(
              (map['openApiSchema'] as Map).cast<String, dynamic>()),
      smithyModel: map['smithyModel'] == null
          ? null
          : AgentcoreGatewayTargetTargetConfigurationMcpSmithyModel.fromMap(
              (map['smithyModel'] as Map).cast<String, dynamic>()),
    );
  }
}
