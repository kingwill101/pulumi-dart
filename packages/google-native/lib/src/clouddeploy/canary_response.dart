// ignore_for_file: unused_element, unnecessary_cast

import 'canary_deployment_response.dart';
import 'custom_canary_deployment_response.dart';
import 'runtime_config_response.dart';

/// Canary represents the canary deployment strategy.
class CanaryResponse {
  /// Configures the progressive based deployment for a Target.
  final CanaryDeploymentResponse canaryDeployment;

  /// Configures the progressive based deployment for a Target, but allows customizing at the phase level where a phase represents each of the percentage deployments.
  final CustomCanaryDeploymentResponse customCanaryDeployment;

  /// Optional. Runtime specific configurations for the deployment strategy. The runtime configuration is used to determine how Cloud Deploy will split traffic to enable a progressive deployment.
  final RuntimeConfigResponse runtimeConfig;

  /// Creates a new [CanaryResponse].
  /// [canaryDeployment] Configures the progressive based deployment for a Target.
  /// [customCanaryDeployment] Configures the progressive based deployment for a Target, but allows customizing at the phase level where a phase represents each of the percentage deployments.
  /// [runtimeConfig] Optional. Runtime specific configurations for the deployment strategy. The runtime configuration is used to determine how Cloud Deploy will split traffic to enable a progressive deployment.
  CanaryResponse({
    required this.canaryDeployment,
    required this.customCanaryDeployment,
    required this.runtimeConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canaryDeployment': canaryDeployment.toMap(),
      'customCanaryDeployment': customCanaryDeployment.toMap(),
      'runtimeConfig': runtimeConfig.toMap(),
    };
  }

  factory CanaryResponse.fromMap(Map<String, dynamic> map) {
    return CanaryResponse(
      canaryDeployment: CanaryDeploymentResponse.fromMap(
        (map['canaryDeployment'] as Map).cast<String, dynamic>(),
      ),
      customCanaryDeployment: CustomCanaryDeploymentResponse.fromMap(
        (map['customCanaryDeployment'] as Map).cast<String, dynamic>(),
      ),
      runtimeConfig: RuntimeConfigResponse.fromMap(
        (map['runtimeConfig'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
