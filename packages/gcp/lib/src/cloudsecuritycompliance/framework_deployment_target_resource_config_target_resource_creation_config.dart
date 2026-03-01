// ignore_for_file: unused_element, unnecessary_cast

import 'framework_deployment_target_resource_config_target_resource_creation_config_folder_creation_config.dart';
import 'framework_deployment_target_resource_config_target_resource_creation_config_project_creation_config.dart';

class FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfig {
  /// FolderCreationConfig contains the config to create a new folder to be used
  /// as the target_resource of a deployment.
  /// Structure is documented below.
  final FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfigFolderCreationConfig?
  folderCreationConfig;

  /// ProjectCreationConfig contains the config to create a new project to be used
  /// as the target_resource of a deployment.
  /// Structure is documented below.
  final FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfigProjectCreationConfig?
  projectCreationConfig;

  /// Creates a new [FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfig].
  /// [folderCreationConfig] FolderCreationConfig contains the config to create a new folder to be used
  /// [projectCreationConfig] ProjectCreationConfig contains the config to create a new project to be used
  FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfig({
    this.folderCreationConfig,
    this.projectCreationConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'folderCreationConfig': ?folderCreationConfig == null
          ? null
          : folderCreationConfig!.toMap(),
      'projectCreationConfig': ?projectCreationConfig == null
          ? null
          : projectCreationConfig!.toMap(),
    };
  }

  factory FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfig(
      folderCreationConfig: map['folderCreationConfig'] == null
          ? null
          : FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfigFolderCreationConfig.fromMap(
              (map['folderCreationConfig'] as Map).cast<String, dynamic>(),
            ),
      projectCreationConfig: map['projectCreationConfig'] == null
          ? null
          : FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfigProjectCreationConfig.fromMap(
              (map['projectCreationConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
