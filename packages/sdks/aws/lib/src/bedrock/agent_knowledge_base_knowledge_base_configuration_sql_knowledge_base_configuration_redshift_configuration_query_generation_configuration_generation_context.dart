// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration_redshift_configuration_query_generation_configuration_generation_context_curated_query.dart';
import 'agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration_redshift_configuration_query_generation_configuration_generation_context_table.dart';

class AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContext {
  /// Information about example queries to help the query engine generate appropriate SQL queries. See `curated_query` block for details.
  final List<AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextCuratedQuery>? curatedQueries;
  /// Information about a table in the database. See `table` block for details.
  final List<AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextTable>? tables;

  /// Creates a new [AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContext].
  /// [curatedQueries] Information about example queries to help the query engine generate appropriate SQL queries. See `curated_query` block for details.
  /// [tables] Information about a table in the database. See `table` block for details.
  AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContext({
    this.curatedQueries,
    this.tables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'curatedQueries': ?curatedQueries == null ? null : pulumi.Input.encodeList<AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextCuratedQuery, Map<String, dynamic>>(curatedQueries!, (value) => value.toMap()),
      'tables': ?tables == null ? null : pulumi.Input.encodeList<AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextTable, Map<String, dynamic>>(tables!, (value) => value.toMap()),
    };
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContext.fromMap(Map<String, dynamic> map) {
    return AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContext(
      curatedQueries: map['curatedQueries'] == null ? null : pulumi.Input.decodeList<AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextCuratedQuery>(map['curatedQueries'], (value) => AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextCuratedQuery.fromMap((value as Map).cast<String, dynamic>())),
      tables: map['tables'] == null ? null : pulumi.Input.decodeList<AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextTable>(map['tables'], (value) => AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextTable.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

