// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HyperParameterTuningJobConfigResourceLimits {
  /// Maximum total training jobs.
  final pulumi.Input<int?>? maxNumberOfTrainingJobs;
  /// Maximum parallel training jobs.
  final pulumi.Input<int> maxParallelTrainingJobs;
  /// Maximum total runtime in seconds.
  final pulumi.Input<int?>? maxRuntimeInSeconds;

  /// Creates a new [HyperParameterTuningJobConfigResourceLimits].
  /// [maxNumberOfTrainingJobs] Maximum total training jobs.
  /// [maxParallelTrainingJobs] Maximum parallel training jobs.
  /// [maxRuntimeInSeconds] Maximum total runtime in seconds.
  const HyperParameterTuningJobConfigResourceLimits({
    this.maxNumberOfTrainingJobs,
    required this.maxParallelTrainingJobs,
    this.maxRuntimeInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxNumberOfTrainingJobs': ?maxNumberOfTrainingJobs,
      'maxParallelTrainingJobs': maxParallelTrainingJobs,
      'maxRuntimeInSeconds': ?maxRuntimeInSeconds,
    };
  }

  factory HyperParameterTuningJobConfigResourceLimits.fromMap(Map<String, dynamic> map) {
    return HyperParameterTuningJobConfigResourceLimits(
      maxNumberOfTrainingJobs: (() { final guardedValue = map['maxNumberOfTrainingJobs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      maxParallelTrainingJobs: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maxParallelTrainingJobs'])),
      maxRuntimeInSeconds: (() { final guardedValue = map['maxRuntimeInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
