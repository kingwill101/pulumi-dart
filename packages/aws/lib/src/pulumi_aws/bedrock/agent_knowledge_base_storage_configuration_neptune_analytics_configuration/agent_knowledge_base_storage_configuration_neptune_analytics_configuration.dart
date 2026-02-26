// ignore_for_file: unused_element, unnecessary_cast

import '../agent_knowledge_base_storage_configuration_neptune_analytics_configuration_field_mapping/agent_knowledge_base_storage_configuration_neptune_analytics_configuration_field_mapping.dart';

class AgentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfiguration {
  /// The names of the fields to which to map information about the vector store. This block supports the following arguments:
  final AgentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfigurationFieldMapping
      fieldMapping;

  /// ARN of the Neptune Analytics vector store.
  final String graphArn;

  AgentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfiguration({
    required this.fieldMapping,
    required this.graphArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fieldMapping'] = fieldMapping.toMap();
    map['graphArn'] = graphArn;
    return map;
  }

  factory AgentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfiguration(
      fieldMapping:
          AgentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfigurationFieldMapping
              .fromMap((map['fieldMapping'] as Map).cast<String, dynamic>()),
      graphArn: map['graphArn'] as String,
    );
  }
}
