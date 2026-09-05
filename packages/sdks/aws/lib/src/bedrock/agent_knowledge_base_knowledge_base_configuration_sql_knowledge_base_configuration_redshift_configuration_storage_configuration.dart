// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration_redshift_configuration_storage_configuration_aws_data_catalog_configuration.dart';
import 'agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration_redshift_configuration_storage_configuration_redshift_configuration.dart';

class AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfiguration {
  /// Configurations for storage in AWS Glue Data Catalog. See `awsDataCatalogConfiguration` block for details.
  final pulumi.Input<AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfigurationAwsDataCatalogConfiguration?>? awsDataCatalogConfiguration;
  /// Configurations for storage in Amazon Redshift. See `redshiftConfiguration` block for details.
  final pulumi.Input<AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfigurationRedshiftConfiguration?>? redshiftConfiguration;
  /// Vector store service in which the knowledge base is stored. Valid Values: `MONGO_DB_ATLAS`, `OPENSEARCH_SERVERLESS`, `OPENSEARCH_MANAGED_CLUSTER`, `PINECONE`, `REDIS_ENTERPRISE_CLOUD`, `RDS`, `S3_VECTORS`, `NEPTUNE_ANALYTICS`.
  final pulumi.Input<String> type;

  /// Creates a new [AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfiguration].
  /// [awsDataCatalogConfiguration] Configurations for storage in AWS Glue Data Catalog. See `awsDataCatalogConfiguration` block for details.
  /// [redshiftConfiguration] Configurations for storage in Amazon Redshift. See `redshiftConfiguration` block for details.
  /// [type] Vector store service in which the knowledge base is stored. Valid Values: `MONGO_DB_ATLAS`, `OPENSEARCH_SERVERLESS`, `OPENSEARCH_MANAGED_CLUSTER`, `PINECONE`, `REDIS_ENTERPRISE_CLOUD`, `RDS`, `S3_VECTORS`, `NEPTUNE_ANALYTICS`.
  const AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfiguration({
    this.awsDataCatalogConfiguration,
    this.redshiftConfiguration,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsDataCatalogConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfigurationAwsDataCatalogConfiguration, Map<String, dynamic>>(awsDataCatalogConfiguration, (value) => value.toMap()),
      'redshiftConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfigurationRedshiftConfiguration, Map<String, dynamic>>(redshiftConfiguration, (value) => value.toMap()),
      'type': type,
    };
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfiguration(
      awsDataCatalogConfiguration: (() { final guardedValue = map['awsDataCatalogConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfigurationAwsDataCatalogConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      redshiftConfiguration: (() { final guardedValue = map['redshiftConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfigurationRedshiftConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
