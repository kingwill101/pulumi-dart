// ignore_for_file: unused_element, unnecessary_cast

import 'agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration_redshift_configuration.dart';

class AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfiguration {
  /// Configurations for a knowledge base connected to an Amazon Redshift database. See `redshift_configuration` block for details.
  final AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfiguration? redshiftConfiguration;
  /// Type of SQL database to connect to the knowledge base. Valid values: `REDSHIFT`.
  final String type;

  /// Creates a new [AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfiguration].
  /// [redshiftConfiguration] Configurations for a knowledge base connected to an Amazon Redshift database. See `redshift_configuration` block for details.
  /// [type] Type of SQL database to connect to the knowledge base. Valid values: `REDSHIFT`.
  AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfiguration({
    this.redshiftConfiguration,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'redshiftConfiguration': ?redshiftConfiguration == null ? null : redshiftConfiguration!.toMap(),
      'type': type,
    };
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfiguration(
      redshiftConfiguration: map['redshiftConfiguration'] == null ? null : AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfiguration.fromMap((map['redshiftConfiguration'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

