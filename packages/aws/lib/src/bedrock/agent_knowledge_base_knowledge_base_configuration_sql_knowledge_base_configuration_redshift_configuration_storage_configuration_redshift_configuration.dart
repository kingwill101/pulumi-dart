// ignore_for_file: unused_element, unnecessary_cast

class AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfigurationRedshiftConfiguration {
  /// Name of the Amazon Redshift database.
  final String databaseName;

  /// Creates a new [AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfigurationRedshiftConfiguration].
  /// [databaseName] Name of the Amazon Redshift database.
  AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfigurationRedshiftConfiguration({
    required this.databaseName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['databaseName'] = databaseName;
    return map;
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfigurationRedshiftConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfigurationRedshiftConfiguration(
      databaseName: map['databaseName'] as String,
    );
  }
}
