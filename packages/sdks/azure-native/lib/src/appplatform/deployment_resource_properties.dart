// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_result_user_source_info.dart';
import 'deployment_settings.dart';

/// Deployment resource properties payload
class DeploymentResourceProperties {
  /// Indicates whether the Deployment is active
  final pulumi.Input<bool>? active;
  /// Deployment settings of the Deployment
  final pulumi.Input<DeploymentSettings>? deploymentSettings;
  /// Uploaded source information of the deployment.
  final pulumi.Input<BuildResultUserSourceInfo>? source;

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
      'deploymentSettings': ?pulumi.Input.mapOptionalInputValue<DeploymentSettings, Map<String, dynamic>>(deploymentSettings, (value) => value.toMap()),
      'source': ?pulumi.Input.mapOptionalInputValue<BuildResultUserSourceInfo, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory DeploymentResourceProperties.fromMap(Map<String, dynamic> map) {
    return DeploymentResourceProperties(
      active: map['active'] == null ? null : (map['active'] as bool).input(),
      deploymentSettings: map['deploymentSettings'] == null ? null : (DeploymentSettings.fromMap((map['deploymentSettings'] as Map).cast<String, dynamic>())).input(),
      source: map['source'] == null ? null : (BuildResultUserSourceInfo.fromMap((map['source'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

