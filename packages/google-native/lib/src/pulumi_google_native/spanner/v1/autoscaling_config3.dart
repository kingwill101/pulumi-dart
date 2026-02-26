// ignore_for_file: unused_element, unnecessary_cast

import 'autoscaling_limits2.dart';
import 'autoscaling_targets2.dart';

/// Autoscaling config for an instance.
class AutoscalingConfig3 {
  /// Autoscaling limits for an instance.
  final AutoscalingLimits2 autoscalingLimits;

  /// The autoscaling targets for an instance.
  final AutoscalingTargets2 autoscalingTargets;

  AutoscalingConfig3({
    required this.autoscalingLimits,
    required this.autoscalingTargets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoscalingLimits'] = autoscalingLimits.toMap();
    map['autoscalingTargets'] = autoscalingTargets.toMap();
    return map;
  }

  factory AutoscalingConfig3.fromMap(Map<String, dynamic> map) {
    return AutoscalingConfig3(
      autoscalingLimits: AutoscalingLimits2.fromMap(
          (map['autoscalingLimits'] as Map).cast<String, dynamic>()),
      autoscalingTargets: AutoscalingTargets2.fromMap(
          (map['autoscalingTargets'] as Map).cast<String, dynamic>()),
    );
  }
}
