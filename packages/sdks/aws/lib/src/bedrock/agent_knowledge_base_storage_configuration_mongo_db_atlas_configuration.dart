// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_knowledge_base_storage_configuration_mongo_db_atlas_configuration_field_mapping.dart';

class AgentKnowledgeBaseStorageConfigurationMongoDbAtlasConfiguration {
  /// Name of the collection in the MongoDB Atlas database.
  final pulumi.Input<String> collectionName;
  /// ARN of the secret that you created in AWS Secrets Manager that is linked to your MongoDB Atlas database.
  final pulumi.Input<String> credentialsSecretArn;
  /// Name of the database in the MongoDB Atlas database.
  final pulumi.Input<String> databaseName;
  /// Endpoint URL of the MongoDB Atlas database.
  final pulumi.Input<String> endpoint;
  /// Name of the service that hosts the MongoDB Atlas database.
  final pulumi.Input<String?>? endpointServiceName;
  /// Names of the fields to which to map information about the vector store. See `storage_configuration.mongo_db_atlas_configuration.field_mapping` Block for details.
  final pulumi.Input<AgentKnowledgeBaseStorageConfigurationMongoDbAtlasConfigurationFieldMapping> fieldMapping;
  /// Name of the vector index.
  final pulumi.Input<String?>? textIndexName;
  /// Name of the vector index.
  final pulumi.Input<String> vectorIndexName;

  /// Creates a new [AgentKnowledgeBaseStorageConfigurationMongoDbAtlasConfiguration].
  /// [collectionName] Name of the collection in the MongoDB Atlas database.
  /// [credentialsSecretArn] ARN of the secret that you created in AWS Secrets Manager that is linked to your MongoDB Atlas database.
  /// [databaseName] Name of the database in the MongoDB Atlas database.
  /// [endpoint] Endpoint URL of the MongoDB Atlas database.
  /// [endpointServiceName] Name of the service that hosts the MongoDB Atlas database.
  /// [fieldMapping] Names of the fields to which to map information about the vector store. See `storage_configuration.mongo_db_atlas_configuration.field_mapping` Block for details.
  /// [textIndexName] Name of the vector index.
  /// [vectorIndexName] Name of the vector index.
  const AgentKnowledgeBaseStorageConfigurationMongoDbAtlasConfiguration({
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
      collectionName: pulumi.Input.fromValue(map['collectionName'] as String),
      credentialsSecretArn: pulumi.Input.fromValue(map['credentialsSecretArn'] as String),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      endpointServiceName: (() { final guardedValue = map['endpointServiceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fieldMapping: pulumi.Input.fromValue(AgentKnowledgeBaseStorageConfigurationMongoDbAtlasConfigurationFieldMapping.fromMap((map['fieldMapping']! as Map).cast<String, dynamic>())),
      textIndexName: (() { final guardedValue = map['textIndexName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vectorIndexName: pulumi.Input.fromValue(map['vectorIndexName'] as String),
    );
  }
}
