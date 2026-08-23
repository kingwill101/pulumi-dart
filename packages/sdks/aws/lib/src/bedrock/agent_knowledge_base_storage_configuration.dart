// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_knowledge_base_storage_configuration_mongo_db_atlas_configuration.dart';
import 'agent_knowledge_base_storage_configuration_neptune_analytics_configuration.dart';
import 'agent_knowledge_base_storage_configuration_opensearch_managed_cluster_configuration.dart';
import 'agent_knowledge_base_storage_configuration_opensearch_serverless_configuration.dart';
import 'agent_knowledge_base_storage_configuration_pinecone_configuration.dart';
import 'agent_knowledge_base_storage_configuration_rds_configuration.dart';
import 'agent_knowledge_base_storage_configuration_redis_enterprise_cloud_configuration.dart';
import 'agent_knowledge_base_storage_configuration_s3_vectors_configuration.dart';

class AgentKnowledgeBaseStorageConfiguration {
  /// The storage configuration of the knowledge base in MongoDB Atlas. See `mongoDbAtlasConfiguration` block for details.
  final pulumi.Input<AgentKnowledgeBaseStorageConfigurationMongoDbAtlasConfiguration>? mongoDbAtlasConfiguration;
  /// The storage configuration of the knowledge base in Amazon Neptune Analytics. See `neptuneAnalyticsConfiguration` block for details.
  final pulumi.Input<AgentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfiguration>? neptuneAnalyticsConfiguration;
  /// The storage configuration of the knowledge base in Amazon OpenSearch Service Managed Cluster. See `opensearchManagedClusterConfiguration` block for details.
  final pulumi.Input<AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfiguration>? opensearchManagedClusterConfiguration;
  /// The storage configuration of the knowledge base in Amazon OpenSearch Service Serverless. See `opensearchServerlessConfiguration` block for details.
  final pulumi.Input<AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfiguration>? opensearchServerlessConfiguration;
  /// The storage configuration of the knowledge base in Pinecone. See `pineconeConfiguration` block for details.
  final pulumi.Input<AgentKnowledgeBaseStorageConfigurationPineconeConfiguration>? pineconeConfiguration;
  /// Details about the storage configuration of the knowledge base in Amazon RDS. For more information, see [Create a vector index in Amazon RDS](https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup.html). See `rdsConfiguration` block for details.
  final pulumi.Input<AgentKnowledgeBaseStorageConfigurationRdsConfiguration>? rdsConfiguration;
  /// The storage configuration of the knowledge base in Redis Enterprise Cloud. See `redisEnterpriseCloudConfiguration` block for details.
  final pulumi.Input<AgentKnowledgeBaseStorageConfigurationRedisEnterpriseCloudConfiguration>? redisEnterpriseCloudConfiguration;
  /// The storage configuration of the knowledge base in Amazon S3 Vectors. See `s3VectorsConfiguration` block for details.
  final pulumi.Input<AgentKnowledgeBaseStorageConfigurationS3VectorsConfiguration>? s3VectorsConfiguration;
  /// Vector store service in which the knowledge base is stored. Valid Values: `MONGO_DB_ATLAS`, `OPENSEARCH_SERVERLESS`, `OPENSEARCH_MANAGED_CLUSTER`, `PINECONE`, `REDIS_ENTERPRISE_CLOUD`, `RDS`, `S3_VECTORS`, `NEPTUNE_ANALYTICS`.
  final pulumi.Input<String> type;

  /// Creates a new [AgentKnowledgeBaseStorageConfiguration].
  /// [mongoDbAtlasConfiguration] The storage configuration of the knowledge base in MongoDB Atlas. See `mongoDbAtlasConfiguration` block for details.
  /// [neptuneAnalyticsConfiguration] The storage configuration of the knowledge base in Amazon Neptune Analytics. See `neptuneAnalyticsConfiguration` block for details.
  /// [opensearchManagedClusterConfiguration] The storage configuration of the knowledge base in Amazon OpenSearch Service Managed Cluster. See `opensearchManagedClusterConfiguration` block for details.
  /// [opensearchServerlessConfiguration] The storage configuration of the knowledge base in Amazon OpenSearch Service Serverless. See `opensearchServerlessConfiguration` block for details.
  /// [pineconeConfiguration] The storage configuration of the knowledge base in Pinecone. See `pineconeConfiguration` block for details.
  /// [rdsConfiguration] Details about the storage configuration of the knowledge base in Amazon RDS. For more information, see [Create a vector index in Amazon RDS](https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup.html). See `rdsConfiguration` block for details.
  /// [redisEnterpriseCloudConfiguration] The storage configuration of the knowledge base in Redis Enterprise Cloud. See `redisEnterpriseCloudConfiguration` block for details.
  /// [s3VectorsConfiguration] The storage configuration of the knowledge base in Amazon S3 Vectors. See `s3VectorsConfiguration` block for details.
  /// [type] Vector store service in which the knowledge base is stored. Valid Values: `MONGO_DB_ATLAS`, `OPENSEARCH_SERVERLESS`, `OPENSEARCH_MANAGED_CLUSTER`, `PINECONE`, `REDIS_ENTERPRISE_CLOUD`, `RDS`, `S3_VECTORS`, `NEPTUNE_ANALYTICS`.
  const AgentKnowledgeBaseStorageConfiguration({
    this.mongoDbAtlasConfiguration,
    this.neptuneAnalyticsConfiguration,
    this.opensearchManagedClusterConfiguration,
    this.opensearchServerlessConfiguration,
    this.pineconeConfiguration,
    this.rdsConfiguration,
    this.redisEnterpriseCloudConfiguration,
    this.s3VectorsConfiguration,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mongoDbAtlasConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentKnowledgeBaseStorageConfigurationMongoDbAtlasConfiguration, Map<String, dynamic>>(mongoDbAtlasConfiguration, (value) => value.toMap()),
      'neptuneAnalyticsConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfiguration, Map<String, dynamic>>(neptuneAnalyticsConfiguration, (value) => value.toMap()),
      'opensearchManagedClusterConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfiguration, Map<String, dynamic>>(opensearchManagedClusterConfiguration, (value) => value.toMap()),
      'opensearchServerlessConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfiguration, Map<String, dynamic>>(opensearchServerlessConfiguration, (value) => value.toMap()),
      'pineconeConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentKnowledgeBaseStorageConfigurationPineconeConfiguration, Map<String, dynamic>>(pineconeConfiguration, (value) => value.toMap()),
      'rdsConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentKnowledgeBaseStorageConfigurationRdsConfiguration, Map<String, dynamic>>(rdsConfiguration, (value) => value.toMap()),
      'redisEnterpriseCloudConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentKnowledgeBaseStorageConfigurationRedisEnterpriseCloudConfiguration, Map<String, dynamic>>(redisEnterpriseCloudConfiguration, (value) => value.toMap()),
      's3VectorsConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentKnowledgeBaseStorageConfigurationS3VectorsConfiguration, Map<String, dynamic>>(s3VectorsConfiguration, (value) => value.toMap()),
      'type': type,
    };
  }

  factory AgentKnowledgeBaseStorageConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentKnowledgeBaseStorageConfiguration(
      mongoDbAtlasConfiguration: (() { final guardedValue = map['mongoDbAtlasConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentKnowledgeBaseStorageConfigurationMongoDbAtlasConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      neptuneAnalyticsConfiguration: (() { final guardedValue = map['neptuneAnalyticsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      opensearchManagedClusterConfiguration: (() { final guardedValue = map['opensearchManagedClusterConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      opensearchServerlessConfiguration: (() { final guardedValue = map['opensearchServerlessConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pineconeConfiguration: (() { final guardedValue = map['pineconeConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentKnowledgeBaseStorageConfigurationPineconeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rdsConfiguration: (() { final guardedValue = map['rdsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentKnowledgeBaseStorageConfigurationRdsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      redisEnterpriseCloudConfiguration: (() { final guardedValue = map['redisEnterpriseCloudConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentKnowledgeBaseStorageConfigurationRedisEnterpriseCloudConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3VectorsConfiguration: (() { final guardedValue = map['s3VectorsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentKnowledgeBaseStorageConfigurationS3VectorsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
