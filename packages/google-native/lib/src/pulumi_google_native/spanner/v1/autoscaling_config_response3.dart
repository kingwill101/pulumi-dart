// ignore_for_file: unused_element, unnecessary_cast

import 'autoscaling_limits_response2.dart';
import 'autoscaling_targets_response2.dart';

/// Autoscaling config for an instance.
class AutoscalingConfigResponse3 {
  /// Autoscaling limits for an instance.
  final AutoscalingLimitsResponse2 autoscalingLimits;

  /// The autoscaling targets for an instance.
  final AutoscalingTargetsResponse2 autoscalingTargets;

  AutoscalingConfigResponse3({
    required this.autoscalingLimits,
    required this.autoscalingTargets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoscalingLimits'] = autoscalingLimits.toMap();
    map['autoscalingTargets'] = autoscalingTargets.toMap();
    return map;
  }

  factory AutoscalingConfigResponse3.fromMap(Map<String, dynamic> map) {
    return AutoscalingConfigResponse3(
      autoscalingLimits: AutoscalingLimitsResponse2.fromMap(
          (map['autoscalingLimits'] as Map).cast<String, dynamic>()),
      autoscalingTargets: AutoscalingTargetsResponse2.fromMap(
          (map['autoscalingTargets'] as Map).cast<String, dynamic>()),
    );
  }
}
