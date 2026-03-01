// ignore_for_file: unused_element, unnecessary_cast

import 'agent_knowledge_base_knowledge_base_configuration_kendra_knowledge_base_configuration.dart';
import 'agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration.dart';
import 'agent_knowledge_base_knowledge_base_configuration_vector_knowledge_base_configuration.dart';

class AgentKnowledgeBaseKnowledgeBaseConfiguration {
  /// Settings for an Amazon Kendra knowledge base. See `kendra_knowledge_base_configuration` block for details.
  final AgentKnowledgeBaseKnowledgeBaseConfigurationKendraKnowledgeBaseConfiguration?
  kendraKnowledgeBaseConfiguration;

  /// Configurations for a knowledge base connected to an SQL database. See `sql_knowledge_base_configuration` block for details.
  final AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfiguration?
  sqlKnowledgeBaseConfiguration;

  /// Type of data that the data source is converted into for the knowledge base. Valid Values: `VECTOR`, `KENDRA`, `SQL`.
  final String type;

  /// Details about the model that's used to convert the data source into vector embeddings. See `vector_knowledge_base_configuration` block for details.
  final AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfiguration?
  vectorKnowledgeBaseConfiguration;

  /// Creates a new [AgentKnowledgeBaseKnowledgeBaseConfiguration].
  /// [kendraKnowledgeBaseConfiguration] Settings for an Amazon Kendra knowledge base. See `kendra_knowledge_base_configuration` block for details.
  /// [sqlKnowledgeBaseConfiguration] Configurations for a knowledge base connected to an SQL database. See `sql_knowledge_base_configuration` block for details.
  /// [type] Type of data that the data source is converted into for the knowledge base. Valid Values: `VECTOR`, `KENDRA`, `SQL`.
  /// [vectorKnowledgeBaseConfiguration] Details about the model that's used to convert the data source into vector embeddings. See `vector_knowledge_base_configuration` block for details.
  AgentKnowledgeBaseKnowledgeBaseConfiguration({
    this.kendraKnowledgeBaseConfiguration,
    this.sqlKnowledgeBaseConfiguration,
    required this.type,
    this.vectorKnowledgeBaseConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kendraKnowledgeBaseConfiguration':
          ?kendraKnowledgeBaseConfiguration == null
          ? null
          : kendraKnowledgeBaseConfiguration!.toMap(),
      'sqlKnowledgeBaseConfiguration': ?sqlKnowledgeBaseConfiguration == null
          ? null
          : sqlKnowledgeBaseConfiguration!.toMap(),
      'type': type,
      'vectorKnowledgeBaseConfiguration':
          ?vectorKnowledgeBaseConfiguration == null
          ? null
          : vectorKnowledgeBaseConfiguration!.toMap(),
    };
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentKnowledgeBaseKnowledgeBaseConfiguration(
      kendraKnowledgeBaseConfiguration:
          map['kendraKnowledgeBaseConfiguration'] == null
          ? null
          : AgentKnowledgeBaseKnowledgeBaseConfigurationKendraKnowledgeBaseConfiguration.fromMap(
              (map['kendraKnowledgeBaseConfiguration'] as Map)
                  .cast<String, dynamic>(),
            ),
      sqlKnowledgeBaseConfiguration:
          map['sqlKnowledgeBaseConfiguration'] == null
          ? null
          : AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfiguration.fromMap(
              (map['sqlKnowledgeBaseConfiguration'] as Map)
                  .cast<String, dynamic>(),
            ),
      type: map['type'] as String,
      vectorKnowledgeBaseConfiguration:
          map['vectorKnowledgeBaseConfiguration'] == null
          ? null
          : AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfiguration.fromMap(
              (map['vectorKnowledgeBaseConfiguration'] as Map)
                  .cast<String, dynamic>(),
            ),
    );
  }
}
