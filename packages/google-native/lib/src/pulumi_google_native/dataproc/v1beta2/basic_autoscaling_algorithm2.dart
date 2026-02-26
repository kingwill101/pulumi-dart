// ignore_for_file: unused_element, unnecessary_cast

import 'basic_yarn_autoscaling_config2.dart';

/// Basic algorithm for autoscaling.
class BasicAutoscalingAlgorithm2 {
  /// Optional. Duration between scaling events. A scaling period starts after the update operation from the previous event has completed.Bounds: 2m, 1d. Default: 2m.
  final String? cooldownPeriod;

  /// Optional. YARN autoscaling configuration.
  final BasicYarnAutoscalingConfig2? yarnConfig;

  BasicAutoscalingAlgorithm2({
    this.cooldownPeriod,
    this.yarnConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cooldownPeriodValue = cooldownPeriod;
    if (cooldownPeriodValue != null) {
      map['cooldownPeriod'] = cooldownPeriodValue;
    }
    final yarnConfigValue = yarnConfig;
    if (yarnConfigValue != null) {
      map['yarnConfig'] = yarnConfigValue.toMap();
    }
    return map;
  }

  factory BasicAutoscalingAlgorithm2.fromMap(Map<String, dynamic> map) {
    return BasicAutoscalingAlgorithm2(
      cooldownPeriod: map['cooldownPeriod'] == null
          ? null
          : map['cooldownPeriod'] as String,
      yarnConfig: map['yarnConfig'] == null
          ? null
          : BasicYarnAutoscalingConfig2.fromMap(
              (map['yarnConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
