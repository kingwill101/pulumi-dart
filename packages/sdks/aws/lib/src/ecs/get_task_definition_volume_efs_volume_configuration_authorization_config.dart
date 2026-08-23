// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTaskDefinitionVolumeEfsVolumeConfigurationAuthorizationConfig {
  /// Access point ID used.
  final pulumi.Input<String> accessPointId;
  /// Whether the Amazon ECS task IAM role defined in a task definition is used when mounting the Amazon EFS file system.
  final pulumi.Input<String> iam;

  /// Creates a new [GetTaskDefinitionVolumeEfsVolumeConfigurationAuthorizationConfig].
  /// [accessPointId] Access point ID used.
  /// [iam] Whether the Amazon ECS task IAM role defined in a task definition is used when mounting the Amazon EFS file system.
  const GetTaskDefinitionVolumeEfsVolumeConfigurationAuthorizationConfig({
    required this.accessPointId,
    required this.iam,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPointId': accessPointId,
      'iam': iam,
    };
  }

  factory GetTaskDefinitionVolumeEfsVolumeConfigurationAuthorizationConfig.fromMap(Map<String, dynamic> map) {
    return GetTaskDefinitionVolumeEfsVolumeConfigurationAuthorizationConfig(
      accessPointId: pulumi.Input.fromValue(map['accessPointId'] as String),
      iam: pulumi.Input.fromValue(map['iam'] as String),
    );
  }
}
