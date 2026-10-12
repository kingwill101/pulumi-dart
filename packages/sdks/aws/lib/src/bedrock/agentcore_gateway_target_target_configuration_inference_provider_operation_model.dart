// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayTargetTargetConfigurationInferenceProviderOperationModel {
  final pulumi.Input<String> model;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationInferenceProviderOperationModel].
  /// [model] Required.
  const AgentcoreGatewayTargetTargetConfigurationInferenceProviderOperationModel({
    required this.model,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'model': model,
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationInferenceProviderOperationModel.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationInferenceProviderOperationModel(
      model: pulumi.Input.fromValue(map['model'] as String),
    );
  }
}
