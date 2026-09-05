// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_image_config_jupyter_lab_image_config_container_config.dart';
import 'app_image_config_jupyter_lab_image_config_file_system_config.dart';

class AppImageConfigJupyterLabImageConfig {
  /// The configuration used to run the application image container. See Container Config details below.
  final pulumi.Input<AppImageConfigJupyterLabImageConfigContainerConfig?>? containerConfig;
  /// The URL where the Git repository is located. See File System Config details below.
  final pulumi.Input<AppImageConfigJupyterLabImageConfigFileSystemConfig?>? fileSystemConfig;

  /// Creates a new [AppImageConfigJupyterLabImageConfig].
  /// [containerConfig] The configuration used to run the application image container. See Container Config details below.
  /// [fileSystemConfig] The URL where the Git repository is located. See File System Config details below.
  const AppImageConfigJupyterLabImageConfig({
    this.containerConfig,
    this.fileSystemConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerConfig': ?pulumi.Input.mapOptionalInputValue<AppImageConfigJupyterLabImageConfigContainerConfig, Map<String, dynamic>>(containerConfig, (value) => value.toMap()),
      'fileSystemConfig': ?pulumi.Input.mapOptionalInputValue<AppImageConfigJupyterLabImageConfigFileSystemConfig, Map<String, dynamic>>(fileSystemConfig, (value) => value.toMap()),
    };
  }

  factory AppImageConfigJupyterLabImageConfig.fromMap(Map<String, dynamic> map) {
    return AppImageConfigJupyterLabImageConfig(
      containerConfig: (() { final guardedValue = map['containerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppImageConfigJupyterLabImageConfigContainerConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fileSystemConfig: (() { final guardedValue = map['fileSystemConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppImageConfigJupyterLabImageConfigFileSystemConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
