// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_flow_definition_node_configuration_retrieval_service_configuration_s3.dart';

class AgentFlowDefinitionNodeConfigurationRetrievalServiceConfiguration {
  final pulumi.Input<
    AgentFlowDefinitionNodeConfigurationRetrievalServiceConfigurationS3
  >?
  s3;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationRetrievalServiceConfiguration].
  /// [s3] Optional.
  AgentFlowDefinitionNodeConfigurationRetrievalServiceConfiguration({this.s3});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3':
          ?pulumi.Input.mapOptionalInputValue<
            AgentFlowDefinitionNodeConfigurationRetrievalServiceConfigurationS3,
            Map<String, dynamic>
          >(s3, (value) => value.toMap()),
    };
  }

  factory AgentFlowDefinitionNodeConfigurationRetrievalServiceConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentFlowDefinitionNodeConfigurationRetrievalServiceConfiguration(
      s3: (() {
        final guardedValue = map['s3'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AgentFlowDefinitionNodeConfigurationRetrievalServiceConfigurationS3.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
