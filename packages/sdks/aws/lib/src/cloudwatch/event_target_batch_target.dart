// ignore_for_file: unused_element, unnecessary_cast


class EventTargetBatchTarget {
  /// The size of the array, if this is an array batch job. Valid values are integers between 2 and 10,000.
  final int? arraySize;
  /// The number of times to attempt to retry, if the job fails. Valid values are 1 to 10.
  final int? jobAttempts;
  /// The ARN or name of the job definition to use if the event target is an AWS Batch job. This job definition must already exist.
  final String jobDefinition;
  /// The name to use for this execution of the job, if the target is an AWS Batch job.
  final String jobName;

  /// Creates a new [EventTargetBatchTarget].
  /// [arraySize] The size of the array, if this is an array batch job. Valid values are integers between 2 and 10,000.
  /// [jobAttempts] The number of times to attempt to retry, if the job fails. Valid values are 1 to 10.
  /// [jobDefinition] The ARN or name of the job definition to use if the event target is an AWS Batch job. This job definition must already exist.
  /// [jobName] The name to use for this execution of the job, if the target is an AWS Batch job.
  EventTargetBatchTarget({
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
      arraySize: map['arraySize'] == null ? null : map['arraySize'] as int,
      jobAttempts: map['jobAttempts'] == null ? null : map['jobAttempts'] as int,
      jobDefinition: map['jobDefinition'] as String,
      jobName: map['jobName'] as String,
    );
  }
}

