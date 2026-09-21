// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_target_target_configuration_inference_connector.dart';
import 'agentcore_gateway_target_target_configuration_inference_provider.dart';

class AgentcoreGatewayTargetTargetConfigurationInference {
  /// Connector-based inference configuration that routes requests to an LLM provider through a built-in connector with predefined provider rules. See `connector` Block below.
  final pulumi.Input<AgentcoreGatewayTargetTargetConfigurationInferenceConnector?>? connector;
  /// Provider-based inference configuration that explicitly defines the endpoint, model mapping, and operations used to route requests to an LLM provider. See `provider` Block below.
  final pulumi.Input<AgentcoreGatewayTargetTargetConfigurationInferenceProvider?>? provider;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationInference].
  /// [connector] Connector-based inference configuration that routes requests to an LLM provider through a built-in connector with predefined provider rules. See `connector` Block below.
  /// [provider] Provider-based inference configuration that explicitly defines the endpoint, model mapping, and operations used to route requests to an LLM provider. See `provider` Block below.
  const AgentcoreGatewayTargetTargetConfigurationInference({
    this.connector,
    this.provider,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connector': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetTargetConfigurationInferenceConnector, Map<String, dynamic>>(connector, (value) => value.toMap()),
      'provider': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetTargetConfigurationInferenceProvider, Map<String, dynamic>>(provider, (value) => value.toMap()),
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationInference.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationInference(
      connector: (() { final guardedValue = map['connector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetTargetConfigurationInferenceConnector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provider: (() { final guardedValue = map['provider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetTargetConfigurationInferenceProvider.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
