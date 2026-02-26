// ignore_for_file: unused_element, unnecessary_cast

import 'canary_deployment.dart';
import 'custom_canary_deployment.dart';
import 'runtime_config.dart';

/// Canary represents the canary deployment strategy.
class Canary {
  /// Configures the progressive based deployment for a Target.
  final CanaryDeployment? canaryDeployment;

  /// Configures the progressive based deployment for a Target, but allows customizing at the phase level where a phase represents each of the percentage deployments.
  final CustomCanaryDeployment? customCanaryDeployment;

  /// Optional. Runtime specific configurations for the deployment strategy. The runtime configuration is used to determine how Cloud Deploy will split traffic to enable a progressive deployment.
  final RuntimeConfig? runtimeConfig;

  Canary({
    this.canaryDeployment,
    this.customCanaryDeployment,
    this.runtimeConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final canaryDeploymentValue = canaryDeployment;
    if (canaryDeploymentValue != null) {
      map['canaryDeployment'] = canaryDeploymentValue.toMap();
    }
    final customCanaryDeploymentValue = customCanaryDeployment;
    if (customCanaryDeploymentValue != null) {
      map['customCanaryDeployment'] = customCanaryDeploymentValue.toMap();
    }
    final runtimeConfigValue = runtimeConfig;
    if (runtimeConfigValue != null) {
      map['runtimeConfig'] = runtimeConfigValue.toMap();
    }
    return map;
  }

  factory Canary.fromMap(Map<String, dynamic> map) {
    return Canary(
      canaryDeployment: map['canaryDeployment'] == null
          ? null
          : CanaryDeployment.fromMap(
              (map['canaryDeployment'] as Map).cast<String, dynamic>()),
      customCanaryDeployment: map['customCanaryDeployment'] == null
          ? null
          : CustomCanaryDeployment.fromMap(
              (map['customCanaryDeployment'] as Map).cast<String, dynamic>()),
      runtimeConfig: map['runtimeConfig'] == null
          ? null
          : RuntimeConfig.fromMap(
              (map['runtimeConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
