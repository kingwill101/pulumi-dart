// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrainingJobStoppingCondition {
  /// Maximum time in seconds a training job can be pending before it is stopped. Valid values: 7200–2419200.
  final pulumi.Input<int>? maxPendingTimeInSeconds;
  /// Maximum time in seconds the training job can run before it is stopped.
  final pulumi.Input<int>? maxRuntimeInSeconds;
  /// Maximum time in seconds to wait for a managed spot training job to complete.
  final pulumi.Input<int>? maxWaitTimeInSeconds;

  /// Creates a new [TrainingJobStoppingCondition].
  /// [maxPendingTimeInSeconds] Maximum time in seconds a training job can be pending before it is stopped. Valid values: 7200–2419200.
  /// [maxRuntimeInSeconds] Maximum time in seconds the training job can run before it is stopped.
  /// [maxWaitTimeInSeconds] Maximum time in seconds to wait for a managed spot training job to complete.
  const TrainingJobStoppingCondition({
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

  factory TrainingJobStoppingCondition.fromMap(Map<String, dynamic> map) {
    return TrainingJobStoppingCondition(
      maxPendingTimeInSeconds: (() { final guardedValue = map['maxPendingTimeInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxRuntimeInSeconds: (() { final guardedValue = map['maxRuntimeInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxWaitTimeInSeconds: (() { final guardedValue = map['maxWaitTimeInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
