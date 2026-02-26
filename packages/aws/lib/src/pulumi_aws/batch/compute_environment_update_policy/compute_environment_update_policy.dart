// ignore_for_file: unused_element, unnecessary_cast

class ComputeEnvironmentUpdatePolicy {
  /// Specifies the job timeout (in minutes) when the compute environment infrastructure is updated.
  final int? jobExecutionTimeoutMinutes;

  /// Specifies whether jobs are automatically terminated when the compute environment infrastructure is updated.
  final bool? terminateJobsOnUpdate;

  ComputeEnvironmentUpdatePolicy({
    this.jobExecutionTimeoutMinutes,
    this.terminateJobsOnUpdate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final jobExecutionTimeoutMinutesValue = jobExecutionTimeoutMinutes;
    if (jobExecutionTimeoutMinutesValue != null) {
      map['jobExecutionTimeoutMinutes'] = jobExecutionTimeoutMinutesValue;
    }
    final terminateJobsOnUpdateValue = terminateJobsOnUpdate;
    if (terminateJobsOnUpdateValue != null) {
      map['terminateJobsOnUpdate'] = terminateJobsOnUpdateValue;
    }
    return map;
  }

  factory ComputeEnvironmentUpdatePolicy.fromMap(Map<String, dynamic> map) {
    return ComputeEnvironmentUpdatePolicy(
      jobExecutionTimeoutMinutes: map['jobExecutionTimeoutMinutes'] == null
          ? null
          : map['jobExecutionTimeoutMinutes'] as int,
      terminateJobsOnUpdate: map['terminateJobsOnUpdate'] == null
          ? null
          : map['terminateJobsOnUpdate'] as bool,
    );
  }
}
