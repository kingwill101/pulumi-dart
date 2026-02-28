// ignore_for_file: unused_element, unnecessary_cast

import 'app_image_config_code_editor_app_image_config_container_config.dart';
import 'app_image_config_code_editor_app_image_config_file_system_config.dart';

class AppImageConfigCodeEditorAppImageConfig {
  /// The configuration used to run the application image container. See Container Config details below.
  final AppImageConfigCodeEditorAppImageConfigContainerConfig? containerConfig;
  /// The URL where the Git repository is located. See File System Config details below.
  final AppImageConfigCodeEditorAppImageConfigFileSystemConfig? fileSystemConfig;

  /// Creates a new [AppImageConfigCodeEditorAppImageConfig].
  /// [containerConfig] The configuration used to run the application image container. See Container Config details below.
  /// [fileSystemConfig] The URL where the Git repository is located. See File System Config details below.
  AppImageConfigCodeEditorAppImageConfig({
    this.containerConfig,
    this.fileSystemConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerConfig': ?containerConfig == null ? null : containerConfig!.toMap(),
      'fileSystemConfig': ?fileSystemConfig == null ? null : fileSystemConfig!.toMap(),
    };
  }

  factory AppImageConfigCodeEditorAppImageConfig.fromMap(Map<String, dynamic> map) {
    return AppImageConfigCodeEditorAppImageConfig(
      containerConfig: map['containerConfig'] == null ? null : AppImageConfigCodeEditorAppImageConfigContainerConfig.fromMap((map['containerConfig'] as Map).cast<String, dynamic>()),
      fileSystemConfig: map['fileSystemConfig'] == null ? null : AppImageConfigCodeEditorAppImageConfigFileSystemConfig.fromMap((map['fileSystemConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

