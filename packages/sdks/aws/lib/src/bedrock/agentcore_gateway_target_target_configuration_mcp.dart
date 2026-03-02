// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_target_target_configuration_mcp_lambda.dart';
import 'agentcore_gateway_target_target_configuration_mcp_mcp_server.dart';
import 'agentcore_gateway_target_target_configuration_mcp_open_api_schema.dart';
import 'agentcore_gateway_target_target_configuration_mcp_smithy_model.dart';

class AgentcoreGatewayTargetTargetConfigurationMcp {
  /// Lambda function target configuration. See `lambda` below.
  final pulumi.Input<AgentcoreGatewayTargetTargetConfigurationMcpLambda>? lambda;
  /// MCP server target configuration. See `mcp_server` below.
  final pulumi.Input<AgentcoreGatewayTargetTargetConfigurationMcpMcpServer>? mcpServer;
  /// OpenAPI schema-based target configuration. See `api_schema_configuration` below.
  final pulumi.Input<AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchema>? openApiSchema;
  /// Smithy model-based target configuration. See `api_schema_configuration` below.
  final pulumi.Input<AgentcoreGatewayTargetTargetConfigurationMcpSmithyModel>? smithyModel;

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
    return <String, dynamic>{
      'lambda': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetTargetConfigurationMcpLambda, Map<String, dynamic>>(lambda, (value) => value.toMap()),
      'mcpServer': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetTargetConfigurationMcpMcpServer, Map<String, dynamic>>(mcpServer, (value) => value.toMap()),
      'openApiSchema': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchema, Map<String, dynamic>>(openApiSchema, (value) => value.toMap()),
      'smithyModel': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetTargetConfigurationMcpSmithyModel, Map<String, dynamic>>(smithyModel, (value) => value.toMap()),
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcp.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationMcp(
      lambda: map['lambda'] == null ? null : (AgentcoreGatewayTargetTargetConfigurationMcpLambda.fromMap((map['lambda'] as Map).cast<String, dynamic>())).input(),
      mcpServer: map['mcpServer'] == null ? null : (AgentcoreGatewayTargetTargetConfigurationMcpMcpServer.fromMap((map['mcpServer'] as Map).cast<String, dynamic>())).input(),
      openApiSchema: map['openApiSchema'] == null ? null : (AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchema.fromMap((map['openApiSchema'] as Map).cast<String, dynamic>())).input(),
      smithyModel: map['smithyModel'] == null ? null : (AgentcoreGatewayTargetTargetConfigurationMcpSmithyModel.fromMap((map['smithyModel'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

