// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_target_target_configuration_inference_provider_model_mapping.dart';
import 'agentcore_gateway_target_target_configuration_inference_provider_operation.dart';

class AgentcoreGatewayTargetTargetConfigurationInferenceProvider {
  /// HTTPS endpoint of the inference provider that the gateway forwards requests to.
  final pulumi.Input<String> endpoint;
  /// Configuration that translates client-facing model IDs to the model IDs expected by the provider. See `modelMapping` Block below.
  final pulumi.Input<AgentcoreGatewayTargetTargetConfigurationInferenceProviderModelMapping?>? modelMapping;
  /// List of per-operation configurations that map request paths to the models supported for each operation. See `operation` below.
  final pulumi.Input<List<AgentcoreGatewayTargetTargetConfigurationInferenceProviderOperation>?>? operations;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationInferenceProvider].
  /// [endpoint] HTTPS endpoint of the inference provider that the gateway forwards requests to.
  /// [modelMapping] Configuration that translates client-facing model IDs to the model IDs expected by the provider. See `modelMapping` Block below.
  /// [operations] List of per-operation configurations that map request paths to the models supported for each operation. See `operation` below.
  const AgentcoreGatewayTargetTargetConfigurationInferenceProvider({
    required this.endpoint,
    this.modelMapping,
    this.operations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
      'modelMapping': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetTargetConfigurationInferenceProviderModelMapping, Map<String, dynamic>>(modelMapping, (value) => value.toMap()),
      'operations': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreGatewayTargetTargetConfigurationInferenceProviderOperation>, List<Map<String, dynamic>>>(operations, (value) => pulumi.Input.encodeList<AgentcoreGatewayTargetTargetConfigurationInferenceProviderOperation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationInferenceProvider.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationInferenceProvider(
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      modelMapping: (() { final guardedValue = map['modelMapping']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetTargetConfigurationInferenceProviderModelMapping.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      operations: (() { final guardedValue = map['operations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreGatewayTargetTargetConfigurationInferenceProviderOperation>(guardedValue, (value) => AgentcoreGatewayTargetTargetConfigurationInferenceProviderOperation.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
