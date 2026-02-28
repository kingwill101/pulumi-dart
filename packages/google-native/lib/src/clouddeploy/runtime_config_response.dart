// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_run_config_response.dart';
import 'kubernetes_config_response.dart';

/// RuntimeConfig contains the runtime specific configurations for a deployment strategy.
class RuntimeConfigResponse {
  /// Cloud Run runtime configuration.
  final CloudRunConfigResponse cloudRun;

  /// Kubernetes runtime configuration.
  final KubernetesConfigResponse kubernetes;

  /// Creates a new [RuntimeConfigResponse].
  /// [cloudRun] Cloud Run runtime configuration.
  /// [kubernetes] Kubernetes runtime configuration.
  RuntimeConfigResponse({
    required this.cloudRun,
    required this.kubernetes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudRun'] = cloudRun.toMap();
    map['kubernetes'] = kubernetes.toMap();
    return map;
  }

  factory RuntimeConfigResponse.fromMap(Map<String, dynamic> map) {
    return RuntimeConfigResponse(
      cloudRun: CloudRunConfigResponse.fromMap(
          (map['cloudRun'] as Map).cast<String, dynamic>()),
      kubernetes: KubernetesConfigResponse.fromMap(
          (map['kubernetes'] as Map).cast<String, dynamic>()),
    );
  }
}
