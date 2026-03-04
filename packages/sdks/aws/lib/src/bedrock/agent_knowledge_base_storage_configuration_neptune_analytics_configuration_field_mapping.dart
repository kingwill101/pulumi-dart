// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfigurationFieldMapping {
  /// Name of the field in which Amazon Bedrock stores metadata about the vector store.
  final pulumi.Input<String> metadataField;

  /// Name of the field in which Amazon Bedrock stores the raw text from your data. The text is split according to the chunking strategy you choose.
  final pulumi.Input<String> textField;

  /// Creates a new [AgentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfigurationFieldMapping].
  /// [metadataField] Name of the field in which Amazon Bedrock stores metadata about the vector store.
  /// [textField] Name of the field in which Amazon Bedrock stores the raw text from your data. The text is split according to the chunking strategy you choose.
  AgentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfigurationFieldMapping({
    required this.metadataField,
    required this.textField,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadataField': metadataField,
      'textField': textField,
    };
  }

  factory AgentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfigurationFieldMapping.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfigurationFieldMapping(
      metadataField: pulumi.Input.fromValue(map['metadataField'] as String),
      textField: pulumi.Input.fromValue(map['textField'] as String),
    );
  }
}
