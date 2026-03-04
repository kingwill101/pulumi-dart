// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_task_definition_volume_fsx_windows_file_server_volume_configuration_authorization_config.dart';

class GetTaskDefinitionVolumeFsxWindowsFileServerVolumeConfiguration {
  /// Configuration block for authorization for the Amazon FSx for Windows File Server file system detailed below.
  final pulumi.Input<
    List<
      GetTaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfig
    >
  >
  authorizationConfigs;

  /// The Amazon FSx for Windows File Server file system ID to use.
  final pulumi.Input<String> fileSystemId;

  /// The directory within the Amazon FSx for Windows File Server file system to mount as the root directory inside the host.
  final pulumi.Input<String> rootDirectory;

  /// Creates a new [GetTaskDefinitionVolumeFsxWindowsFileServerVolumeConfiguration].
  /// [authorizationConfigs] Configuration block for authorization for the Amazon FSx for Windows File Server file system detailed below.
  /// [fileSystemId] The Amazon FSx for Windows File Server file system ID to use.
  /// [rootDirectory] The directory within the Amazon FSx for Windows File Server file system to mount as the root directory inside the host.
  GetTaskDefinitionVolumeFsxWindowsFileServerVolumeConfiguration({
    required this.authorizationConfigs,
    required this.fileSystemId,
    required this.rootDirectory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationConfigs':
          pulumi.Input.mapInputValue<
            List<
              GetTaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfig
            >,
            List<Map<String, dynamic>>
          >(
            authorizationConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  GetTaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'fileSystemId': fileSystemId,
      'rootDirectory': rootDirectory,
    };
  }

  factory GetTaskDefinitionVolumeFsxWindowsFileServerVolumeConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetTaskDefinitionVolumeFsxWindowsFileServerVolumeConfiguration(
      authorizationConfigs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetTaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfig
        >(
          map['authorizationConfigs']!,
          (value) =>
              GetTaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfig.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      fileSystemId: pulumi.Input.fromValue(map['fileSystemId'] as String),
      rootDirectory: pulumi.Input.fromValue(map['rootDirectory'] as String),
    );
  }
}
