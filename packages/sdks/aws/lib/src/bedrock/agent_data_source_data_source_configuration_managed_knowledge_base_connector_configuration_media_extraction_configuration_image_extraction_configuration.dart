// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfigurationImageExtractionConfiguration {
  /// Whether image extraction is enabled. Valid values: `ENABLED`, `DISABLED`.
  final pulumi.Input<String> imageExtractionStatus;

  /// Creates a new [AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfigurationImageExtractionConfiguration].
  /// [imageExtractionStatus] Whether image extraction is enabled. Valid values: `ENABLED`, `DISABLED`.
  const AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfigurationImageExtractionConfiguration({
    required this.imageExtractionStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageExtractionStatus': imageExtractionStatus,
    };
  }

  factory AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfigurationImageExtractionConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfigurationImageExtractionConfiguration(
      imageExtractionStatus: pulumi.Input.fromValue(map['imageExtractionStatus'] as String),
    );
  }
}
