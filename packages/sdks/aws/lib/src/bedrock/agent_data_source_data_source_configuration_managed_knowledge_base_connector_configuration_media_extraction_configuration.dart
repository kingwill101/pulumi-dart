// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_data_source_data_source_configuration_managed_knowledge_base_connector_configuration_media_extraction_configuration_audio_extraction_configuration.dart';
import 'agent_data_source_data_source_configuration_managed_knowledge_base_connector_configuration_media_extraction_configuration_image_extraction_configuration.dart';
import 'agent_data_source_data_source_configuration_managed_knowledge_base_connector_configuration_media_extraction_configuration_video_extraction_configuration.dart';

class AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfiguration {
  /// Configuration for extracting audio content. See `audioExtractionConfiguration` block for details.
  final pulumi.Input<AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfigurationAudioExtractionConfiguration>? audioExtractionConfiguration;
  /// Configuration for extracting image content. See `imageExtractionConfiguration` block for details.
  final pulumi.Input<AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfigurationImageExtractionConfiguration>? imageExtractionConfiguration;
  /// Configuration for extracting video content. See `videoExtractionConfiguration` block for details.
  final pulumi.Input<AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfigurationVideoExtractionConfiguration>? videoExtractionConfiguration;

  /// Creates a new [AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfiguration].
  /// [audioExtractionConfiguration] Configuration for extracting audio content. See `audioExtractionConfiguration` block for details.
  /// [imageExtractionConfiguration] Configuration for extracting image content. See `imageExtractionConfiguration` block for details.
  /// [videoExtractionConfiguration] Configuration for extracting video content. See `videoExtractionConfiguration` block for details.
  const AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfiguration({
    this.audioExtractionConfiguration,
    this.imageExtractionConfiguration,
    this.videoExtractionConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioExtractionConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfigurationAudioExtractionConfiguration, Map<String, dynamic>>(audioExtractionConfiguration, (value) => value.toMap()),
      'imageExtractionConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfigurationImageExtractionConfiguration, Map<String, dynamic>>(imageExtractionConfiguration, (value) => value.toMap()),
      'videoExtractionConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfigurationVideoExtractionConfiguration, Map<String, dynamic>>(videoExtractionConfiguration, (value) => value.toMap()),
    };
  }

  factory AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfiguration(
      audioExtractionConfiguration: (() { final guardedValue = map['audioExtractionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfigurationAudioExtractionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      imageExtractionConfiguration: (() { final guardedValue = map['imageExtractionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfigurationImageExtractionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      videoExtractionConfiguration: (() { final guardedValue = map['videoExtractionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfigurationVideoExtractionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
