// ignore_for_file: unused_element, unnecessary_cast

import '../agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration_redshift_configuration_storage_configuration_aws_data_catalog_configuration/agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration_redshift_configuration_storage_configuration_aws_data_catalog_configuration.dart';
import '../agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration_redshift_configuration_storage_configuration_redshift_configuration/agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration_redshift_configuration_storage_configuration_redshift_configuration.dart';

class AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfiguration {
  /// Configurations for storage in AWS Glue Data Catalog. See `aws_data_catalog_configuration` block for details.
  final AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfigurationAwsDataCatalogConfiguration?
      awsDataCatalogConfiguration;

  /// Configurations for storage in Amazon Redshift. See `redshift_configuration` block for details.
  final AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfigurationRedshiftConfiguration?
      redshiftConfiguration;

  /// Vector store service in which the knowledge base is stored. Valid Values: `MONGO_DB_ATLAS`, `OPENSEARCH_SERVERLESS`, `OPENSEARCH_MANAGED_CLUSTER`, `PINECONE`, `REDIS_ENTERPRISE_CLOUD`, `RDS`, `S3_VECTORS`, `NEPTUNE_ANALYTICS`.
  final String type;

  AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfiguration({
    this.awsDataCatalogConfiguration,
    this.redshiftConfiguration,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsDataCatalogConfigurationValue = awsDataCatalogConfiguration;
    if (awsDataCatalogConfigurationValue != null) {
      map['awsDataCatalogConfiguration'] =
          awsDataCatalogConfigurationValue.toMap();
    }
    final redshiftConfigurationValue = redshiftConfiguration;
    if (redshiftConfigurationValue != null) {
      map['redshiftConfiguration'] = redshiftConfigurationValue.toMap();
    }
    map['type'] = type;
    return map;
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfiguration(
      awsDataCatalogConfiguration: map['awsDataCatalogConfiguration'] == null
          ? null
          : AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfigurationAwsDataCatalogConfiguration
              .fromMap((map['awsDataCatalogConfiguration'] as Map)
                  .cast<String, dynamic>()),
      redshiftConfiguration: map['redshiftConfiguration'] == null
          ? null
          : AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfigurationRedshiftConfiguration
              .fromMap((map['redshiftConfiguration'] as Map)
                  .cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
