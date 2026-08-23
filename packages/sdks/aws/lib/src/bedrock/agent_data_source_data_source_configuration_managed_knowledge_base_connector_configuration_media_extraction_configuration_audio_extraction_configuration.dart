// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfigurationAudioExtractionConfiguration {
  /// Whether audio extraction is enabled. Valid values: `ENABLED`, `DISABLED`.
  final pulumi.Input<String> audioExtractionStatus;

  /// Creates a new [AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfigurationAudioExtractionConfiguration].
  /// [audioExtractionStatus] Whether audio extraction is enabled. Valid values: `ENABLED`, `DISABLED`.
  const AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfigurationAudioExtractionConfiguration({
    required this.audioExtractionStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioExtractionStatus': audioExtractionStatus,
    };
  }

  factory AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfigurationAudioExtractionConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfigurationAudioExtractionConfiguration(
      audioExtractionStatus: pulumi.Input.fromValue(map['audioExtractionStatus'] as String),
    );
  }
}
