// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_target_target_configuration_inference_provider_operation_model.dart';

class AgentcoreGatewayTargetTargetConfigurationInferenceProviderOperation {
  /// List of models supported for this operation. See `model` Block below.
  final pulumi.Input<List<AgentcoreGatewayTargetTargetConfigurationInferenceProviderOperationModel>?>? models;
  /// Request path for this operation (for example, `/v1/messages` or `/v1/responses`).
  final pulumi.Input<String> path;
  /// Provider path to forward requests to, if it differs from the request path. For example, `/anthropic/v1/messages` when the provider expects a different path than the client-facing `/v1/messages`.
  final pulumi.Input<String?>? providerPath;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationInferenceProviderOperation].
  /// [models] List of models supported for this operation. See `model` Block below.
  /// [path] Request path for this operation (for example, `/v1/messages` or `/v1/responses`).
  /// [providerPath] Provider path to forward requests to, if it differs from the request path. For example, `/anthropic/v1/messages` when the provider expects a different path than the client-facing `/v1/messages`.
  const AgentcoreGatewayTargetTargetConfigurationInferenceProviderOperation({
    this.models,
    required this.path,
    this.providerPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'models': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreGatewayTargetTargetConfigurationInferenceProviderOperationModel>, List<Map<String, dynamic>>>(models, (value) => pulumi.Input.encodeList<AgentcoreGatewayTargetTargetConfigurationInferenceProviderOperationModel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'path': path,
      'providerPath': ?providerPath,
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationInferenceProviderOperation.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationInferenceProviderOperation(
      models: (() { final guardedValue = map['models']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreGatewayTargetTargetConfigurationInferenceProviderOperationModel>(guardedValue, (value) => AgentcoreGatewayTargetTargetConfigurationInferenceProviderOperationModel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      path: pulumi.Input.fromValue(map['path'] as String),
      providerPath: (() { final guardedValue = map['providerPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
