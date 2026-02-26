// ignore_for_file: unused_element, unnecessary_cast

import '../agent_flow_definition_node_configuration_retrieval_service_configuration_s3/agent_flow_definition_node_configuration_retrieval_service_configuration_s3.dart';

class AgentFlowDefinitionNodeConfigurationRetrievalServiceConfiguration {
  final AgentFlowDefinitionNodeConfigurationRetrievalServiceConfigurationS3? s3;

  AgentFlowDefinitionNodeConfigurationRetrievalServiceConfiguration({
    this.s3,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final s3Value = s3;
    if (s3Value != null) {
      map['s3'] = s3Value.toMap();
    }
    return map;
  }

  factory AgentFlowDefinitionNodeConfigurationRetrievalServiceConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationRetrievalServiceConfiguration(
      s3: map['s3'] == null
          ? null
          : AgentFlowDefinitionNodeConfigurationRetrievalServiceConfigurationS3
              .fromMap((map['s3'] as Map).cast<String, dynamic>()),
    );
  }
}
