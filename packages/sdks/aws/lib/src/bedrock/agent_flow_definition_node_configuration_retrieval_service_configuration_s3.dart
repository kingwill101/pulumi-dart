// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentFlowDefinitionNodeConfigurationRetrievalServiceConfigurationS3 {
  final pulumi.Input<String> bucketName;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationRetrievalServiceConfigurationS3].
  /// [bucketName] Required.
  AgentFlowDefinitionNodeConfigurationRetrievalServiceConfigurationS3({
    required this.bucketName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'bucketName': bucketName};
  }

  factory AgentFlowDefinitionNodeConfigurationRetrievalServiceConfigurationS3.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentFlowDefinitionNodeConfigurationRetrievalServiceConfigurationS3(
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
    );
  }
}
