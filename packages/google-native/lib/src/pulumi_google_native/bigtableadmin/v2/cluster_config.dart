// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_autoscaling_config.dart';

/// Configuration for a cluster.
class ClusterConfig {
  /// Autoscaling configuration for this cluster.
  final ClusterAutoscalingConfig? clusterAutoscalingConfig;

  ClusterConfig({
    this.clusterAutoscalingConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clusterAutoscalingConfigValue = clusterAutoscalingConfig;
    if (clusterAutoscalingConfigValue != null) {
      map['clusterAutoscalingConfig'] = clusterAutoscalingConfigValue.toMap();
    }
    return map;
  }

  factory ClusterConfig.fromMap(Map<String, dynamic> map) {
    return ClusterConfig(
      clusterAutoscalingConfig: map['clusterAutoscalingConfig'] == null
          ? null
          : ClusterAutoscalingConfig.fromMap(
              (map['clusterAutoscalingConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
