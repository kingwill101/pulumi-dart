// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_task_definition_volume_efs_volume_configuration_authorization_config.dart';

class GetTaskDefinitionVolumeEfsVolumeConfiguration {
  /// Configuration block for authorization for the Amazon FSx for Windows File Server file system detailed below.
  final pulumi.Input<List<GetTaskDefinitionVolumeEfsVolumeConfigurationAuthorizationConfig>> authorizationConfigs;
  /// The Amazon FSx for Windows File Server file system ID to use.
  final pulumi.Input<String> fileSystemId;
  /// The directory within the Amazon FSx for Windows File Server file system to mount as the root directory inside the host.
  final pulumi.Input<String> rootDirectory;
  /// Whether or not to enable encryption for Amazon EFS data in transit between the Amazon ECS host and the Amazon EFS server. Transit encryption must be enabled if Amazon EFS IAM authorization is used. Valid values: `ENABLED`, `DISABLED`. If this parameter is omitted, the default value of `DISABLED` is used.
  final pulumi.Input<String> transitEncryption;
  /// Port to use for transit encryption. If you do not specify a transit encryption port, it will use the port selection strategy that the Amazon EFS mount helper uses.
  final pulumi.Input<int> transitEncryptionPort;

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
      'authorizationConfigs': pulumi.Input.mapInputValue<List<GetTaskDefinitionVolumeEfsVolumeConfigurationAuthorizationConfig>, List<Map<String, dynamic>>>(authorizationConfigs, (value) => pulumi.Input.encodeList<GetTaskDefinitionVolumeEfsVolumeConfigurationAuthorizationConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fileSystemId': fileSystemId,
      'rootDirectory': rootDirectory,
      'transitEncryption': transitEncryption,
      'transitEncryptionPort': transitEncryptionPort,
    };
  }

  factory GetTaskDefinitionVolumeEfsVolumeConfiguration.fromMap(Map<String, dynamic> map) {
    return GetTaskDefinitionVolumeEfsVolumeConfiguration(
      authorizationConfigs: (pulumi.Input.decodeList<GetTaskDefinitionVolumeEfsVolumeConfigurationAuthorizationConfig>(map['authorizationConfigs'], (value) => GetTaskDefinitionVolumeEfsVolumeConfigurationAuthorizationConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      fileSystemId: (map['fileSystemId'] as String).input(),
      rootDirectory: (map['rootDirectory'] as String).input(),
      transitEncryption: (map['transitEncryption'] as String).input(),
      transitEncryptionPort: (map['transitEncryptionPort'] as int).input(),
    );
  }
}

