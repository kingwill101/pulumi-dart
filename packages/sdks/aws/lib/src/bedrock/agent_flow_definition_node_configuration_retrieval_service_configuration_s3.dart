// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentFlowDefinitionNodeConfigurationRetrievalServiceConfigurationS3 {
  /// The name of the Amazon S3 bucket in which to store the input into the node.
  final pulumi.Input<String> bucketName;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationRetrievalServiceConfigurationS3].
  /// [bucketName] The name of the Amazon S3 bucket in which to store the input into the node.
  const AgentFlowDefinitionNodeConfigurationRetrievalServiceConfigurationS3({
    required this.bucketName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
    };
  }

  factory AgentFlowDefinitionNodeConfigurationRetrievalServiceConfigurationS3.fromMap(Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationRetrievalServiceConfigurationS3(
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
    );
  }
}
