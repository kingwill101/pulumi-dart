// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HyperParameterTuningJobTrainingJobDefinitionStoppingCondition {
  /// Maximum pending time in seconds.
  final pulumi.Input<int?>? maxPendingTimeInSeconds;
  /// Maximum runtime in seconds.
  final pulumi.Input<int?>? maxRuntimeInSeconds;
  /// Maximum wait time in seconds.
  final pulumi.Input<int?>? maxWaitTimeInSeconds;

  /// Creates a new [HyperParameterTuningJobTrainingJobDefinitionStoppingCondition].
  /// [maxPendingTimeInSeconds] Maximum pending time in seconds.
  /// [maxRuntimeInSeconds] Maximum runtime in seconds.
  /// [maxWaitTimeInSeconds] Maximum wait time in seconds.
  const HyperParameterTuningJobTrainingJobDefinitionStoppingCondition({
    this.maxPendingTimeInSeconds,
    this.maxRuntimeInSeconds,
    this.maxWaitTimeInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxPendingTimeInSeconds': ?maxPendingTimeInSeconds,
      'maxRuntimeInSeconds': ?maxRuntimeInSeconds,
      'maxWaitTimeInSeconds': ?maxWaitTimeInSeconds,
    };
  }

  factory HyperParameterTuningJobTrainingJobDefinitionStoppingCondition.fromMap(Map<String, dynamic> map) {
    return HyperParameterTuningJobTrainingJobDefinitionStoppingCondition(
      maxPendingTimeInSeconds: (() { final guardedValue = map['maxPendingTimeInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      maxRuntimeInSeconds: (() { final guardedValue = map['maxRuntimeInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      maxWaitTimeInSeconds: (() { final guardedValue = map['maxWaitTimeInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
