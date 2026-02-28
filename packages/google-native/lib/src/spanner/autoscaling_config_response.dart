// ignore_for_file: unused_element, unnecessary_cast

import 'autoscaling_limits_response.dart';
import 'autoscaling_targets_response.dart';

/// Autoscaling config for an instance.
class AutoscalingConfigResponse {
  /// Autoscaling limits for an instance.
  final AutoscalingLimitsResponse autoscalingLimits;

  /// The autoscaling targets for an instance.
  final AutoscalingTargetsResponse autoscalingTargets;

  /// Creates a new [AutoscalingConfigResponse].
  /// [autoscalingLimits] Autoscaling limits for an instance.
  /// [autoscalingTargets] The autoscaling targets for an instance.
  AutoscalingConfigResponse({
    required this.autoscalingLimits,
    required this.autoscalingTargets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoscalingLimits'] = autoscalingLimits.toMap();
    map['autoscalingTargets'] = autoscalingTargets.toMap();
    return map;
  }

  factory AutoscalingConfigResponse.fromMap(Map<String, dynamic> map) {
    return AutoscalingConfigResponse(
      autoscalingLimits: AutoscalingLimitsResponse.fromMap(
          (map['autoscalingLimits'] as Map).cast<String, dynamic>()),
      autoscalingTargets: AutoscalingTargetsResponse.fromMap(
          (map['autoscalingTargets'] as Map).cast<String, dynamic>()),
    );
  }
}
