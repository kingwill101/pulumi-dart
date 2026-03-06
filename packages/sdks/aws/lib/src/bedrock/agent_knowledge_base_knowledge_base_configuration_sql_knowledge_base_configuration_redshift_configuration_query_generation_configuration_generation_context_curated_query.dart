// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextCuratedQuery {
  /// Example natural language query.
  final pulumi.Input<String> naturalLanguage;
  /// SQL equivalent of `natural_language`.
  final pulumi.Input<String> sql;

  /// Creates a new [AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextCuratedQuery].
  /// [naturalLanguage] Example natural language query.
  /// [sql] SQL equivalent of `natural_language`.
  const AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextCuratedQuery({
    required this.naturalLanguage,
    required this.sql,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'naturalLanguage': naturalLanguage,
      'sql': sql,
    };
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextCuratedQuery.fromMap(Map<String, dynamic> map) {
    return AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextCuratedQuery(
      naturalLanguage: pulumi.Input.fromValue(map['naturalLanguage'] as String),
      sql: pulumi.Input.fromValue(map['sql'] as String),
    );
  }
}

