// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_knowledge_base_storage_configuration_mongo_db_atlas_configuration_field_mapping.dart';

class AgentKnowledgeBaseStorageConfigurationMongoDbAtlasConfiguration {
  /// The name of the collection in the MongoDB Atlas database.
  final pulumi.Input<String> collectionName;
  /// The ARN of the secret that you created in AWS Secrets Manager that is linked to your MongoDB Atlas database.
  final pulumi.Input<String> credentialsSecretArn;
  /// The name of the database in the MongoDB Atlas database.
  final pulumi.Input<String> databaseName;
  /// The endpoint URL of the MongoDB Atlas database.
  final pulumi.Input<String> endpoint;
  /// The name of the service that hosts the MongoDB Atlas database.
  final pulumi.Input<String>? endpointServiceName;
  /// Contains the names of the fields to which to map information about the vector store.
  final pulumi.Input<AgentKnowledgeBaseStorageConfigurationMongoDbAtlasConfigurationFieldMapping> fieldMapping;
  /// The name of the vector index.
  final pulumi.Input<String>? textIndexName;
  /// The name of the vector index.
  final pulumi.Input<String> vectorIndexName;

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
      'fieldMapping': pulumi.Input.mapInputValue<AgentKnowledgeBaseStorageConfigurationMongoDbAtlasConfigurationFieldMapping, Map<String, dynamic>>(fieldMapping, (value) => value.toMap()),
      'textIndexName': ?textIndexName,
      'vectorIndexName': vectorIndexName,
    };
  }

  factory AgentKnowledgeBaseStorageConfigurationMongoDbAtlasConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentKnowledgeBaseStorageConfigurationMongoDbAtlasConfiguration(
      collectionName: (map['collectionName'] as String).input(),
      credentialsSecretArn: (map['credentialsSecretArn'] as String).input(),
      databaseName: (map['databaseName'] as String).input(),
      endpoint: (map['endpoint'] as String).input(),
      endpointServiceName: map['endpointServiceName'] == null ? null : ((map['endpointServiceName'] as String).input()).input(),
      fieldMapping: (AgentKnowledgeBaseStorageConfigurationMongoDbAtlasConfigurationFieldMapping.fromMap((map['fieldMapping']! as Map).cast<String, dynamic>())).input(),
      textIndexName: map['textIndexName'] == null ? null : ((map['textIndexName'] as String).input()).input(),
      vectorIndexName: (map['vectorIndexName'] as String).input(),
    );
  }
}

