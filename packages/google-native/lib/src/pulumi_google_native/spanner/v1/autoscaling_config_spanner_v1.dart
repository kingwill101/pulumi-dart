// ignore_for_file: unused_element, unnecessary_cast

import 'autoscaling_limits_spanner_v1.dart';
import 'autoscaling_targets_spanner_v1.dart';

/// Autoscaling config for an instance.
class AutoscalingConfigSpannerV1 {
  /// Autoscaling limits for an instance.
  final AutoscalingLimitsSpannerV1 autoscalingLimits;

  /// The autoscaling targets for an instance.
  final AutoscalingTargetsSpannerV1 autoscalingTargets;

  AutoscalingConfigSpannerV1({
    required this.autoscalingLimits,
    required this.autoscalingTargets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoscalingLimits'] = autoscalingLimits.toMap();
    map['autoscalingTargets'] = autoscalingTargets.toMap();
    return map;
  }

  factory AutoscalingConfigSpannerV1.fromMap(Map<String, dynamic> map) {
    return AutoscalingConfigSpannerV1(
      autoscalingLimits: AutoscalingLimitsSpannerV1.fromMap(
          (map['autoscalingLimits'] as Map).cast<String, dynamic>()),
      autoscalingTargets: AutoscalingTargetsSpannerV1.fromMap(
          (map['autoscalingTargets'] as Map).cast<String, dynamic>()),
    );
  }
}
