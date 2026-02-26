// ignore_for_file: unused_element, unnecessary_cast

class AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextTableColumn {
  /// Description of the column that helps the query engine understand the contents of the column.
  final String? description;

  /// Whether to include or exclude the column during query generation. Valid values `INCLUDE`, `EXCLUDE`.
  final String? inclusion;

  /// Name of the column for which the other fields in this object apply.
  final String? name;

  AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextTableColumn({
    this.description,
    this.inclusion,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final inclusionValue = inclusion;
    if (inclusionValue != null) {
      map['inclusion'] = inclusionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextTableColumn.fromMap(
      Map<String, dynamic> map) {
    return AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextTableColumn(
      description:
          map['description'] == null ? null : map['description'] as String,
      inclusion: map['inclusion'] == null ? null : map['inclusion'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
