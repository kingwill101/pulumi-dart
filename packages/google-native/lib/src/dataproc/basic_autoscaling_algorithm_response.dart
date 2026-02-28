// ignore_for_file: unused_element, unnecessary_cast

import 'basic_yarn_autoscaling_config_response.dart';
import 'spark_standalone_autoscaling_config_response.dart';

/// Basic algorithm for autoscaling.
class BasicAutoscalingAlgorithmResponse {
  /// Optional. Duration between scaling events. A scaling period starts after the update operation from the previous event has completed.Bounds: 2m, 1d. Default: 2m.
  final String cooldownPeriod;

  /// Optional. Spark Standalone autoscaling configuration
  final SparkStandaloneAutoscalingConfigResponse sparkStandaloneConfig;

  /// Optional. YARN autoscaling configuration.
  final BasicYarnAutoscalingConfigResponse yarnConfig;

  /// Creates a new [BasicAutoscalingAlgorithmResponse].
  /// [cooldownPeriod] Optional. Duration between scaling events. A scaling period starts after the update operation from the previous event has completed.Bounds: 2m, 1d. Default: 2m.
  /// [sparkStandaloneConfig] Optional. Spark Standalone autoscaling configuration
  /// [yarnConfig] Optional. YARN autoscaling configuration.
  BasicAutoscalingAlgorithmResponse({
    required this.cooldownPeriod,
    required this.sparkStandaloneConfig,
    required this.yarnConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cooldownPeriod'] = cooldownPeriod;
    map['sparkStandaloneConfig'] = sparkStandaloneConfig.toMap();
    map['yarnConfig'] = yarnConfig.toMap();
    return map;
  }

  factory BasicAutoscalingAlgorithmResponse.fromMap(Map<String, dynamic> map) {
    return BasicAutoscalingAlgorithmResponse(
      cooldownPeriod: map['cooldownPeriod'] as String,
      sparkStandaloneConfig: SparkStandaloneAutoscalingConfigResponse.fromMap(
          (map['sparkStandaloneConfig'] as Map).cast<String, dynamic>()),
      yarnConfig: BasicYarnAutoscalingConfigResponse.fromMap(
          (map['yarnConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
