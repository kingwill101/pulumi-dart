// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HyperParameterTuningJobConfigTuningJobCompletionCriteriaBestObjectiveNotImproving {
  /// Maximum training jobs without improvement before completion.
  final pulumi.Input<int?>? maxNumberOfTrainingJobsNotImproving;

  /// Creates a new [HyperParameterTuningJobConfigTuningJobCompletionCriteriaBestObjectiveNotImproving].
  /// [maxNumberOfTrainingJobsNotImproving] Maximum training jobs without improvement before completion.
  const HyperParameterTuningJobConfigTuningJobCompletionCriteriaBestObjectiveNotImproving({
    this.maxNumberOfTrainingJobsNotImproving,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxNumberOfTrainingJobsNotImproving': ?maxNumberOfTrainingJobsNotImproving,
    };
  }

  factory HyperParameterTuningJobConfigTuningJobCompletionCriteriaBestObjectiveNotImproving.fromMap(Map<String, dynamic> map) {
    return HyperParameterTuningJobConfigTuningJobCompletionCriteriaBestObjectiveNotImproving(
      maxNumberOfTrainingJobsNotImproving: (() { final guardedValue = map['maxNumberOfTrainingJobsNotImproving']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
