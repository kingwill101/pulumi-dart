// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_task_definition_volume_fsx_windows_file_server_volume_configuration_authorization_config.dart';

class GetTaskDefinitionVolumeFsxWindowsFileServerVolumeConfiguration {
  /// Configuration block for authorization for the Amazon FSx for Windows File Server file system. See `fsx_windows_file_server_volume_configuration.authorization_config` Block for details.
  final pulumi.Input<List<GetTaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfig>> authorizationConfigs;
  /// Amazon FSx for Windows File Server file system ID used.
  final pulumi.Input<String> fileSystemId;
  /// Directory within the Amazon S3 Files file system to mount as the root directory.
  final pulumi.Input<String> rootDirectory;

  /// Creates a new [GetTaskDefinitionVolumeFsxWindowsFileServerVolumeConfiguration].
  /// [authorizationConfigs] Configuration block for authorization for the Amazon FSx for Windows File Server file system. See `fsx_windows_file_server_volume_configuration.authorization_config` Block for details.
  /// [fileSystemId] Amazon FSx for Windows File Server file system ID used.
  /// [rootDirectory] Directory within the Amazon S3 Files file system to mount as the root directory.
  const GetTaskDefinitionVolumeFsxWindowsFileServerVolumeConfiguration({
    required this.authorizationConfigs,
    required this.fileSystemId,
    required this.rootDirectory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationConfigs': pulumi.Input.mapInputValue<List<GetTaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfig>, List<Map<String, dynamic>>>(authorizationConfigs, (value) => pulumi.Input.encodeList<GetTaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fileSystemId': fileSystemId,
      'rootDirectory': rootDirectory,
    };
  }

  factory GetTaskDefinitionVolumeFsxWindowsFileServerVolumeConfiguration.fromMap(Map<String, dynamic> map) {
    return GetTaskDefinitionVolumeFsxWindowsFileServerVolumeConfiguration(
      authorizationConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfig>(map['authorizationConfigs']!, (value) => GetTaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfig.fromMap((value as Map).cast<String, dynamic>()))),
      fileSystemId: pulumi.Input.fromValue(map['fileSystemId'] as String),
      rootDirectory: pulumi.Input.fromValue(map['rootDirectory'] as String),
    );
  }
}
