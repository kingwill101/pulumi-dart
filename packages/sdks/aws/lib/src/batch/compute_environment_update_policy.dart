// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ComputeEnvironmentUpdatePolicy {
  /// Specifies the job timeout (in minutes) when the compute environment infrastructure is updated.
  final pulumi.Input<int>? jobExecutionTimeoutMinutes;
  /// Specifies whether jobs are automatically terminated when the compute environment infrastructure is updated.
  final pulumi.Input<bool>? terminateJobsOnUpdate;

  /// Creates a new [ComputeEnvironmentUpdatePolicy].
  /// [jobExecutionTimeoutMinutes] Specifies the job timeout (in minutes) when the compute environment infrastructure is updated.
  /// [terminateJobsOnUpdate] Specifies whether jobs are automatically terminated when the compute environment infrastructure is updated.
  ComputeEnvironmentUpdatePolicy({
    this.jobExecutionTimeoutMinutes,
    this.terminateJobsOnUpdate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobExecutionTimeoutMinutes': ?jobExecutionTimeoutMinutes,
      'terminateJobsOnUpdate': ?terminateJobsOnUpdate,
    };
  }

  factory ComputeEnvironmentUpdatePolicy.fromMap(Map<String, dynamic> map) {
    return ComputeEnvironmentUpdatePolicy(
      jobExecutionTimeoutMinutes: (() { final guardedValue = map['jobExecutionTimeoutMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      terminateJobsOnUpdate: (() { final guardedValue = map['terminateJobsOnUpdate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

