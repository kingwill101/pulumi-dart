// ignore_for_file: unused_element, unnecessary_cast

import 'task_definition_volume_efs_volume_configuration_authorization_config.dart';

class TaskDefinitionVolumeEfsVolumeConfiguration {
  /// Configuration block for authorization for the Amazon EFS file system. Detailed below.
  final TaskDefinitionVolumeEfsVolumeConfigurationAuthorizationConfig? authorizationConfig;
  /// ID of the EFS File System.
  final String fileSystemId;
  /// Directory within the Amazon EFS file system to mount as the root directory inside the host. If this parameter is omitted, the root of the Amazon EFS volume will be used. Specifying / will have the same effect as omitting this parameter. This argument is ignored when using `authorization_config`.
  final String? rootDirectory;
  /// Whether or not to enable encryption for Amazon EFS data in transit between the Amazon ECS host and the Amazon EFS server. Transit encryption must be enabled if Amazon EFS IAM authorization is used. Valid values: `ENABLED`, `DISABLED`. If this parameter is omitted, the default value of `DISABLED` is used.
  final String? transitEncryption;
  /// Port to use for transit encryption. If you do not specify a transit encryption port, it will use the port selection strategy that the Amazon EFS mount helper uses.
  final int? transitEncryptionPort;

  /// Creates a new [TaskDefinitionVolumeEfsVolumeConfiguration].
  /// [authorizationConfig] Configuration block for authorization for the Amazon EFS file system. Detailed below.
  /// [fileSystemId] ID of the EFS File System.
  /// [rootDirectory] Directory within the Amazon EFS file system to mount as the root directory inside the host. If this parameter is omitted, the root of the Amazon EFS volume will be used. Specifying / will have the same effect as omitting this parameter. This argument is ignored when using `authorization_config`.
  /// [transitEncryption] Whether or not to enable encryption for Amazon EFS data in transit between the Amazon ECS host and the Amazon EFS server. Transit encryption must be enabled if Amazon EFS IAM authorization is used. Valid values: `ENABLED`, `DISABLED`. If this parameter is omitted, the default value of `DISABLED` is used.
  /// [transitEncryptionPort] Port to use for transit encryption. If you do not specify a transit encryption port, it will use the port selection strategy that the Amazon EFS mount helper uses.
  TaskDefinitionVolumeEfsVolumeConfiguration({
    this.authorizationConfig,
    required this.fileSystemId,
    this.rootDirectory,
    this.transitEncryption,
    this.transitEncryptionPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationConfig': ?authorizationConfig == null ? null : authorizationConfig!.toMap(),
      'fileSystemId': fileSystemId,
      'rootDirectory': ?rootDirectory,
      'transitEncryption': ?transitEncryption,
      'transitEncryptionPort': ?transitEncryptionPort,
    };
  }

  factory TaskDefinitionVolumeEfsVolumeConfiguration.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionVolumeEfsVolumeConfiguration(
      authorizationConfig: map['authorizationConfig'] == null ? null : TaskDefinitionVolumeEfsVolumeConfigurationAuthorizationConfig.fromMap((map['authorizationConfig'] as Map).cast<String, dynamic>()),
      fileSystemId: map['fileSystemId'] as String,
      rootDirectory: map['rootDirectory'] == null ? null : map['rootDirectory'] as String,
      transitEncryption: map['transitEncryption'] == null ? null : map['transitEncryption'] as String,
      transitEncryptionPort: map['transitEncryptionPort'] == null ? null : map['transitEncryptionPort'] as int,
    );
  }
}

