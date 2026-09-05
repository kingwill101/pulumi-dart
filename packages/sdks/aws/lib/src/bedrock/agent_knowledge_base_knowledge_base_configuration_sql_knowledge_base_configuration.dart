// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration_redshift_configuration.dart';

class AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfiguration {
  /// Configurations for a knowledge base connected to an Amazon Redshift database. See `redshiftConfiguration` block for details.
  final pulumi.Input<AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfiguration?>? redshiftConfiguration;
  /// Type of SQL database to connect to the knowledge base. Valid values: `REDSHIFT`.
  final pulumi.Input<String> type;

  /// Creates a new [AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfiguration].
  /// [redshiftConfiguration] Configurations for a knowledge base connected to an Amazon Redshift database. See `redshiftConfiguration` block for details.
  /// [type] Type of SQL database to connect to the knowledge base. Valid values: `REDSHIFT`.
  const AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfiguration({
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
      redshiftConfiguration: (() { final guardedValue = map['redshiftConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
