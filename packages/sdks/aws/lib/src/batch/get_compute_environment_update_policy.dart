// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetComputeEnvironmentUpdatePolicy {
  final pulumi.Input<int> jobExecutionTimeoutMinutes;
  final pulumi.Input<bool> terminateJobsOnUpdate;

  /// Creates a new [GetComputeEnvironmentUpdatePolicy].
  /// [jobExecutionTimeoutMinutes] Required.
  /// [terminateJobsOnUpdate] Required.
  const GetComputeEnvironmentUpdatePolicy({
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
      jobExecutionTimeoutMinutes: pulumi.Input.fromValue((map['jobExecutionTimeoutMinutes'] as num).toInt()),
      terminateJobsOnUpdate: pulumi.Input.fromValue(map['terminateJobsOnUpdate'] as bool),
    );
  }
}
