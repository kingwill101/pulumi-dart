// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_task_definition_volume_efs_volume_configuration_authorization_config.dart';

class GetTaskDefinitionVolumeEfsVolumeConfiguration {
  /// Configuration block for authorization for the Amazon FSx for Windows File Server file system. See `fsx_windows_file_server_volume_configuration.authorization_config` Block for details.
  final pulumi.Input<List<GetTaskDefinitionVolumeEfsVolumeConfigurationAuthorizationConfig>> authorizationConfigs;
  /// Amazon FSx for Windows File Server file system ID used.
  final pulumi.Input<String> fileSystemId;
  /// Directory within the Amazon S3 Files file system to mount as the root directory.
  final pulumi.Input<String> rootDirectory;
  /// Whether encryption is enabled for Amazon EFS data in transit between the Amazon ECS host and the Amazon EFS server.
  final pulumi.Input<String> transitEncryption;
  /// Port used for sending encrypted data between the ECS host and the S3 Files file system.
  final pulumi.Input<int> transitEncryptionPort;

  /// Creates a new [GetTaskDefinitionVolumeEfsVolumeConfiguration].
  /// [authorizationConfigs] Configuration block for authorization for the Amazon FSx for Windows File Server file system. See `fsx_windows_file_server_volume_configuration.authorization_config` Block for details.
  /// [fileSystemId] Amazon FSx for Windows File Server file system ID used.
  /// [rootDirectory] Directory within the Amazon S3 Files file system to mount as the root directory.
  /// [transitEncryption] Whether encryption is enabled for Amazon EFS data in transit between the Amazon ECS host and the Amazon EFS server.
  /// [transitEncryptionPort] Port used for sending encrypted data between the ECS host and the S3 Files file system.
  const GetTaskDefinitionVolumeEfsVolumeConfiguration({
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
      authorizationConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTaskDefinitionVolumeEfsVolumeConfigurationAuthorizationConfig>(map['authorizationConfigs']!, (value) => GetTaskDefinitionVolumeEfsVolumeConfigurationAuthorizationConfig.fromMap((value as Map).cast<String, dynamic>()))),
      fileSystemId: pulumi.Input.fromValue(map['fileSystemId'] as String),
      rootDirectory: pulumi.Input.fromValue(map['rootDirectory'] as String),
      transitEncryption: pulumi.Input.fromValue(map['transitEncryption'] as String),
      transitEncryptionPort: pulumi.Input.fromValue(map['transitEncryptionPort'] as int),
    );
  }
}
