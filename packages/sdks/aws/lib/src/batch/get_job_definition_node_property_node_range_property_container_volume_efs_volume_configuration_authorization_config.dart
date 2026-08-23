// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetJobDefinitionNodePropertyNodeRangePropertyContainerVolumeEfsVolumeConfigurationAuthorizationConfig {
  /// Amazon EFS access point ID to use.
  final pulumi.Input<String> accessPointId;
  /// Whether or not to use the AWS Batch job IAM role defined in a job definition when mounting the Amazon EFS file system.
  final pulumi.Input<String> iam;

  /// Creates a new [GetJobDefinitionNodePropertyNodeRangePropertyContainerVolumeEfsVolumeConfigurationAuthorizationConfig].
  /// [accessPointId] Amazon EFS access point ID to use.
  /// [iam] Whether or not to use the AWS Batch job IAM role defined in a job definition when mounting the Amazon EFS file system.
  const GetJobDefinitionNodePropertyNodeRangePropertyContainerVolumeEfsVolumeConfigurationAuthorizationConfig({
    required this.accessPointId,
    required this.iam,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPointId': accessPointId,
      'iam': iam,
    };
  }

  factory GetJobDefinitionNodePropertyNodeRangePropertyContainerVolumeEfsVolumeConfigurationAuthorizationConfig.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionNodePropertyNodeRangePropertyContainerVolumeEfsVolumeConfigurationAuthorizationConfig(
      accessPointId: pulumi.Input.fromValue(map['accessPointId'] as String),
      iam: pulumi.Input.fromValue(map['iam'] as String),
    );
  }
}
