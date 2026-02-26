// ignore_for_file: unused_element, unnecessary_cast

import 'basic_yarn_autoscaling_config_response2.dart';

/// Basic algorithm for autoscaling.
class BasicAutoscalingAlgorithmResponse2 {
  /// Optional. Duration between scaling events. A scaling period starts after the update operation from the previous event has completed.Bounds: 2m, 1d. Default: 2m.
  final String cooldownPeriod;

  /// Optional. YARN autoscaling configuration.
  final BasicYarnAutoscalingConfigResponse2 yarnConfig;

  BasicAutoscalingAlgorithmResponse2({
    required this.cooldownPeriod,
    required this.yarnConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cooldownPeriod'] = cooldownPeriod;
    map['yarnConfig'] = yarnConfig.toMap();
    return map;
  }

  factory BasicAutoscalingAlgorithmResponse2.fromMap(Map<String, dynamic> map) {
    return BasicAutoscalingAlgorithmResponse2(
      cooldownPeriod: map['cooldownPeriod'] as String,
      yarnConfig: BasicYarnAutoscalingConfigResponse2.fromMap(
          (map['yarnConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
