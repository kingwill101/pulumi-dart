// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration_redshift_configuration_query_generation_configuration_generation_context_curated_query/agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration_redshift_configuration_query_generation_configuration_generation_context_curated_query.dart';
import '../agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration_redshift_configuration_query_generation_configuration_generation_context_table/agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration_redshift_configuration_query_generation_configuration_generation_context_table.dart';

class AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContext {
  /// Information about example queries to help the query engine generate appropriate SQL queries. See <span pulumi-lang-nodejs="`curatedQuery`" pulumi-lang-dotnet="`CuratedQuery`" pulumi-lang-go="`curatedQuery`" pulumi-lang-python="`curated_query`" pulumi-lang-yaml="`curatedQuery`" pulumi-lang-java="`curatedQuery`">`curated_query`</span> block for details.
  final List<
          AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextCuratedQuery>?
      curatedQueries;

  /// Information about a table in the database. See <span pulumi-lang-nodejs="`table`" pulumi-lang-dotnet="`Table`" pulumi-lang-go="`table`" pulumi-lang-python="`table`" pulumi-lang-yaml="`table`" pulumi-lang-java="`table`">`table`</span> block for details.
  final List<
          AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextTable>?
      tables;

  AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContext({
    this.curatedQueries,
    this.tables,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final curatedQueriesValue = curatedQueries;
    if (curatedQueriesValue != null) {
      map['curatedQueries'] = Input.encodeList<
          AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextCuratedQuery,
          Map<String, dynamic>>(curatedQueriesValue, (value) => value.toMap());
    }
    final tablesValue = tables;
    if (tablesValue != null) {
      map['tables'] = Input.encodeList<
          AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextTable,
          Map<String, dynamic>>(tablesValue, (value) => value.toMap());
    }
    return map;
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContext.fromMap(
      Map<String, dynamic> map) {
    return AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContext(
      curatedQueries: map['curatedQueries'] == null
          ? null
          : Input.decodeList<
                  AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextCuratedQuery>(
              map['curatedQueries'],
              (value) =>
                  AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextCuratedQuery
                      .fromMap((value as Map).cast<String, dynamic>())),
      tables: map['tables'] == null
          ? null
          : Input.decodeList<
                  AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextTable>(
              map['tables'],
              (value) =>
                  AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextTable
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
