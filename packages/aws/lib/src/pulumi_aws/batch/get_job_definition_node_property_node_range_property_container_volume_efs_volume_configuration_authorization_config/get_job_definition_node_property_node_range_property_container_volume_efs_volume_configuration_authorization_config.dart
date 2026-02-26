// ignore_for_file: unused_element, unnecessary_cast

class GetJobDefinitionNodePropertyNodeRangePropertyContainerVolumeEfsVolumeConfigurationAuthorizationConfig {
  /// The Amazon EFS access point ID to use.
  final String accessPointId;

  /// Whether or not to use the AWS Batch job IAM role defined in a job definition when mounting the Amazon EFS file system.
  final String iam;

  GetJobDefinitionNodePropertyNodeRangePropertyContainerVolumeEfsVolumeConfigurationAuthorizationConfig({
    required this.accessPointId,
    required this.iam,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessPointId'] = accessPointId;
    map['iam'] = iam;
    return map;
  }

  factory GetJobDefinitionNodePropertyNodeRangePropertyContainerVolumeEfsVolumeConfigurationAuthorizationConfig.fromMap(
      Map<String, dynamic> map) {
    return GetJobDefinitionNodePropertyNodeRangePropertyContainerVolumeEfsVolumeConfigurationAuthorizationConfig(
      accessPointId: map['accessPointId'] as String,
      iam: map['iam'] as String,
    );
  }
}
