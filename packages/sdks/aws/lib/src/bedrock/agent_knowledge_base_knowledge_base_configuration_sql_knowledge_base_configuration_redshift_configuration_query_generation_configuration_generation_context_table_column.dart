// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextTableColumn {
  /// Description of the column that helps the query engine understand the contents of the column.
  final pulumi.Input<String>? description;
  /// Whether to include or exclude the column during query generation. Valid values `INCLUDE`, `EXCLUDE`.
  final pulumi.Input<String>? inclusion;
  /// Name of the column for which the other fields in this object apply.
  final pulumi.Input<String>? name;

  /// Creates a new [AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextTableColumn].
  /// [description] Description of the column that helps the query engine understand the contents of the column.
  /// [inclusion] Whether to include or exclude the column during query generation. Valid values `INCLUDE`, `EXCLUDE`.
  /// [name] Name of the column for which the other fields in this object apply.
  AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextTableColumn({
    this.description,
    this.inclusion,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'inclusion': ?inclusion,
      'name': ?name,
    };
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextTableColumn.fromMap(Map<String, dynamic> map) {
    return AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextTableColumn(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      inclusion: map['inclusion'] == null ? null : (map['inclusion'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

