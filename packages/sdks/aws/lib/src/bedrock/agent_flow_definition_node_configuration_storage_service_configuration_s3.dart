// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentFlowDefinitionNodeConfigurationStorageServiceConfigurationS3 {
  final pulumi.Input<String> bucketName;

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
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
    );
  }
}
