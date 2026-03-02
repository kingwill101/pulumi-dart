// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_knowledge_base_storage_configuration_neptune_analytics_configuration_field_mapping.dart';

class AgentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfiguration {
  /// The names of the fields to which to map information about the vector store. This block supports the following arguments:
  final pulumi.Input<AgentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfigurationFieldMapping> fieldMapping;
  /// ARN of the Neptune Analytics vector store.
  final pulumi.Input<String> graphArn;

  /// Creates a new [AgentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfiguration].
  /// [fieldMapping] The names of the fields to which to map information about the vector store. This block supports the following arguments:
  /// [graphArn] ARN of the Neptune Analytics vector store.
  AgentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfiguration({
    required this.fieldMapping,
    required this.graphArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldMapping': pulumi.Input.mapInputValue<AgentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfigurationFieldMapping, Map<String, dynamic>>(fieldMapping, (value) => value.toMap()),
      'graphArn': graphArn,
    };
  }

  factory AgentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfiguration(
      fieldMapping: (AgentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfigurationFieldMapping.fromMap((map['fieldMapping']! as Map).cast<String, dynamic>())).input(),
      graphArn: (map['graphArn'] as String).input(),
    );
  }
}

