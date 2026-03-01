// ignore_for_file: unused_element, unnecessary_cast

import 'agent_flow_definition_node_configuration_retrieval_service_configuration.dart';

class AgentFlowDefinitionNodeConfigurationRetrieval {
  final AgentFlowDefinitionNodeConfigurationRetrievalServiceConfiguration?
  serviceConfiguration;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationRetrieval].
  /// [serviceConfiguration] Optional.
  AgentFlowDefinitionNodeConfigurationRetrieval({this.serviceConfiguration});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceConfiguration': ?serviceConfiguration == null
          ? null
          : serviceConfiguration!.toMap(),
    };
  }

  factory AgentFlowDefinitionNodeConfigurationRetrieval.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentFlowDefinitionNodeConfigurationRetrieval(
      serviceConfiguration: map['serviceConfiguration'] == null
          ? null
          : AgentFlowDefinitionNodeConfigurationRetrievalServiceConfiguration.fromMap(
              (map['serviceConfiguration'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
