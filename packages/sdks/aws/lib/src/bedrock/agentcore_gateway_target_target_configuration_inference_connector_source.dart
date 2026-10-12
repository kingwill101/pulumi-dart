// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayTargetTargetConfigurationInferenceConnectorSource {
  /// Identifier for the connector integration (for example, `bedrock-knowledge-bases`).
  final pulumi.Input<String> connectorId;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationInferenceConnectorSource].
  /// [connectorId] Identifier for the connector integration (for example, `bedrock-knowledge-bases`).
  const AgentcoreGatewayTargetTargetConfigurationInferenceConnectorSource({
    required this.connectorId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorId': connectorId,
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationInferenceConnectorSource.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationInferenceConnectorSource(
      connectorId: pulumi.Input.fromValue(map['connectorId'] as String),
    );
  }
}
