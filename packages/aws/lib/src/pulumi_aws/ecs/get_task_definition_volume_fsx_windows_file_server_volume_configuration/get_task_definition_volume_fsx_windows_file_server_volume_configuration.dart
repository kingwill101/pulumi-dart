// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_task_definition_volume_fsx_windows_file_server_volume_configuration_authorization_config/get_task_definition_volume_fsx_windows_file_server_volume_configuration_authorization_config.dart';

class GetTaskDefinitionVolumeFsxWindowsFileServerVolumeConfiguration {
  /// Configuration block for authorization for the Amazon FSx for Windows File Server file system detailed below.
  final List<
          GetTaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfig>
      authorizationConfigs;

  /// The Amazon FSx for Windows File Server file system ID to use.
  final String fileSystemId;

  /// The directory within the Amazon FSx for Windows File Server file system to mount as the root directory inside the host.
  final String rootDirectory;

  GetTaskDefinitionVolumeFsxWindowsFileServerVolumeConfiguration({
    required this.authorizationConfigs,
    required this.fileSystemId,
    required this.rootDirectory,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authorizationConfigs'] = Input.encodeList<
        GetTaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfig,
        Map<String, dynamic>>(authorizationConfigs, (value) => value.toMap());
    map['fileSystemId'] = fileSystemId;
    map['rootDirectory'] = rootDirectory;
    return map;
  }

  factory GetTaskDefinitionVolumeFsxWindowsFileServerVolumeConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetTaskDefinitionVolumeFsxWindowsFileServerVolumeConfiguration(
      authorizationConfigs: Input.decodeList<
              GetTaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfig>(
          map['authorizationConfigs'],
          (value) =>
              GetTaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfig
                  .fromMap((value as Map).cast<String, dynamic>())),
      fileSystemId: map['fileSystemId'] as String,
      rootDirectory: map['rootDirectory'] as String,
    );
  }
}
