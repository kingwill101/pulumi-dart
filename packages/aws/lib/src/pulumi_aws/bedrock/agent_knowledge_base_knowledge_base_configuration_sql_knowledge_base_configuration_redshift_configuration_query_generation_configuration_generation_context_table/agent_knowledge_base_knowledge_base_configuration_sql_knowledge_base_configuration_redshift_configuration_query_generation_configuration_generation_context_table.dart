// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration_redshift_configuration_query_generation_configuration_generation_context_table_column/agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration_redshift_configuration_query_generation_configuration_generation_context_table_column.dart';

class AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextTable {
  /// Information about a column in the table. See <span pulumi-lang-nodejs="`column`" pulumi-lang-dotnet="`Column`" pulumi-lang-go="`column`" pulumi-lang-python="`column`" pulumi-lang-yaml="`column`" pulumi-lang-java="`column`">`column`</span> block for details.
  final List<
          AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextTableColumn>?
      columns;

  /// Description of the table that helps the query engine understand the contents of the table.
  final String? description;

  /// Whether to include or exclude the table during query generation. Valid values `INCLUDE`, `EXCLUDE`.
  final String? inclusion;

  /// Name of the table for which the other fields in this object apply.
  final String name;

  AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextTable({
    this.columns,
    this.description,
    this.inclusion,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final columnsValue = columns;
    if (columnsValue != null) {
      map['columns'] = Input.encodeList<
          AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextTableColumn,
          Map<String, dynamic>>(columnsValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final inclusionValue = inclusion;
    if (inclusionValue != null) {
      map['inclusion'] = inclusionValue;
    }
    map['name'] = name;
    return map;
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextTable.fromMap(
      Map<String, dynamic> map) {
    return AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextTable(
      columns: map['columns'] == null
          ? null
          : Input.decodeList<
                  AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextTableColumn>(
              map['columns'],
              (value) =>
                  AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextTableColumn
                      .fromMap((value as Map).cast<String, dynamic>())),
      description:
          map['description'] == null ? null : map['description'] as String,
      inclusion: map['inclusion'] == null ? null : map['inclusion'] as String,
      name: map['name'] as String,
    );
  }
}
