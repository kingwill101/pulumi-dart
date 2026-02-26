// ignore_for_file: unused_element, unnecessary_cast

import '../framework_deployment_target_resource_config_target_resource_creation_config/framework_deployment_target_resource_config_target_resource_creation_config.dart';

class FrameworkDeploymentTargetResourceConfig {
  /// CRM node in format organizations/{organization}, folders/{folder},
  /// or projects/{project}
  final String? existingTargetResource;

  /// TargetResourceCreationConfig contains the config to create a new resource to
  /// be used as the<span pulumi-lang-nodejs=" targetResource " pulumi-lang-dotnet=" TargetResource " pulumi-lang-go=" targetResource " pulumi-lang-python=" target_resource " pulumi-lang-yaml=" targetResource " pulumi-lang-java=" targetResource "> target_resource </span>of a deployment.
  /// Structure is documented below.
  final FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfig?
      targetResourceCreationConfig;

  FrameworkDeploymentTargetResourceConfig({
    this.existingTargetResource,
    this.targetResourceCreationConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final existingTargetResourceValue = existingTargetResource;
    if (existingTargetResourceValue != null) {
      map['existingTargetResource'] = existingTargetResourceValue;
    }
    final targetResourceCreationConfigValue = targetResourceCreationConfig;
    if (targetResourceCreationConfigValue != null) {
      map['targetResourceCreationConfig'] =
          targetResourceCreationConfigValue.toMap();
    }
    return map;
  }

  factory FrameworkDeploymentTargetResourceConfig.fromMap(
      Map<String, dynamic> map) {
    return FrameworkDeploymentTargetResourceConfig(
      existingTargetResource: map['existingTargetResource'] == null
          ? null
          : map['existingTargetResource'] as String,
      targetResourceCreationConfig: map['targetResourceCreationConfig'] == null
          ? null
          : FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfig
              .fromMap((map['targetResourceCreationConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
