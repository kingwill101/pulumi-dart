// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventTargetBatchTarget {
  /// The size of the array, if this is an array batch job. Valid values are integers between 2 and 10,000.
  final pulumi.Input<int?>? arraySize;
  /// The number of times to attempt to retry, if the job fails. Valid values are 1 to 10.
  final pulumi.Input<int?>? jobAttempts;
  /// The ARN or name of the job definition to use if the event target is an AWS Batch job. This job definition must already exist.
  final pulumi.Input<String> jobDefinition;
  /// The name to use for this execution of the job, if the target is an AWS Batch job.
  final pulumi.Input<String> jobName;

  /// Creates a new [EventTargetBatchTarget].
  /// [arraySize] The size of the array, if this is an array batch job. Valid values are integers between 2 and 10,000.
  /// [jobAttempts] The number of times to attempt to retry, if the job fails. Valid values are 1 to 10.
  /// [jobDefinition] The ARN or name of the job definition to use if the event target is an AWS Batch job. This job definition must already exist.
  /// [jobName] The name to use for this execution of the job, if the target is an AWS Batch job.
  const EventTargetBatchTarget({
    this.arraySize,
    this.jobAttempts,
    required this.jobDefinition,
    required this.jobName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arraySize': ?arraySize,
      'jobAttempts': ?jobAttempts,
      'jobDefinition': jobDefinition,
      'jobName': jobName,
    };
  }

  factory EventTargetBatchTarget.fromMap(Map<String, dynamic> map) {
    return EventTargetBatchTarget(
      arraySize: (() { final guardedValue = map['arraySize']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      jobAttempts: (() { final guardedValue = map['jobAttempts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      jobDefinition: pulumi.Input.fromValue(map['jobDefinition'] as String),
      jobName: pulumi.Input.fromValue(map['jobName'] as String),
    );
  }
}
