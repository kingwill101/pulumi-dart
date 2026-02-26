// ignore_for_file: unused_element, unnecessary_cast

import '../agentcore_gateway_target_target_configuration_mcp_lambda/agentcore_gateway_target_target_configuration_mcp_lambda.dart';
import '../agentcore_gateway_target_target_configuration_mcp_mcp_server/agentcore_gateway_target_target_configuration_mcp_mcp_server.dart';
import '../agentcore_gateway_target_target_configuration_mcp_open_api_schema/agentcore_gateway_target_target_configuration_mcp_open_api_schema.dart';
import '../agentcore_gateway_target_target_configuration_mcp_smithy_model/agentcore_gateway_target_target_configuration_mcp_smithy_model.dart';

class AgentcoreGatewayTargetTargetConfigurationMcp {
  /// Lambda function target configuration. See <span pulumi-lang-nodejs="`lambda`" pulumi-lang-dotnet="`Lambda`" pulumi-lang-go="`lambda`" pulumi-lang-python="`lambda`" pulumi-lang-yaml="`lambda`" pulumi-lang-java="`lambda`">`lambda`</span> below.
  final AgentcoreGatewayTargetTargetConfigurationMcpLambda? lambda;

  /// MCP server target configuration. See <span pulumi-lang-nodejs="`mcpServer`" pulumi-lang-dotnet="`McpServer`" pulumi-lang-go="`mcpServer`" pulumi-lang-python="`mcp_server`" pulumi-lang-yaml="`mcpServer`" pulumi-lang-java="`mcpServer`">`mcp_server`</span> below.
  final AgentcoreGatewayTargetTargetConfigurationMcpMcpServer? mcpServer;

  /// OpenAPI schema-based target configuration. See <span pulumi-lang-nodejs="`apiSchemaConfiguration`" pulumi-lang-dotnet="`ApiSchemaConfiguration`" pulumi-lang-go="`apiSchemaConfiguration`" pulumi-lang-python="`api_schema_configuration`" pulumi-lang-yaml="`apiSchemaConfiguration`" pulumi-lang-java="`apiSchemaConfiguration`">`api_schema_configuration`</span> below.
  final AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchema?
      openApiSchema;

  /// Smithy model-based target configuration. See <span pulumi-lang-nodejs="`apiSchemaConfiguration`" pulumi-lang-dotnet="`ApiSchemaConfiguration`" pulumi-lang-go="`apiSchemaConfiguration`" pulumi-lang-python="`api_schema_configuration`" pulumi-lang-yaml="`apiSchemaConfiguration`" pulumi-lang-java="`apiSchemaConfiguration`">`api_schema_configuration`</span> below.
  final AgentcoreGatewayTargetTargetConfigurationMcpSmithyModel? smithyModel;

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
