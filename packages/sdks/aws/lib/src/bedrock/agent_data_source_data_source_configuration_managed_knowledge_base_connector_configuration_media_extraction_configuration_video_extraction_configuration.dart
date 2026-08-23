// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfigurationVideoExtractionConfiguration {
  /// Whether video extraction is enabled. Valid values: `ENABLED`, `DISABLED`.
  final pulumi.Input<String> videoExtractionStatus;

  /// Creates a new [AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfigurationVideoExtractionConfiguration].
  /// [videoExtractionStatus] Whether video extraction is enabled. Valid values: `ENABLED`, `DISABLED`.
  const AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfigurationVideoExtractionConfiguration({
    required this.videoExtractionStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'videoExtractionStatus': videoExtractionStatus,
    };
  }

  factory AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfigurationVideoExtractionConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfigurationVideoExtractionConfiguration(
      videoExtractionStatus: pulumi.Input.fromValue(map['videoExtractionStatus'] as String),
    );
  }
}
