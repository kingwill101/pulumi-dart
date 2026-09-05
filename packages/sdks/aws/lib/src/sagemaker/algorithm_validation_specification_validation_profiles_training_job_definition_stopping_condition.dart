// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionStoppingCondition {
  /// Maximum time, in seconds, a job can remain pending.
  final pulumi.Input<int?>? maxPendingTimeInSeconds;
  /// Maximum runtime, in seconds, for the training job.
  final pulumi.Input<int?>? maxRuntimeInSeconds;
  /// Maximum wait time, in seconds, including spot interruptions.
  final pulumi.Input<int?>? maxWaitTimeInSeconds;

  /// Creates a new [AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionStoppingCondition].
  /// [maxPendingTimeInSeconds] Maximum time, in seconds, a job can remain pending.
  /// [maxRuntimeInSeconds] Maximum runtime, in seconds, for the training job.
  /// [maxWaitTimeInSeconds] Maximum wait time, in seconds, including spot interruptions.
  const AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionStoppingCondition({
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

  factory AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionStoppingCondition.fromMap(Map<String, dynamic> map) {
    return AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionStoppingCondition(
      maxPendingTimeInSeconds: (() { final guardedValue = map['maxPendingTimeInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      maxRuntimeInSeconds: (() { final guardedValue = map['maxRuntimeInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      maxWaitTimeInSeconds: (() { final guardedValue = map['maxWaitTimeInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
