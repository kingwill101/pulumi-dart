// ignore_for_file: unused_element, unnecessary_cast

import 'agent_flow_definition_node_configuration_retrieval_service_configuration_s3.dart';

class AgentFlowDefinitionNodeConfigurationRetrievalServiceConfiguration {
  final AgentFlowDefinitionNodeConfigurationRetrievalServiceConfigurationS3? s3;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationRetrievalServiceConfiguration].
  /// [s3] Optional.
  AgentFlowDefinitionNodeConfigurationRetrievalServiceConfiguration({this.s3});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'s3': ?s3 == null ? null : s3!.toMap()};
  }

  factory AgentFlowDefinitionNodeConfigurationRetrievalServiceConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentFlowDefinitionNodeConfigurationRetrievalServiceConfiguration(
      s3: map['s3'] == null
          ? null
          : AgentFlowDefinitionNodeConfigurationRetrievalServiceConfigurationS3.fromMap(
              (map['s3'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
