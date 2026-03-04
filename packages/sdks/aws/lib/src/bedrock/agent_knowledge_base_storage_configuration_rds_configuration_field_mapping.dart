// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentKnowledgeBaseStorageConfigurationRdsConfigurationFieldMapping {
  /// Name for the universal metadata field where Amazon Bedrock will store any custom metadata from your data source.
  final pulumi.Input<String>? customMetadataField;

  /// Name of the field in which Amazon Bedrock stores metadata about the vector store.
  final pulumi.Input<String> metadataField;

  /// Name of the field in which Amazon Bedrock stores the ID for each entry.
  final pulumi.Input<String> primaryKeyField;

  /// Name of the field in which Amazon Bedrock stores the raw text from your data. The text is split according to the chunking strategy you choose.
  final pulumi.Input<String> textField;

  /// Name of the field in which Amazon Bedrock stores the vector embeddings for your data sources.
  final pulumi.Input<String> vectorField;

  /// Creates a new [AgentKnowledgeBaseStorageConfigurationRdsConfigurationFieldMapping].
  /// [customMetadataField] Name for the universal metadata field where Amazon Bedrock will store any custom metadata from your data source.
  /// [metadataField] Name of the field in which Amazon Bedrock stores metadata about the vector store.
  /// [primaryKeyField] Name of the field in which Amazon Bedrock stores the ID for each entry.
  /// [textField] Name of the field in which Amazon Bedrock stores the raw text from your data. The text is split according to the chunking strategy you choose.
  /// [vectorField] Name of the field in which Amazon Bedrock stores the vector embeddings for your data sources.
  AgentKnowledgeBaseStorageConfigurationRdsConfigurationFieldMapping({
    this.customMetadataField,
    required this.metadataField,
    required this.primaryKeyField,
    required this.textField,
    required this.vectorField,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customMetadataField': ?customMetadataField,
      'metadataField': metadataField,
      'primaryKeyField': primaryKeyField,
      'textField': textField,
      'vectorField': vectorField,
    };
  }

  factory AgentKnowledgeBaseStorageConfigurationRdsConfigurationFieldMapping.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentKnowledgeBaseStorageConfigurationRdsConfigurationFieldMapping(
      customMetadataField: (() {
        final guardedValue = map['customMetadataField'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      metadataField: pulumi.Input.fromValue(map['metadataField'] as String),
      primaryKeyField: pulumi.Input.fromValue(map['primaryKeyField'] as String),
      textField: pulumi.Input.fromValue(map['textField'] as String),
      vectorField: pulumi.Input.fromValue(map['vectorField'] as String),
    );
  }
}
