// ignore_for_file: unused_element, unnecessary_cast

class AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfigurationAwsDataCatalogConfiguration {
  /// List of names of the tables to use.
  final List<String> tableNames;

  /// Creates a new [AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfigurationAwsDataCatalogConfiguration].
  /// [tableNames] List of names of the tables to use.
  AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfigurationAwsDataCatalogConfiguration({
    required this.tableNames,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['tableNames'] = tableNames;
    return map;
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfigurationAwsDataCatalogConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfigurationAwsDataCatalogConfiguration(
      tableNames: (map['tableNames'] as List).cast<String>(),
    );
  }
}
