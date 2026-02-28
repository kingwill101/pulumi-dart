// ignore_for_file: unused_element, unnecessary_cast

import 'autoscaling_limits_response.dart';
import 'autoscaling_targets_response.dart';

/// Autoscaling config for a cluster.
class ClusterAutoscalingConfigResponse {
  /// Autoscaling limits for this cluster.
  final AutoscalingLimitsResponse autoscalingLimits;

  /// Autoscaling targets for this cluster.
  final AutoscalingTargetsResponse autoscalingTargets;

  /// Creates a new [ClusterAutoscalingConfigResponse].
  /// [autoscalingLimits] Autoscaling limits for this cluster.
  /// [autoscalingTargets] Autoscaling targets for this cluster.
  ClusterAutoscalingConfigResponse({
    required this.autoscalingLimits,
    required this.autoscalingTargets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoscalingLimits'] = autoscalingLimits.toMap();
    map['autoscalingTargets'] = autoscalingTargets.toMap();
    return map;
  }

  factory ClusterAutoscalingConfigResponse.fromMap(Map<String, dynamic> map) {
    return ClusterAutoscalingConfigResponse(
      autoscalingLimits: AutoscalingLimitsResponse.fromMap(
          (map['autoscalingLimits'] as Map).cast<String, dynamic>()),
      autoscalingTargets: AutoscalingTargetsResponse.fromMap(
          (map['autoscalingTargets'] as Map).cast<String, dynamic>()),
    );
  }
}
