// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTaskDefinitionVolumeEfsVolumeConfigurationAuthorizationConfig {
  /// Access point ID to use. If an access point is specified, the root directory value will be relative to the directory set for the access point. If specified, transit encryption must be enabled in the EFSVolumeConfiguration.
  final pulumi.Input<String> accessPointId;
  /// Whether or not to use the Amazon ECS task IAM role defined in a task definition when mounting the Amazon EFS file system. If enabled, transit encryption must be enabled in the EFSVolumeConfiguration. Valid values: `ENABLED`, `DISABLED`. If this parameter is omitted, the default value of `DISABLED` is used.
  final pulumi.Input<String> iam;

  /// Creates a new [GetTaskDefinitionVolumeEfsVolumeConfigurationAuthorizationConfig].
  /// [accessPointId] Access point ID to use. If an access point is specified, the root directory value will be relative to the directory set for the access point. If specified, transit encryption must be enabled in the EFSVolumeConfiguration.
  /// [iam] Whether or not to use the Amazon ECS task IAM role defined in a task definition when mounting the Amazon EFS file system. If enabled, transit encryption must be enabled in the EFSVolumeConfiguration. Valid values: `ENABLED`, `DISABLED`. If this parameter is omitted, the default value of `DISABLED` is used.
  GetTaskDefinitionVolumeEfsVolumeConfigurationAuthorizationConfig({
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

