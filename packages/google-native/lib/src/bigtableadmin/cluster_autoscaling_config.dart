// ignore_for_file: unused_element, unnecessary_cast

import 'autoscaling_limits.dart';
import 'autoscaling_targets.dart';

/// Autoscaling config for a cluster.
class ClusterAutoscalingConfig {
  /// Autoscaling limits for this cluster.
  final AutoscalingLimits autoscalingLimits;

  /// Autoscaling targets for this cluster.
  final AutoscalingTargets autoscalingTargets;

  /// Creates a new [ClusterAutoscalingConfig].
  /// [autoscalingLimits] Autoscaling limits for this cluster.
  /// [autoscalingTargets] Autoscaling targets for this cluster.
  ClusterAutoscalingConfig({
    required this.autoscalingLimits,
    required this.autoscalingTargets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoscalingLimits'] = autoscalingLimits.toMap();
    map['autoscalingTargets'] = autoscalingTargets.toMap();
    return map;
  }

  factory ClusterAutoscalingConfig.fromMap(Map<String, dynamic> map) {
    return ClusterAutoscalingConfig(
      autoscalingLimits: AutoscalingLimits.fromMap(
          (map['autoscalingLimits'] as Map).cast<String, dynamic>()),
      autoscalingTargets: AutoscalingTargets.fromMap(
          (map['autoscalingTargets'] as Map).cast<String, dynamic>()),
    );
  }
}
