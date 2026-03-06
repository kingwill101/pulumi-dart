// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_flow_definition_node_configuration_retrieval_service_configuration.dart';

class AgentFlowDefinitionNodeConfigurationRetrieval {
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationRetrievalServiceConfiguration>? serviceConfiguration;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationRetrieval].
  /// [serviceConfiguration] Optional.
  const AgentFlowDefinitionNodeConfigurationRetrieval({
    this.serviceConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentFlowDefinitionNodeConfigurationRetrievalServiceConfiguration, Map<String, dynamic>>(serviceConfiguration, (value) => value.toMap()),
    };
  }

  factory AgentFlowDefinitionNodeConfigurationRetrieval.fromMap(Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationRetrieval(
      serviceConfiguration: (() { final guardedValue = map['serviceConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentFlowDefinitionNodeConfigurationRetrievalServiceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

