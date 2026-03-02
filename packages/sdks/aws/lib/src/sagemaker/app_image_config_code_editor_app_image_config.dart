// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_image_config_code_editor_app_image_config_container_config.dart';
import 'app_image_config_code_editor_app_image_config_file_system_config.dart';

class AppImageConfigCodeEditorAppImageConfig {
  /// The configuration used to run the application image container. See Container Config details below.
  final pulumi.Input<AppImageConfigCodeEditorAppImageConfigContainerConfig>? containerConfig;
  /// The URL where the Git repository is located. See File System Config details below.
  final pulumi.Input<AppImageConfigCodeEditorAppImageConfigFileSystemConfig>? fileSystemConfig;

  /// Creates a new [AppImageConfigCodeEditorAppImageConfig].
  /// [containerConfig] The configuration used to run the application image container. See Container Config details below.
  /// [fileSystemConfig] The URL where the Git repository is located. See File System Config details below.
  AppImageConfigCodeEditorAppImageConfig({
    this.containerConfig,
    this.fileSystemConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerConfig': ?pulumi.Input.mapOptionalInputValue<AppImageConfigCodeEditorAppImageConfigContainerConfig, Map<String, dynamic>>(containerConfig, (value) => value.toMap()),
      'fileSystemConfig': ?pulumi.Input.mapOptionalInputValue<AppImageConfigCodeEditorAppImageConfigFileSystemConfig, Map<String, dynamic>>(fileSystemConfig, (value) => value.toMap()),
    };
  }

  factory AppImageConfigCodeEditorAppImageConfig.fromMap(Map<String, dynamic> map) {
    return AppImageConfigCodeEditorAppImageConfig(
      containerConfig: map['containerConfig'] == null ? null : ((AppImageConfigCodeEditorAppImageConfigContainerConfig.fromMap((map['containerConfig']! as Map).cast<String, dynamic>())).input()).input(),
      fileSystemConfig: map['fileSystemConfig'] == null ? null : ((AppImageConfigCodeEditorAppImageConfigFileSystemConfig.fromMap((map['fileSystemConfig']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

