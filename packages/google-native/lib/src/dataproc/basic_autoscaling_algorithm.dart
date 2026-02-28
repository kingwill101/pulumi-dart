// ignore_for_file: unused_element, unnecessary_cast

import 'basic_yarn_autoscaling_config.dart';
import 'spark_standalone_autoscaling_config.dart';

/// Basic algorithm for autoscaling.
class BasicAutoscalingAlgorithm {
  /// Optional. Duration between scaling events. A scaling period starts after the update operation from the previous event has completed.Bounds: 2m, 1d. Default: 2m.
  final String? cooldownPeriod;

  /// Optional. Spark Standalone autoscaling configuration
  final SparkStandaloneAutoscalingConfig? sparkStandaloneConfig;

  /// Optional. YARN autoscaling configuration.
  final BasicYarnAutoscalingConfig? yarnConfig;

  /// Creates a new [BasicAutoscalingAlgorithm].
  /// [cooldownPeriod] Optional. Duration between scaling events. A scaling period starts after the update operation from the previous event has completed.Bounds: 2m, 1d. Default: 2m.
  /// [sparkStandaloneConfig] Optional. Spark Standalone autoscaling configuration
  /// [yarnConfig] Optional. YARN autoscaling configuration.
  BasicAutoscalingAlgorithm({
    this.cooldownPeriod,
    this.sparkStandaloneConfig,
    this.yarnConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cooldownPeriodValue = cooldownPeriod;
    if (cooldownPeriodValue != null) {
      map['cooldownPeriod'] = cooldownPeriodValue;
    }
    final sparkStandaloneConfigValue = sparkStandaloneConfig;
    if (sparkStandaloneConfigValue != null) {
      map['sparkStandaloneConfig'] = sparkStandaloneConfigValue.toMap();
    }
    final yarnConfigValue = yarnConfig;
    if (yarnConfigValue != null) {
      map['yarnConfig'] = yarnConfigValue.toMap();
    }
    return map;
  }

  factory BasicAutoscalingAlgorithm.fromMap(Map<String, dynamic> map) {
    return BasicAutoscalingAlgorithm(
      cooldownPeriod: map['cooldownPeriod'] == null
          ? null
          : map['cooldownPeriod'] as String,
      sparkStandaloneConfig: map['sparkStandaloneConfig'] == null
          ? null
          : SparkStandaloneAutoscalingConfig.fromMap(
              (map['sparkStandaloneConfig'] as Map).cast<String, dynamic>()),
      yarnConfig: map['yarnConfig'] == null
          ? null
          : BasicYarnAutoscalingConfig.fromMap(
              (map['yarnConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
