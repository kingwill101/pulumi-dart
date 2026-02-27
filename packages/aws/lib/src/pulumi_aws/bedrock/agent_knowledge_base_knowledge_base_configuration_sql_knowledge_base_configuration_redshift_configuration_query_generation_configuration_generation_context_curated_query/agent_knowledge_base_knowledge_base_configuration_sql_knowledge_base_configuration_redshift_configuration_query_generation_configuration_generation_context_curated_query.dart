// ignore_for_file: unused_element, unnecessary_cast

class AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextCuratedQuery {
  /// Example natural language query.
  final String naturalLanguage;

  /// SQL equivalent of `natural_language`.
  final String sql;

  AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextCuratedQuery({
    required this.naturalLanguage,
    required this.sql,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['naturalLanguage'] = naturalLanguage;
    map['sql'] = sql;
    return map;
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextCuratedQuery.fromMap(
      Map<String, dynamic> map) {
    return AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextCuratedQuery(
      naturalLanguage: map['naturalLanguage'] as String,
      sql: map['sql'] as String,
    );
  }
}
