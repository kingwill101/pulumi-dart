// ignore_for_file: unused_element, unnecessary_cast

class AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextCuratedQuery {
  /// Example natural language query.
  final String naturalLanguage;

  /// SQL equivalent of <span pulumi-lang-nodejs="`naturalLanguage`" pulumi-lang-dotnet="`NaturalLanguage`" pulumi-lang-go="`naturalLanguage`" pulumi-lang-python="`natural_language`" pulumi-lang-yaml="`naturalLanguage`" pulumi-lang-java="`naturalLanguage`">`natural_language`</span>.
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
