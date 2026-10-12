// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_knowledge_base_knowledge_base_configuration_vector_knowledge_base_configuration_supplemental_data_storage_configuration_storage_location.dart';

class AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfiguration {
  /// Storage location specification for images extracted from multimodal documents in your data source. See `storageLocation` Block for details.
  final pulumi.Input<List<AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfigurationStorageLocation>> storageLocations;

  /// Creates a new [AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfiguration].
  /// [storageLocations] Storage location specification for images extracted from multimodal documents in your data source. See `storageLocation` Block for details.
  const AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfiguration({
    required this.storageLocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageLocations': pulumi.Input.mapInputValue<List<AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfigurationStorageLocation>, List<Map<String, dynamic>>>(storageLocations, (value) => pulumi.Input.encodeList<AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfigurationStorageLocation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfiguration(
      storageLocations: pulumi.Input.fromValue(pulumi.Input.decodeList<AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfigurationStorageLocation>(map['storageLocations']!, (value) => AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfigurationStorageLocation.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
