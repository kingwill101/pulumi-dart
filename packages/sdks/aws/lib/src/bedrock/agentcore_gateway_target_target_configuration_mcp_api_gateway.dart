// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_target_target_configuration_mcp_api_gateway_api_gateway_tool_configuration.dart';

class AgentcoreGatewayTargetTargetConfigurationMcpApiGateway {
  /// Configuration for API Gateway tools. See `apiGatewayToolConfiguration` below.
  final pulumi.Input<AgentcoreGatewayTargetTargetConfigurationMcpApiGatewayApiGatewayToolConfiguration?>? apiGatewayToolConfiguration;
  /// ID of the API Gateway REST API to invoke.
  final pulumi.Input<String> restApiId;
  /// Stage name of the REST API to add as a target.
  final pulumi.Input<String> stage;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationMcpApiGateway].
  /// [apiGatewayToolConfiguration] Configuration for API Gateway tools. See `apiGatewayToolConfiguration` below.
  /// [restApiId] ID of the API Gateway REST API to invoke.
  /// [stage] Stage name of the REST API to add as a target.
  const AgentcoreGatewayTargetTargetConfigurationMcpApiGateway({
    this.apiGatewayToolConfiguration,
    required this.restApiId,
    required this.stage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiGatewayToolConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetTargetConfigurationMcpApiGatewayApiGatewayToolConfiguration, Map<String, dynamic>>(apiGatewayToolConfiguration, (value) => value.toMap()),
      'restApiId': restApiId,
      'stage': stage,
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpApiGateway.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationMcpApiGateway(
      apiGatewayToolConfiguration: (() { final guardedValue = map['apiGatewayToolConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetTargetConfigurationMcpApiGatewayApiGatewayToolConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      restApiId: pulumi.Input.fromValue(map['restApiId'] as String),
      stage: pulumi.Input.fromValue(map['stage'] as String),
    );
  }
}
