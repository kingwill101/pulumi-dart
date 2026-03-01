// ignore_for_file: unused_element, unnecessary_cast

class AgentFlowDefinitionNodeConfigurationStorageServiceConfigurationS3 {
  final String bucketName;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationStorageServiceConfigurationS3].
  /// [bucketName] Required.
  AgentFlowDefinitionNodeConfigurationStorageServiceConfigurationS3({
    required this.bucketName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'bucketName': bucketName};
  }

  factory AgentFlowDefinitionNodeConfigurationStorageServiceConfigurationS3.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentFlowDefinitionNodeConfigurationStorageServiceConfigurationS3(
      bucketName: map['bucketName'] as String,
    );
  }
}
