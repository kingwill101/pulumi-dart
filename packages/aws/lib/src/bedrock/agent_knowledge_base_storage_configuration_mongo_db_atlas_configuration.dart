// ignore_for_file: unused_element, unnecessary_cast

import 'agent_knowledge_base_storage_configuration_mongo_db_atlas_configuration_field_mapping.dart';

class AgentKnowledgeBaseStorageConfigurationMongoDbAtlasConfiguration {
  /// The name of the collection in the MongoDB Atlas database.
  final String collectionName;

  /// The ARN of the secret that you created in AWS Secrets Manager that is linked to your MongoDB Atlas database.
  final String credentialsSecretArn;

  /// The name of the database in the MongoDB Atlas database.
  final String databaseName;

  /// The endpoint URL of the MongoDB Atlas database.
  final String endpoint;

  /// The name of the service that hosts the MongoDB Atlas database.
  final String? endpointServiceName;

  /// Contains the names of the fields to which to map information about the vector store.
  final AgentKnowledgeBaseStorageConfigurationMongoDbAtlasConfigurationFieldMapping
  fieldMapping;

  /// The name of the vector index.
  final String? textIndexName;

  /// The name of the vector index.
  final String vectorIndexName;

  /// Creates a new [AgentKnowledgeBaseStorageConfigurationMongoDbAtlasConfiguration].
  /// [collectionName] The name of the collection in the MongoDB Atlas database.
  /// [credentialsSecretArn] The ARN of the secret that you created in AWS Secrets Manager that is linked to your MongoDB Atlas database.
  /// [databaseName] The name of the database in the MongoDB Atlas database.
  /// [endpoint] The endpoint URL of the MongoDB Atlas database.
  /// [endpointServiceName] The name of the service that hosts the MongoDB Atlas database.
  /// [fieldMapping] Contains the names of the fields to which to map information about the vector store.
  /// [textIndexName] The name of the vector index.
  /// [vectorIndexName] The name of the vector index.
  AgentKnowledgeBaseStorageConfigurationMongoDbAtlasConfiguration({
    required this.collectionName,
    required this.credentialsSecretArn,
    required this.databaseName,
    required this.endpoint,
    this.endpointServiceName,
    required this.fieldMapping,
    this.textIndexName,
    required this.vectorIndexName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionName': collectionName,
      'credentialsSecretArn': credentialsSecretArn,
      'databaseName': databaseName,
      'endpoint': endpoint,
      'endpointServiceName': ?endpointServiceName,
      'fieldMapping': fieldMapping.toMap(),
      'textIndexName': ?textIndexName,
      'vectorIndexName': vectorIndexName,
    };
  }

  factory AgentKnowledgeBaseStorageConfigurationMongoDbAtlasConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentKnowledgeBaseStorageConfigurationMongoDbAtlasConfiguration(
      collectionName: map['collectionName'] as String,
      credentialsSecretArn: map['credentialsSecretArn'] as String,
      databaseName: map['databaseName'] as String,
      endpoint: map['endpoint'] as String,
      endpointServiceName: map['endpointServiceName'] == null
          ? null
          : map['endpointServiceName'] as String,
      fieldMapping:
          AgentKnowledgeBaseStorageConfigurationMongoDbAtlasConfigurationFieldMapping.fromMap(
            (map['fieldMapping'] as Map).cast<String, dynamic>(),
          ),
      textIndexName: map['textIndexName'] == null
          ? null
          : map['textIndexName'] as String,
      vectorIndexName: map['vectorIndexName'] as String,
    );
  }
}
