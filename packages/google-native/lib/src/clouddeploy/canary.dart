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

  /// Creates a new [Canary].
  /// [canaryDeployment] Configures the progressive based deployment for a Target.
  /// [customCanaryDeployment] Configures the progressive based deployment for a Target, but allows customizing at the phase level where a phase represents each of the percentage deployments.
  /// [runtimeConfig] Optional. Runtime specific configurations for the deployment strategy. The runtime configuration is used to determine how Cloud Deploy will split traffic to enable a progressive deployment.
  Canary({
    this.canaryDeployment,
    this.customCanaryDeployment,
    this.runtimeConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canaryDeployment': ?canaryDeployment == null
          ? null
          : canaryDeployment!.toMap(),
      'customCanaryDeployment': ?customCanaryDeployment == null
          ? null
          : customCanaryDeployment!.toMap(),
      'runtimeConfig': ?runtimeConfig == null ? null : runtimeConfig!.toMap(),
    };
  }

  factory Canary.fromMap(Map<String, dynamic> map) {
    return Canary(
      canaryDeployment: map['canaryDeployment'] == null
          ? null
          : CanaryDeployment.fromMap(
              (map['canaryDeployment'] as Map).cast<String, dynamic>(),
            ),
      customCanaryDeployment: map['customCanaryDeployment'] == null
          ? null
          : CustomCanaryDeployment.fromMap(
              (map['customCanaryDeployment'] as Map).cast<String, dynamic>(),
            ),
      runtimeConfig: map['runtimeConfig'] == null
          ? null
          : RuntimeConfig.fromMap(
              (map['runtimeConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
