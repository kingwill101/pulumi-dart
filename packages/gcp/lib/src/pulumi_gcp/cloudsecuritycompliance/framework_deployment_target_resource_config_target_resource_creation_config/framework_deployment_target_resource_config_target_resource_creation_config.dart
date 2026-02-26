// ignore_for_file: unused_element, unnecessary_cast

import '../framework_deployment_target_resource_config_target_resource_creation_config_folder_creation_config/framework_deployment_target_resource_config_target_resource_creation_config_folder_creation_config.dart';
import '../framework_deployment_target_resource_config_target_resource_creation_config_project_creation_config/framework_deployment_target_resource_config_target_resource_creation_config_project_creation_config.dart';

class FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfig {
  /// FolderCreationConfig contains the config to create a new folder to be used
  /// as the<span pulumi-lang-nodejs=" targetResource " pulumi-lang-dotnet=" TargetResource " pulumi-lang-go=" targetResource " pulumi-lang-python=" target_resource " pulumi-lang-yaml=" targetResource " pulumi-lang-java=" targetResource "> target_resource </span>of a deployment.
  /// Structure is documented below.
  final FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfigFolderCreationConfig?
      folderCreationConfig;

  /// ProjectCreationConfig contains the config to create a new project to be used
  /// as the<span pulumi-lang-nodejs=" targetResource " pulumi-lang-dotnet=" TargetResource " pulumi-lang-go=" targetResource " pulumi-lang-python=" target_resource " pulumi-lang-yaml=" targetResource " pulumi-lang-java=" targetResource "> target_resource </span>of a deployment.
  /// Structure is documented below.
  final FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfigProjectCreationConfig?
      projectCreationConfig;

  FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfig({
    this.folderCreationConfig,
    this.projectCreationConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final folderCreationConfigValue = folderCreationConfig;
    if (folderCreationConfigValue != null) {
      map['folderCreationConfig'] = folderCreationConfigValue.toMap();
    }
    final projectCreationConfigValue = projectCreationConfig;
    if (projectCreationConfigValue != null) {
      map['projectCreationConfig'] = projectCreationConfigValue.toMap();
    }
    return map;
  }

  factory FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfig.fromMap(
      Map<String, dynamic> map) {
    return FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfig(
      folderCreationConfig: map['folderCreationConfig'] == null
          ? null
          : FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfigFolderCreationConfig
              .fromMap(
                  (map['folderCreationConfig'] as Map).cast<String, dynamic>()),
      projectCreationConfig: map['projectCreationConfig'] == null
          ? null
          : FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfigProjectCreationConfig
              .fromMap((map['projectCreationConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
