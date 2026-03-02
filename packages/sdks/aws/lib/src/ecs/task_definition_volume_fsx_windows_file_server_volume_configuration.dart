// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'task_definition_volume_fsx_windows_file_server_volume_configuration_authorization_config.dart';

class TaskDefinitionVolumeFsxWindowsFileServerVolumeConfiguration {
  /// Configuration block for authorization for the Amazon FSx for Windows File Server file system detailed below.
  final pulumi.Input<TaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfig> authorizationConfig;
  /// The Amazon FSx for Windows File Server file system ID to use.
  final pulumi.Input<String> fileSystemId;
  /// The directory within the Amazon FSx for Windows File Server file system to mount as the root directory inside the host.
  final pulumi.Input<String> rootDirectory;

  /// Creates a new [TaskDefinitionVolumeFsxWindowsFileServerVolumeConfiguration].
  /// [authorizationConfig] Configuration block for authorization for the Amazon FSx for Windows File Server file system detailed below.
  /// [fileSystemId] The Amazon FSx for Windows File Server file system ID to use.
  /// [rootDirectory] The directory within the Amazon FSx for Windows File Server file system to mount as the root directory inside the host.
  TaskDefinitionVolumeFsxWindowsFileServerVolumeConfiguration({
    required this.authorizationConfig,
    required this.fileSystemId,
    required this.rootDirectory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationConfig': pulumi.Input.mapInputValue<TaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfig, Map<String, dynamic>>(authorizationConfig, (value) => value.toMap()),
      'fileSystemId': fileSystemId,
      'rootDirectory': rootDirectory,
    };
  }

  factory TaskDefinitionVolumeFsxWindowsFileServerVolumeConfiguration.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionVolumeFsxWindowsFileServerVolumeConfiguration(
      authorizationConfig: (TaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfig.fromMap((map['authorizationConfig']! as Map).cast<String, dynamic>())).input(),
      fileSystemId: (map['fileSystemId'] as String).input(),
      rootDirectory: (map['rootDirectory'] as String).input(),
    );
  }
}

