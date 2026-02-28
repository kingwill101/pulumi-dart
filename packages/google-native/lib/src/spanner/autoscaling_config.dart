// ignore_for_file: unused_element, unnecessary_cast

import 'autoscaling_limits.dart';
import 'autoscaling_targets.dart';

/// Autoscaling config for an instance.
class AutoscalingConfig {
  /// Autoscaling limits for an instance.
  final AutoscalingLimits autoscalingLimits;

  /// The autoscaling targets for an instance.
  final AutoscalingTargets autoscalingTargets;

  /// Creates a new [AutoscalingConfig].
  /// [autoscalingLimits] Autoscaling limits for an instance.
  /// [autoscalingTargets] The autoscaling targets for an instance.
  AutoscalingConfig({
    required this.autoscalingLimits,
    required this.autoscalingTargets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoscalingLimits'] = autoscalingLimits.toMap();
    map['autoscalingTargets'] = autoscalingTargets.toMap();
    return map;
  }

  factory AutoscalingConfig.fromMap(Map<String, dynamic> map) {
    return AutoscalingConfig(
      autoscalingLimits: AutoscalingLimits.fromMap(
          (map['autoscalingLimits'] as Map).cast<String, dynamic>()),
      autoscalingTargets: AutoscalingTargets.fromMap(
          (map['autoscalingTargets'] as Map).cast<String, dynamic>()),
    );
  }
}
