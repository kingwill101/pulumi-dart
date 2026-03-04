// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_knowledge_base_storage_configuration_opensearch_serverless_configuration_field_mapping.dart';

class AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfiguration {
  /// ARN of the OpenSearch Service vector store.
  final pulumi.Input<String> collectionArn;

  /// The names of the fields to which to map information about the vector store. This block supports the following arguments:
  final pulumi.Input<
    AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationFieldMapping
  >
  fieldMapping;

  /// Name of the vector store.
  final pulumi.Input<String> vectorIndexName;

  /// Creates a new [AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfiguration].
  /// [collectionArn] ARN of the OpenSearch Service vector store.
  /// [fieldMapping] The names of the fields to which to map information about the vector store. This block supports the following arguments:
  /// [vectorIndexName] Name of the vector store.
  AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfiguration({
    required this.collectionArn,
    required this.fieldMapping,
    required this.vectorIndexName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionArn': collectionArn,
      'fieldMapping':
          pulumi.Input.mapInputValue<
            AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationFieldMapping,
            Map<String, dynamic>
          >(fieldMapping, (value) => value.toMap()),
      'vectorIndexName': vectorIndexName,
    };
  }

  factory AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfiguration(
      collectionArn: pulumi.Input.fromValue(map['collectionArn'] as String),
      fieldMapping: pulumi.Input.fromValue(
        AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationFieldMapping.fromMap(
          (map['fieldMapping']! as Map).cast<String, dynamic>(),
        ),
      ),
      vectorIndexName: pulumi.Input.fromValue(map['vectorIndexName'] as String),
    );
  }
}
