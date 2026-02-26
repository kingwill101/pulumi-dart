// ignore_for_file: unused_element, unnecessary_cast

class AgentFlowDefinitionNodeConfigurationRetrievalServiceConfigurationS3 {
  final String bucketName;

  AgentFlowDefinitionNodeConfigurationRetrievalServiceConfigurationS3({
    required this.bucketName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketName'] = bucketName;
    return map;
  }

  factory AgentFlowDefinitionNodeConfigurationRetrievalServiceConfigurationS3.fromMap(
      Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationRetrievalServiceConfigurationS3(
      bucketName: map['bucketName'] as String,
    );
  }
}
