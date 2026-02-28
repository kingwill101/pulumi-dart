// ignore_for_file: unused_element, unnecessary_cast

import 'app_image_config_jupyter_lab_image_config_container_config.dart';
import 'app_image_config_jupyter_lab_image_config_file_system_config.dart';

class AppImageConfigJupyterLabImageConfig {
  /// The configuration used to run the application image container. See Container Config details below.
  final AppImageConfigJupyterLabImageConfigContainerConfig? containerConfig;

  /// The URL where the Git repository is located. See File System Config details below.
  final AppImageConfigJupyterLabImageConfigFileSystemConfig? fileSystemConfig;

  /// Creates a new [AppImageConfigJupyterLabImageConfig].
  /// [containerConfig] The configuration used to run the application image container. See Container Config details below.
  /// [fileSystemConfig] The URL where the Git repository is located. See File System Config details below.
  AppImageConfigJupyterLabImageConfig({
    this.containerConfig,
    this.fileSystemConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final containerConfigValue = containerConfig;
    if (containerConfigValue != null) {
      map['containerConfig'] = containerConfigValue.toMap();
    }
    final fileSystemConfigValue = fileSystemConfig;
    if (fileSystemConfigValue != null) {
      map['fileSystemConfig'] = fileSystemConfigValue.toMap();
    }
    return map;
  }

  factory AppImageConfigJupyterLabImageConfig.fromMap(
      Map<String, dynamic> map) {
    return AppImageConfigJupyterLabImageConfig(
      containerConfig: map['containerConfig'] == null
          ? null
          : AppImageConfigJupyterLabImageConfigContainerConfig.fromMap(
              (map['containerConfig'] as Map).cast<String, dynamic>()),
      fileSystemConfig: map['fileSystemConfig'] == null
          ? null
          : AppImageConfigJupyterLabImageConfigFileSystemConfig.fromMap(
              (map['fileSystemConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
