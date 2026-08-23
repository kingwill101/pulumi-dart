// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_flow_definition_node_configuration_storage_service_configuration.dart';

class AgentFlowDefinitionNodeConfigurationStorage {
  /// Contains configurations for a Storage node in your flow. Stores an input in an Amazon S3 location. See Storage Service Configuration for more information.
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationStorageServiceConfiguration>? serviceConfiguration;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationStorage].
  /// [serviceConfiguration] Contains configurations for a Storage node in your flow. Stores an input in an Amazon S3 location. See Storage Service Configuration for more information.
  const AgentFlowDefinitionNodeConfigurationStorage({
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
