// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_task_definition_volume_efs_volume_configuration_authorization_config.dart';

class GetTaskDefinitionVolumeEfsVolumeConfiguration {
  /// Configuration block for authorization for the Amazon FSx for Windows File Server file system detailed below.
  final List<GetTaskDefinitionVolumeEfsVolumeConfigurationAuthorizationConfig> authorizationConfigs;
  /// The Amazon FSx for Windows File Server file system ID to use.
  final String fileSystemId;
  /// The directory within the Amazon FSx for Windows File Server file system to mount as the root directory inside the host.
  final String rootDirectory;
  /// Whether or not to enable encryption for Amazon EFS data in transit between the Amazon ECS host and the Amazon EFS server. Transit encryption must be enabled if Amazon EFS IAM authorization is used. Valid values: `ENABLED`, `DISABLED`. If this parameter is omitted, the default value of `DISABLED` is used.
  final String transitEncryption;
  /// Port to use for transit encryption. If you do not specify a transit encryption port, it will use the port selection strategy that the Amazon EFS mount helper uses.
  final int transitEncryptionPort;

  /// Creates a new [GetTaskDefinitionVolumeEfsVolumeConfiguration].
  /// [authorizationConfigs] Configuration block for authorization for the Amazon FSx for Windows File Server file system detailed below.
  /// [fileSystemId] The Amazon FSx for Windows File Server file system ID to use.
  /// [rootDirectory] The directory within the Amazon FSx for Windows File Server file system to mount as the root directory inside the host.
  /// [transitEncryption] Whether or not to enable encryption for Amazon EFS data in transit between the Amazon ECS host and the Amazon EFS server. Transit encryption must be enabled if Amazon EFS IAM authorization is used. Valid values: `ENABLED`, `DISABLED`. If this parameter is omitted, the default value of `DISABLED` is used.
  /// [transitEncryptionPort] Port to use for transit encryption. If you do not specify a transit encryption port, it will use the port selection strategy that the Amazon EFS mount helper uses.
  GetTaskDefinitionVolumeEfsVolumeConfiguration({
    required this.authorizationConfigs,
    required this.fileSystemId,
    required this.rootDirectory,
    required this.transitEncryption,
    required this.transitEncryptionPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationConfigs': pulumi.Input.encodeList<GetTaskDefinitionVolumeEfsVolumeConfigurationAuthorizationConfig, Map<String, dynamic>>(authorizationConfigs, (value) => value.toMap()),
      'fileSystemId': fileSystemId,
      'rootDirectory': rootDirectory,
      'transitEncryption': transitEncryption,
      'transitEncryptionPort': transitEncryptionPort,
    };
  }

  factory GetTaskDefinitionVolumeEfsVolumeConfiguration.fromMap(Map<String, dynamic> map) {
    return GetTaskDefinitionVolumeEfsVolumeConfiguration(
      authorizationConfigs: pulumi.Input.decodeList<GetTaskDefinitionVolumeEfsVolumeConfigurationAuthorizationConfig>(map['authorizationConfigs'], (value) => GetTaskDefinitionVolumeEfsVolumeConfigurationAuthorizationConfig.fromMap((value as Map).cast<String, dynamic>())),
      fileSystemId: map['fileSystemId'] as String,
      rootDirectory: map['rootDirectory'] as String,
      transitEncryption: map['transitEncryption'] as String,
      transitEncryptionPort: map['transitEncryptionPort'] as int,
    );
  }
}

