// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_autoscaling_config_response.dart';

/// Configuration for a cluster.
class ClusterConfigResponse {
  /// Autoscaling configuration for this cluster.
  final ClusterAutoscalingConfigResponse clusterAutoscalingConfig;

  ClusterConfigResponse({
    required this.clusterAutoscalingConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterAutoscalingConfig'] = clusterAutoscalingConfig.toMap();
    return map;
  }

  factory ClusterConfigResponse.fromMap(Map<String, dynamic> map) {
    return ClusterConfigResponse(
      clusterAutoscalingConfig: ClusterAutoscalingConfigResponse.fromMap(
          (map['clusterAutoscalingConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
