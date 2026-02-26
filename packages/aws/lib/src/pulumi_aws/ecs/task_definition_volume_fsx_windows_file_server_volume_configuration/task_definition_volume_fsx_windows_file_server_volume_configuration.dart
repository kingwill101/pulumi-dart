// ignore_for_file: unused_element, unnecessary_cast

import '../task_definition_volume_fsx_windows_file_server_volume_configuration_authorization_config/task_definition_volume_fsx_windows_file_server_volume_configuration_authorization_config.dart';

class TaskDefinitionVolumeFsxWindowsFileServerVolumeConfiguration {
  /// Configuration block for authorization for the Amazon FSx for Windows File Server file system detailed below.
  final TaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfig
      authorizationConfig;

  /// The Amazon FSx for Windows File Server file system ID to use.
  final String fileSystemId;

  /// The directory within the Amazon FSx for Windows File Server file system to mount as the root directory inside the host.
  final String rootDirectory;

  TaskDefinitionVolumeFsxWindowsFileServerVolumeConfiguration({
    required this.authorizationConfig,
    required this.fileSystemId,
    required this.rootDirectory,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authorizationConfig'] = authorizationConfig.toMap();
    map['fileSystemId'] = fileSystemId;
    map['rootDirectory'] = rootDirectory;
    return map;
  }

  factory TaskDefinitionVolumeFsxWindowsFileServerVolumeConfiguration.fromMap(
      Map<String, dynamic> map) {
    return TaskDefinitionVolumeFsxWindowsFileServerVolumeConfiguration(
      authorizationConfig:
          TaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfig
              .fromMap(
                  (map['authorizationConfig'] as Map).cast<String, dynamic>()),
      fileSystemId: map['fileSystemId'] as String,
      rootDirectory: map['rootDirectory'] as String,
    );
  }
}
