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
  RuntimeConfig({
    this.cloudRun,
    this.kubernetes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudRunValue = cloudRun;
    if (cloudRunValue != null) {
      map['cloudRun'] = cloudRunValue.toMap();
    }
    final kubernetesValue = kubernetes;
    if (kubernetesValue != null) {
      map['kubernetes'] = kubernetesValue.toMap();
    }
    return map;
  }

  factory RuntimeConfig.fromMap(Map<String, dynamic> map) {
    return RuntimeConfig(
      cloudRun: map['cloudRun'] == null
          ? null
          : CloudRunConfig.fromMap(
              (map['cloudRun'] as Map).cast<String, dynamic>()),
      kubernetes: map['kubernetes'] == null
          ? null
          : KubernetesConfig.fromMap(
              (map['kubernetes'] as Map).cast<String, dynamic>()),
    );
  }
}
