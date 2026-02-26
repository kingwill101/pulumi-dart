// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../agent_knowledge_base_knowledge_base_configuration_vector_knowledge_base_configuration_supplemental_data_storage_configuration_storage_location/agent_knowledge_base_knowledge_base_configuration_vector_knowledge_base_configuration_supplemental_data_storage_configuration_storage_location.dart';

class AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfiguration {
  /// A storage location specification for images extracted from multimodal documents in your data source.  See <span pulumi-lang-nodejs="`storageLocation`" pulumi-lang-dotnet="`StorageLocation`" pulumi-lang-go="`storageLocation`" pulumi-lang-python="`storage_location`" pulumi-lang-yaml="`storageLocation`" pulumi-lang-java="`storageLocation`">`storage_location`</span> block for details.
  final List<
          AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfigurationStorageLocation>
      storageLocations;

  AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfiguration({
    required this.storageLocations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['storageLocations'] = Input.encodeList<
        AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfigurationStorageLocation,
        Map<String, dynamic>>(storageLocations, (value) => value.toMap());
    return map;
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfiguration(
      storageLocations: Input.decodeList<
              AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfigurationStorageLocation>(
          map['storageLocations'],
          (value) =>
              AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfigurationStorageLocation
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
