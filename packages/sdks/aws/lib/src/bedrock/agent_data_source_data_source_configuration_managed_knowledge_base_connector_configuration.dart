// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_data_source_data_source_configuration_managed_knowledge_base_connector_configuration_deletion_protection_configuration.dart';
import 'agent_data_source_data_source_configuration_managed_knowledge_base_connector_configuration_media_extraction_configuration.dart';

class AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfiguration {
  /// JSON-encoded string containing the connector-specific parameters. The structure depends on the connector type (S3, SharePoint, Google Drive, etc.). See [Managed Knowledge Base connector parameters](https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-connectors.html) for details on each connector type.
  final pulumi.Input<String>? connectorParameters;
  /// Configuration for deletion protection on the data source. See `deletionProtectionConfiguration` block for details.
  final pulumi.Input<AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationDeletionProtectionConfiguration>? deletionProtectionConfiguration;
  /// Configuration for extracting media content (images, audio, video) from documents. See `mediaExtractionConfiguration` block for details.
  final pulumi.Input<AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfiguration>? mediaExtractionConfiguration;

  /// Creates a new [AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfiguration].
  /// [connectorParameters] JSON-encoded string containing the connector-specific parameters. The structure depends on the connector type (S3, SharePoint, Google Drive, etc.). See [Managed Knowledge Base connector parameters](https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-connectors.html) for details on each connector type.
  /// [deletionProtectionConfiguration] Configuration for deletion protection on the data source. See `deletionProtectionConfiguration` block for details.
  /// [mediaExtractionConfiguration] Configuration for extracting media content (images, audio, video) from documents. See `mediaExtractionConfiguration` block for details.
  const AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfiguration({
    this.connectorParameters,
    this.deletionProtectionConfiguration,
    this.mediaExtractionConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorParameters': ?connectorParameters,
      'deletionProtectionConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationDeletionProtectionConfiguration, Map<String, dynamic>>(deletionProtectionConfiguration, (value) => value.toMap()),
      'mediaExtractionConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfiguration, Map<String, dynamic>>(mediaExtractionConfiguration, (value) => value.toMap()),
    };
  }

  factory AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfiguration(
      connectorParameters: (() { final guardedValue = map['connectorParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtectionConfiguration: (() { final guardedValue = map['deletionProtectionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationDeletionProtectionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mediaExtractionConfiguration: (() { final guardedValue = map['mediaExtractionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
