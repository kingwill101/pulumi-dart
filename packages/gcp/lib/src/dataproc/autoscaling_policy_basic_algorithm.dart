// ignore_for_file: unused_element, unnecessary_cast

import 'autoscaling_policy_basic_algorithm_yarn_config.dart';

class AutoscalingPolicyBasicAlgorithm {
  /// Duration between scaling events. A scaling period starts after the
  /// update operation from the previous event has completed.
  /// Bounds: [2m, 1d]. Default: 2m.
  final String? cooldownPeriod;

  /// YARN autoscaling configuration.
  /// Structure is documented below.
  final AutoscalingPolicyBasicAlgorithmYarnConfig yarnConfig;

  /// Creates a new [AutoscalingPolicyBasicAlgorithm].
  /// [cooldownPeriod] Duration between scaling events. A scaling period starts after the
  /// [yarnConfig] YARN autoscaling configuration.
  AutoscalingPolicyBasicAlgorithm({
    this.cooldownPeriod,
    required this.yarnConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cooldownPeriodValue = cooldownPeriod;
    if (cooldownPeriodValue != null) {
      map['cooldownPeriod'] = cooldownPeriodValue;
    }
    map['yarnConfig'] = yarnConfig.toMap();
    return map;
  }

  factory AutoscalingPolicyBasicAlgorithm.fromMap(Map<String, dynamic> map) {
    return AutoscalingPolicyBasicAlgorithm(
      cooldownPeriod: map['cooldownPeriod'] == null
          ? null
          : map['cooldownPeriod'] as String,
      yarnConfig: AutoscalingPolicyBasicAlgorithmYarnConfig.fromMap(
          (map['yarnConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
