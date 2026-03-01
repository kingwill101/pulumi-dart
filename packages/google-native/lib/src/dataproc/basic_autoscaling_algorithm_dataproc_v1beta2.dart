// ignore_for_file: unused_element, unnecessary_cast

import 'basic_yarn_autoscaling_config_dataproc_v1beta2.dart';

/// Basic algorithm for autoscaling.
class BasicAutoscalingAlgorithmDataprocV1beta2 {
  /// Optional. Duration between scaling events. A scaling period starts after the update operation from the previous event has completed.Bounds: 2m, 1d. Default: 2m.
  final String? cooldownPeriod;

  /// Optional. YARN autoscaling configuration.
  final BasicYarnAutoscalingConfigDataprocV1beta2? yarnConfig;

  /// Creates a new [BasicAutoscalingAlgorithmDataprocV1beta2].
  /// [cooldownPeriod] Optional. Duration between scaling events. A scaling period starts after the update operation from the previous event has completed.Bounds: 2m, 1d. Default: 2m.
  /// [yarnConfig] Optional. YARN autoscaling configuration.
  BasicAutoscalingAlgorithmDataprocV1beta2({
    this.cooldownPeriod,
    this.yarnConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cooldownPeriod': ?cooldownPeriod,
      'yarnConfig': ?yarnConfig == null ? null : yarnConfig!.toMap(),
    };
  }

  factory BasicAutoscalingAlgorithmDataprocV1beta2.fromMap(
    Map<String, dynamic> map,
  ) {
    return BasicAutoscalingAlgorithmDataprocV1beta2(
      cooldownPeriod: map['cooldownPeriod'] == null
          ? null
          : map['cooldownPeriod'] as String,
      yarnConfig: map['yarnConfig'] == null
          ? null
          : BasicYarnAutoscalingConfigDataprocV1beta2.fromMap(
              (map['yarnConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
