// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_flow_definition_node_configuration_storage_service_configuration_s3.dart';

class AgentFlowDefinitionNodeConfigurationStorageServiceConfiguration {
  /// Contains configurations for the service to use for storing the input into the node. See Storage S3 Service Configuration for more information.
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationStorageServiceConfigurationS3?>? s3;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationStorageServiceConfiguration].
  /// [s3] Contains configurations for the service to use for storing the input into the node. See Storage S3 Service Configuration for more information.
  const AgentFlowDefinitionNodeConfigurationStorageServiceConfiguration({
    this.s3,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3': ?pulumi.Input.mapOptionalInputValue<AgentFlowDefinitionNodeConfigurationStorageServiceConfigurationS3, Map<String, dynamic>>(s3, (value) => value.toMap()),
    };
  }

  factory AgentFlowDefinitionNodeConfigurationStorageServiceConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationStorageServiceConfiguration(
      s3: (() { final guardedValue = map['s3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentFlowDefinitionNodeConfigurationStorageServiceConfigurationS3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
