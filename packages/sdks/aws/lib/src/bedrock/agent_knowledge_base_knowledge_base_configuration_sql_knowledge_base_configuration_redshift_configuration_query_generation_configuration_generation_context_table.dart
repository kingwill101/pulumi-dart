// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration_redshift_configuration_query_generation_configuration_generation_context_table_column.dart';

class AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextTable {
  /// Information about a column in the table. See `column` block for details.
  final List<AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextTableColumn>? columns;
  /// Description of the table that helps the query engine understand the contents of the table.
  final String? description;
  /// Whether to include or exclude the table during query generation. Valid values `INCLUDE`, `EXCLUDE`.
  final String? inclusion;
  /// Name of the table for which the other fields in this object apply.
  final String name;

  /// Creates a new [AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextTable].
  /// [columns] Information about a column in the table. See `column` block for details.
  /// [description] Description of the table that helps the query engine understand the contents of the table.
  /// [inclusion] Whether to include or exclude the table during query generation. Valid values `INCLUDE`, `EXCLUDE`.
  /// [name] Name of the table for which the other fields in this object apply.
  AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextTable({
    this.columns,
    this.description,
    this.inclusion,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': ?columns == null ? null : pulumi.Input.encodeList<AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextTableColumn, Map<String, dynamic>>(columns!, (value) => value.toMap()),
      'description': ?description,
      'inclusion': ?inclusion,
      'name': name,
    };
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextTable.fromMap(Map<String, dynamic> map) {
    return AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextTable(
      columns: map['columns'] == null ? null : pulumi.Input.decodeList<AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextTableColumn>(map['columns'], (value) => AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextTableColumn.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      inclusion: map['inclusion'] == null ? null : map['inclusion'] as String,
      name: map['name'] as String,
    );
  }
}

