// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_target_target_configuration_inference_connector_source.dart';

class AgentcoreGatewayTargetTargetConfigurationInferenceConnector {
  /// Source configuration identifying which connector to use. See `source` Block below.
  final pulumi.Input<AgentcoreGatewayTargetTargetConfigurationInferenceConnectorSource> source;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationInferenceConnector].
  /// [source] Source configuration identifying which connector to use. See `source` Block below.
  const AgentcoreGatewayTargetTargetConfigurationInferenceConnector({
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'source': pulumi.Input.mapInputValue<AgentcoreGatewayTargetTargetConfigurationInferenceConnectorSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationInferenceConnector.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationInferenceConnector(
      source: pulumi.Input.fromValue(AgentcoreGatewayTargetTargetConfigurationInferenceConnectorSource.fromMap((map['source']! as Map).cast<String, dynamic>())),
    );
  }
}
