// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration_redshift_configuration.dart';

class AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfiguration {
  /// Configurations for a knowledge base connected to an Amazon Redshift database. See `redshift_configuration` block for details.
  final pulumi.Input<AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfiguration>? redshiftConfiguration;
  /// Type of SQL database to connect to the knowledge base. Valid values: `REDSHIFT`.
  final pulumi.Input<String> type;

  /// Creates a new [AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfiguration].
  /// [redshiftConfiguration] Configurations for a knowledge base connected to an Amazon Redshift database. See `redshift_configuration` block for details.
  /// [type] Type of SQL database to connect to the knowledge base. Valid values: `REDSHIFT`.
  AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfiguration({
    this.redshiftConfiguration,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'redshiftConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfiguration, Map<String, dynamic>>(redshiftConfiguration, (value) => value.toMap()),
      'type': type,
    };
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfiguration(
      redshiftConfiguration: map['redshiftConfiguration'] == null ? null : ((AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfiguration.fromMap((map['redshiftConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      type: (map['type'] as String).input(),
    );
  }
}

