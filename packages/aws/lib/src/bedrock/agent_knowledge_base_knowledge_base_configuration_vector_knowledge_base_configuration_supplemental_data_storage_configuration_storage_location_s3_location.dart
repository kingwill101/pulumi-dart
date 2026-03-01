// ignore_for_file: unused_element, unnecessary_cast

class AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfigurationStorageLocationS3Location {
  /// URI of the location.
  final String uri;

  /// Creates a new [AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfigurationStorageLocationS3Location].
  /// [uri] URI of the location.
  AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfigurationStorageLocationS3Location({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'uri': uri};
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfigurationStorageLocationS3Location.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfigurationStorageLocationS3Location(
      uri: map['uri'] as String,
    );
  }
}
