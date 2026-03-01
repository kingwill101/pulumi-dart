// ignore_for_file: unused_element, unnecessary_cast


class GetComputeEnvironmentUpdatePolicy {
  final int jobExecutionTimeoutMinutes;
  final bool terminateJobsOnUpdate;

  /// Creates a new [GetComputeEnvironmentUpdatePolicy].
  /// [jobExecutionTimeoutMinutes] Required.
  /// [terminateJobsOnUpdate] Required.
  GetComputeEnvironmentUpdatePolicy({
    required this.jobExecutionTimeoutMinutes,
    required this.terminateJobsOnUpdate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobExecutionTimeoutMinutes': jobExecutionTimeoutMinutes,
      'terminateJobsOnUpdate': terminateJobsOnUpdate,
    };
  }

  factory GetComputeEnvironmentUpdatePolicy.fromMap(Map<String, dynamic> map) {
    return GetComputeEnvironmentUpdatePolicy(
      jobExecutionTimeoutMinutes: map['jobExecutionTimeoutMinutes'] as int,
      terminateJobsOnUpdate: map['terminateJobsOnUpdate'] as bool,
    );
  }
}

