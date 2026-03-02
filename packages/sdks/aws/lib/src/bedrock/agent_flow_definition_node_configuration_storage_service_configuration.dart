// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_flow_definition_node_configuration_storage_service_configuration_s3.dart';

class AgentFlowDefinitionNodeConfigurationStorageServiceConfiguration {
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationStorageServiceConfigurationS3>? s3;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationStorageServiceConfiguration].
  /// [s3] Optional.
  AgentFlowDefinitionNodeConfigurationStorageServiceConfiguration({
    this.s3,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3': ?pulumi.Input.mapOptionalInputValue<AgentFlowDefinitionNodeConfigurationStorageServiceConfigurationS3, Map<String, dynamic>>(s3, (value) => value.toMap()),
    };
  }

  factory AgentFlowDefinitionNodeConfigurationStorageServiceConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationStorageServiceConfiguration(
      s3: map['s3'] == null ? null : (AgentFlowDefinitionNodeConfigurationStorageServiceConfigurationS3.fromMap((map['s3'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

