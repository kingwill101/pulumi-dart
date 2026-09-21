// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_target_target_configuration_mcp_api_gateway.dart';
import 'agentcore_gateway_target_target_configuration_mcp_connector.dart';
import 'agentcore_gateway_target_target_configuration_mcp_lambda.dart';
import 'agentcore_gateway_target_target_configuration_mcp_mcp_server.dart';
import 'agentcore_gateway_target_target_configuration_mcp_open_api_schema.dart';
import 'agentcore_gateway_target_target_configuration_mcp_smithy_model.dart';

class AgentcoreGatewayTargetTargetConfigurationMcp {
  /// API Gateway target configuration. See `apiGateway` Block below.
  final pulumi.Input<AgentcoreGatewayTargetTargetConfigurationMcpApiGateway?>? apiGateway;
  /// Connector integration target configuration. Connectors provide pre-built integrations with AWS services and third-party tools. See `connector` Block below.
  final pulumi.Input<AgentcoreGatewayTargetTargetConfigurationMcpConnector?>? connector;
  /// Lambda function target configuration. See `lambda` Block below.
  final pulumi.Input<AgentcoreGatewayTargetTargetConfigurationMcpLambda?>? lambda;
  /// MCP server target configuration. See `mcpServer` Block below.
  final pulumi.Input<AgentcoreGatewayTargetTargetConfigurationMcpMcpServer?>? mcpServer;
  /// OpenAPI schema-based target configuration. See `apiSchemaConfiguration` Block below.
  final pulumi.Input<AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchema?>? openApiSchema;
  /// Smithy model-based target configuration. See `apiSchemaConfiguration` Block below.
  final pulumi.Input<AgentcoreGatewayTargetTargetConfigurationMcpSmithyModel?>? smithyModel;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationMcp].
  /// [apiGateway] API Gateway target configuration. See `apiGateway` Block below.
  /// [connector] Connector integration target configuration. Connectors provide pre-built integrations with AWS services and third-party tools. See `connector` Block below.
  /// [lambda] Lambda function target configuration. See `lambda` Block below.
  /// [mcpServer] MCP server target configuration. See `mcpServer` Block below.
  /// [openApiSchema] OpenAPI schema-based target configuration. See `apiSchemaConfiguration` Block below.
  /// [smithyModel] Smithy model-based target configuration. See `apiSchemaConfiguration` Block below.
  const AgentcoreGatewayTargetTargetConfigurationMcp({
    this.apiGateway,
    this.connector,
    this.lambda,
    this.mcpServer,
    this.openApiSchema,
    this.smithyModel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiGateway': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetTargetConfigurationMcpApiGateway, Map<String, dynamic>>(apiGateway, (value) => value.toMap()),
      'connector': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetTargetConfigurationMcpConnector, Map<String, dynamic>>(connector, (value) => value.toMap()),
      'lambda': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetTargetConfigurationMcpLambda, Map<String, dynamic>>(lambda, (value) => value.toMap()),
      'mcpServer': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetTargetConfigurationMcpMcpServer, Map<String, dynamic>>(mcpServer, (value) => value.toMap()),
      'openApiSchema': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchema, Map<String, dynamic>>(openApiSchema, (value) => value.toMap()),
      'smithyModel': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetTargetConfigurationMcpSmithyModel, Map<String, dynamic>>(smithyModel, (value) => value.toMap()),
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcp.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationMcp(
      apiGateway: (() { final guardedValue = map['apiGateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetTargetConfigurationMcpApiGateway.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connector: (() { final guardedValue = map['connector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetTargetConfigurationMcpConnector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lambda: (() { final guardedValue = map['lambda']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetTargetConfigurationMcpLambda.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mcpServer: (() { final guardedValue = map['mcpServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetTargetConfigurationMcpMcpServer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      openApiSchema: (() { final guardedValue = map['openApiSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetTargetConfigurationMcpOpenApiSchema.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      smithyModel: (() { final guardedValue = map['smithyModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetTargetConfigurationMcpSmithyModel.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
