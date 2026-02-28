// ignore_for_file: unused_element, unnecessary_cast

import 'agent_flow_definition_node_configuration_storage_service_configuration.dart';

class AgentFlowDefinitionNodeConfigurationStorage {
  final AgentFlowDefinitionNodeConfigurationStorageServiceConfiguration?
      serviceConfiguration;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationStorage].
  /// [serviceConfiguration] Optional.
  AgentFlowDefinitionNodeConfigurationStorage({
    this.serviceConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final serviceConfigurationValue = serviceConfiguration;
    if (serviceConfigurationValue != null) {
      map['serviceConfiguration'] = serviceConfigurationValue.toMap();
    }
    return map;
  }

  factory AgentFlowDefinitionNodeConfigurationStorage.fromMap(
      Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationStorage(
      serviceConfiguration: map['serviceConfiguration'] == null
          ? null
          : AgentFlowDefinitionNodeConfigurationStorageServiceConfiguration
              .fromMap(
                  (map['serviceConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}
