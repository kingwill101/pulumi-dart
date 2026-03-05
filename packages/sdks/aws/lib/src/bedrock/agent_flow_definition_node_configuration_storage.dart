// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_flow_definition_node_configuration_storage_service_configuration.dart';

class AgentFlowDefinitionNodeConfigurationStorage {
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationStorageServiceConfiguration>? serviceConfiguration;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationStorage].
  /// [serviceConfiguration] Optional.
  AgentFlowDefinitionNodeConfigurationStorage({
    this.serviceConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentFlowDefinitionNodeConfigurationStorageServiceConfiguration, Map<String, dynamic>>(serviceConfiguration, (value) => value.toMap()),
    };
  }

  factory AgentFlowDefinitionNodeConfigurationStorage.fromMap(Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationStorage(
      serviceConfiguration: (() { final guardedValue = map['serviceConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentFlowDefinitionNodeConfigurationStorageServiceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

