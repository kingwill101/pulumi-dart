// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_knowledge_base_knowledge_base_configuration_kendra_knowledge_base_configuration.dart';
import 'agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration.dart';
import 'agent_knowledge_base_knowledge_base_configuration_vector_knowledge_base_configuration.dart';

class AgentKnowledgeBaseKnowledgeBaseConfiguration {
  /// Settings for an Amazon Kendra knowledge base. See `kendra_knowledge_base_configuration` block for details.
  final pulumi.Input<AgentKnowledgeBaseKnowledgeBaseConfigurationKendraKnowledgeBaseConfiguration>? kendraKnowledgeBaseConfiguration;
  /// Configurations for a knowledge base connected to an SQL database. See `sql_knowledge_base_configuration` block for details.
  final pulumi.Input<AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfiguration>? sqlKnowledgeBaseConfiguration;
  /// Type of data that the data source is converted into for the knowledge base. Valid Values: `VECTOR`, `KENDRA`, `SQL`.
  final pulumi.Input<String> type;
  /// Details about the model that's used to convert the data source into vector embeddings. See `vector_knowledge_base_configuration` block for details.
  final pulumi.Input<AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfiguration>? vectorKnowledgeBaseConfiguration;

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
      'kendraKnowledgeBaseConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentKnowledgeBaseKnowledgeBaseConfigurationKendraKnowledgeBaseConfiguration, Map<String, dynamic>>(kendraKnowledgeBaseConfiguration, (value) => value.toMap()),
      'sqlKnowledgeBaseConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfiguration, Map<String, dynamic>>(sqlKnowledgeBaseConfiguration, (value) => value.toMap()),
      'type': type,
      'vectorKnowledgeBaseConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfiguration, Map<String, dynamic>>(vectorKnowledgeBaseConfiguration, (value) => value.toMap()),
    };
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentKnowledgeBaseKnowledgeBaseConfiguration(
      kendraKnowledgeBaseConfiguration: (() { final guardedValue = map['kendraKnowledgeBaseConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentKnowledgeBaseKnowledgeBaseConfigurationKendraKnowledgeBaseConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sqlKnowledgeBaseConfiguration: (() { final guardedValue = map['sqlKnowledgeBaseConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      vectorKnowledgeBaseConfiguration: (() { final guardedValue = map['vectorKnowledgeBaseConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

