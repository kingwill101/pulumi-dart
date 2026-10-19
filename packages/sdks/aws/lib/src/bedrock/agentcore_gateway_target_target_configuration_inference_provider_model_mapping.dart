// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_target_target_configuration_inference_provider_model_mapping_provider_prefix.dart';

class AgentcoreGatewayTargetTargetConfigurationInferenceProviderModelMapping {
  /// Provider prefix configuration used for model ID translation. See `providerPrefix` Block below.
  final pulumi.Input<AgentcoreGatewayTargetTargetConfigurationInferenceProviderModelMappingProviderPrefix?>? providerPrefix;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationInferenceProviderModelMapping].
  /// [providerPrefix] Provider prefix configuration used for model ID translation. See `providerPrefix` Block below.
  const AgentcoreGatewayTargetTargetConfigurationInferenceProviderModelMapping({
    this.providerPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'providerPrefix': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetTargetConfigurationInferenceProviderModelMappingProviderPrefix, Map<String, dynamic>>(providerPrefix, (value) => value.toMap()),
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationInferenceProviderModelMapping.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationInferenceProviderModelMapping(
      providerPrefix: (() { final guardedValue = map['providerPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetTargetConfigurationInferenceProviderModelMappingProviderPrefix.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
