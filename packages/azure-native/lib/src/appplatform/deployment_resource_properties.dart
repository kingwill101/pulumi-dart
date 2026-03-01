// ignore_for_file: unused_element, unnecessary_cast

import 'build_result_user_source_info.dart';
import 'deployment_settings.dart';

/// Deployment resource properties payload
class DeploymentResourceProperties {
  /// Indicates whether the Deployment is active
  final bool? active;
  /// Deployment settings of the Deployment
  final DeploymentSettings? deploymentSettings;
  /// Uploaded source information of the deployment.
  final BuildResultUserSourceInfo? source;

  /// Creates a new [DeploymentResourceProperties].
  /// [active] Indicates whether the Deployment is active
  /// [deploymentSettings] Deployment settings of the Deployment
  /// [source] Uploaded source information of the deployment.
  DeploymentResourceProperties({
    this.active,
    this.deploymentSettings,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active,
      'deploymentSettings': ?deploymentSettings == null ? null : deploymentSettings!.toMap(),
      'source': ?source == null ? null : source!.toMap(),
    };
  }

  factory DeploymentResourceProperties.fromMap(Map<String, dynamic> map) {
    return DeploymentResourceProperties(
      active: map['active'] == null ? null : map['active'] as bool,
      deploymentSettings: map['deploymentSettings'] == null ? null : DeploymentSettings.fromMap((map['deploymentSettings'] as Map).cast<String, dynamic>()),
      source: map['source'] == null ? null : BuildResultUserSourceInfo.fromMap((map['source'] as Map).cast<String, dynamic>()),
    );
  }
}

