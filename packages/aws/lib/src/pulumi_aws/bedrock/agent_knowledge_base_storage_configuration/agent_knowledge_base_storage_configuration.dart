// ignore_for_file: unused_element, unnecessary_cast

import '../agent_knowledge_base_storage_configuration_mongo_db_atlas_configuration/agent_knowledge_base_storage_configuration_mongo_db_atlas_configuration.dart';
import '../agent_knowledge_base_storage_configuration_neptune_analytics_configuration/agent_knowledge_base_storage_configuration_neptune_analytics_configuration.dart';
import '../agent_knowledge_base_storage_configuration_opensearch_managed_cluster_configuration/agent_knowledge_base_storage_configuration_opensearch_managed_cluster_configuration.dart';
import '../agent_knowledge_base_storage_configuration_opensearch_serverless_configuration/agent_knowledge_base_storage_configuration_opensearch_serverless_configuration.dart';
import '../agent_knowledge_base_storage_configuration_pinecone_configuration/agent_knowledge_base_storage_configuration_pinecone_configuration.dart';
import '../agent_knowledge_base_storage_configuration_rds_configuration/agent_knowledge_base_storage_configuration_rds_configuration.dart';
import '../agent_knowledge_base_storage_configuration_redis_enterprise_cloud_configuration/agent_knowledge_base_storage_configuration_redis_enterprise_cloud_configuration.dart';
import '../agent_knowledge_base_storage_configuration_s3_vectors_configuration/agent_knowledge_base_storage_configuration_s3_vectors_configuration.dart';

class AgentKnowledgeBaseStorageConfiguration {
  /// The storage configuration of the knowledge base in MongoDB Atlas. See `mongo_db_atlas_configuration` block for details.
  final AgentKnowledgeBaseStorageConfigurationMongoDbAtlasConfiguration?
      mongoDbAtlasConfiguration;

  /// The storage configuration of the knowledge base in Amazon Neptune Analytics. See `neptune_analytics_configuration` block for details.
  final AgentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfiguration?
      neptuneAnalyticsConfiguration;

  /// The storage configuration of the knowledge base in Amazon OpenSearch Service Managed Cluster. See `opensearch_managed_cluster_configuration` block for details.
  final AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfiguration?
      opensearchManagedClusterConfiguration;

  /// The storage configuration of the knowledge base in Amazon OpenSearch Service Serverless. See `opensearch_serverless_configuration` block for details.
  final AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfiguration?
      opensearchServerlessConfiguration;

  /// The storage configuration of the knowledge base in Pinecone. See `pinecone_configuration` block for details.
  final AgentKnowledgeBaseStorageConfigurationPineconeConfiguration?
      pineconeConfiguration;

  /// Details about the storage configuration of the knowledge base in Amazon RDS. For more information, see [Create a vector index in Amazon RDS](https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup.html). See `rds_configuration` block for details.
  final AgentKnowledgeBaseStorageConfigurationRdsConfiguration?
      rdsConfiguration;

  /// The storage configuration of the knowledge base in Redis Enterprise Cloud. See `redis_enterprise_cloud_configuration` block for details.
  final AgentKnowledgeBaseStorageConfigurationRedisEnterpriseCloudConfiguration?
      redisEnterpriseCloudConfiguration;

  /// The storage configuration of the knowledge base in Amazon S3 Vectors. See `s3_vectors_configuration` block for details.
  final AgentKnowledgeBaseStorageConfigurationS3VectorsConfiguration?
      s3VectorsConfiguration;

  /// Vector store service in which the knowledge base is stored. Valid Values: `MONGO_DB_ATLAS`, `OPENSEARCH_SERVERLESS`, `OPENSEARCH_MANAGED_CLUSTER`, `PINECONE`, `REDIS_ENTERPRISE_CLOUD`, `RDS`, `S3_VECTORS`, `NEPTUNE_ANALYTICS`.
  final String type;

  AgentKnowledgeBaseStorageConfiguration({
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
    final map = <String, dynamic>{};
    final mongoDbAtlasConfigurationValue = mongoDbAtlasConfiguration;
    if (mongoDbAtlasConfigurationValue != null) {
      map['mongoDbAtlasConfiguration'] = mongoDbAtlasConfigurationValue.toMap();
    }
    final neptuneAnalyticsConfigurationValue = neptuneAnalyticsConfiguration;
    if (neptuneAnalyticsConfigurationValue != null) {
      map['neptuneAnalyticsConfiguration'] =
          neptuneAnalyticsConfigurationValue.toMap();
    }
    final opensearchManagedClusterConfigurationValue =
        opensearchManagedClusterConfiguration;
    if (opensearchManagedClusterConfigurationValue != null) {
      map['opensearchManagedClusterConfiguration'] =
          opensearchManagedClusterConfigurationValue.toMap();
    }
    final opensearchServerlessConfigurationValue =
        opensearchServerlessConfiguration;
    if (opensearchServerlessConfigurationValue != null) {
      map['opensearchServerlessConfiguration'] =
          opensearchServerlessConfigurationValue.toMap();
    }
    final pineconeConfigurationValue = pineconeConfiguration;
    if (pineconeConfigurationValue != null) {
      map['pineconeConfiguration'] = pineconeConfigurationValue.toMap();
    }
    final rdsConfigurationValue = rdsConfiguration;
    if (rdsConfigurationValue != null) {
      map['rdsConfiguration'] = rdsConfigurationValue.toMap();
    }
    final redisEnterpriseCloudConfigurationValue =
        redisEnterpriseCloudConfiguration;
    if (redisEnterpriseCloudConfigurationValue != null) {
      map['redisEnterpriseCloudConfiguration'] =
          redisEnterpriseCloudConfigurationValue.toMap();
    }
    final s3VectorsConfigurationValue = s3VectorsConfiguration;
    if (s3VectorsConfigurationValue != null) {
      map['s3VectorsConfiguration'] = s3VectorsConfigurationValue.toMap();
    }
    map['type'] = type;
    return map;
  }

  factory AgentKnowledgeBaseStorageConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentKnowledgeBaseStorageConfiguration(
      mongoDbAtlasConfiguration: map['mongoDbAtlasConfiguration'] == null
          ? null
          : AgentKnowledgeBaseStorageConfigurationMongoDbAtlasConfiguration
              .fromMap((map['mongoDbAtlasConfiguration'] as Map)
                  .cast<String, dynamic>()),
      neptuneAnalyticsConfiguration: map['neptuneAnalyticsConfiguration'] ==
              null
          ? null
          : AgentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfiguration
              .fromMap((map['neptuneAnalyticsConfiguration'] as Map)
                  .cast<String, dynamic>()),
      opensearchManagedClusterConfiguration: map[
                  'opensearchManagedClusterConfiguration'] ==
              null
          ? null
          : AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfiguration
              .fromMap((map['opensearchManagedClusterConfiguration'] as Map)
                  .cast<String, dynamic>()),
      opensearchServerlessConfiguration: map[
                  'opensearchServerlessConfiguration'] ==
              null
          ? null
          : AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfiguration
              .fromMap((map['opensearchServerlessConfiguration'] as Map)
                  .cast<String, dynamic>()),
      pineconeConfiguration: map['pineconeConfiguration'] == null
          ? null
          : AgentKnowledgeBaseStorageConfigurationPineconeConfiguration.fromMap(
              (map['pineconeConfiguration'] as Map).cast<String, dynamic>()),
      rdsConfiguration: map['rdsConfiguration'] == null
          ? null
          : AgentKnowledgeBaseStorageConfigurationRdsConfiguration.fromMap(
              (map['rdsConfiguration'] as Map).cast<String, dynamic>()),
      redisEnterpriseCloudConfiguration: map[
                  'redisEnterpriseCloudConfiguration'] ==
              null
          ? null
          : AgentKnowledgeBaseStorageConfigurationRedisEnterpriseCloudConfiguration
              .fromMap((map['redisEnterpriseCloudConfiguration'] as Map)
                  .cast<String, dynamic>()),
      s3VectorsConfiguration: map['s3VectorsConfiguration'] == null
          ? null
          : AgentKnowledgeBaseStorageConfigurationS3VectorsConfiguration
              .fromMap((map['s3VectorsConfiguration'] as Map)
                  .cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
