// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_run_config.dart';
import 'kubernetes_config.dart';

/// RuntimeConfig contains the runtime specific configurations for a deployment strategy.
class RuntimeConfig {
  /// Cloud Run runtime configuration.
  final CloudRunConfig? cloudRun;

  /// Kubernetes runtime configuration.
  final KubernetesConfig? kubernetes;

  /// Creates a new [RuntimeConfig].
  /// [cloudRun] Cloud Run runtime configuration.
  /// [kubernetes] Kubernetes runtime configuration.
  RuntimeConfig({this.cloudRun, this.kubernetes});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRun': ?cloudRun == null ? null : cloudRun!.toMap(),
      'kubernetes': ?kubernetes == null ? null : kubernetes!.toMap(),
    };
  }

  factory RuntimeConfig.fromMap(Map<String, dynamic> map) {
    return RuntimeConfig(
      cloudRun: map['cloudRun'] == null
          ? null
          : CloudRunConfig.fromMap(
              (map['cloudRun'] as Map).cast<String, dynamic>(),
            ),
      kubernetes: map['kubernetes'] == null
          ? null
          : KubernetesConfig.fromMap(
              (map['kubernetes'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
