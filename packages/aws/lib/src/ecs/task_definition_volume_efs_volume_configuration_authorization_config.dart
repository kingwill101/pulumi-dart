// ignore_for_file: unused_element, unnecessary_cast

class TaskDefinitionVolumeEfsVolumeConfigurationAuthorizationConfig {
  /// Access point ID to use. If an access point is specified, the root directory value will be relative to the directory set for the access point. If specified, transit encryption must be enabled in the EFSVolumeConfiguration.
  final String? accessPointId;

  /// Whether or not to use the Amazon ECS task IAM role defined in a task definition when mounting the Amazon EFS file system. If enabled, transit encryption must be enabled in the EFSVolumeConfiguration. Valid values: `ENABLED`, `DISABLED`. If this parameter is omitted, the default value of `DISABLED` is used.
  final String? iam;

  /// Creates a new [TaskDefinitionVolumeEfsVolumeConfigurationAuthorizationConfig].
  /// [accessPointId] Access point ID to use. If an access point is specified, the root directory value will be relative to the directory set for the access point. If specified, transit encryption must be enabled in the EFSVolumeConfiguration.
  /// [iam] Whether or not to use the Amazon ECS task IAM role defined in a task definition when mounting the Amazon EFS file system. If enabled, transit encryption must be enabled in the EFSVolumeConfiguration. Valid values: `ENABLED`, `DISABLED`. If this parameter is omitted, the default value of `DISABLED` is used.
  TaskDefinitionVolumeEfsVolumeConfigurationAuthorizationConfig({
    this.accessPointId,
    this.iam,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessPointIdValue = accessPointId;
    if (accessPointIdValue != null) {
      map['accessPointId'] = accessPointIdValue;
    }
    final iamValue = iam;
    if (iamValue != null) {
      map['iam'] = iamValue;
    }
    return map;
  }

  factory TaskDefinitionVolumeEfsVolumeConfigurationAuthorizationConfig.fromMap(
      Map<String, dynamic> map) {
    return TaskDefinitionVolumeEfsVolumeConfigurationAuthorizationConfig(
      accessPointId:
          map['accessPointId'] == null ? null : map['accessPointId'] as String,
      iam: map['iam'] == null ? null : map['iam'] as String,
    );
  }
}
