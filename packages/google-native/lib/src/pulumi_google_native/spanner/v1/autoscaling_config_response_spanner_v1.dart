// ignore_for_file: unused_element, unnecessary_cast

import 'autoscaling_limits_response_spanner_v1.dart';
import 'autoscaling_targets_response_spanner_v1.dart';

/// Autoscaling config for an instance.
class AutoscalingConfigResponseSpannerV1 {
  /// Autoscaling limits for an instance.
  final AutoscalingLimitsResponseSpannerV1 autoscalingLimits;

  /// The autoscaling targets for an instance.
  final AutoscalingTargetsResponseSpannerV1 autoscalingTargets;

  AutoscalingConfigResponseSpannerV1({
    required this.autoscalingLimits,
    required this.autoscalingTargets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoscalingLimits'] = autoscalingLimits.toMap();
    map['autoscalingTargets'] = autoscalingTargets.toMap();
    return map;
  }

  factory AutoscalingConfigResponseSpannerV1.fromMap(Map<String, dynamic> map) {
    return AutoscalingConfigResponseSpannerV1(
      autoscalingLimits: AutoscalingLimitsResponseSpannerV1.fromMap(
          (map['autoscalingLimits'] as Map).cast<String, dynamic>()),
      autoscalingTargets: AutoscalingTargetsResponseSpannerV1.fromMap(
          (map['autoscalingTargets'] as Map).cast<String, dynamic>()),
    );
  }
}
