// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'execution_reference_response.dart';
import 'google_cloud_run_v1_condition_response.dart';

/// JobStatus represents the current state of a Job.
class JobStatusResponse5 {
  /// Conditions communicate information about ongoing/complete reconciliation processes that bring the "spec" inline with the observed state of the world. Job-specific conditions include: * `Ready`: `True` when the job is ready to be executed.
  final List<GoogleCloudRunV1ConditionResponse> conditions;

  /// Number of executions created for this job.
  final int executionCount;

  /// A pointer to the most recently created execution for this job. This is set regardless of the eventual state of the execution.
  final ExecutionReferenceResponse latestCreatedExecution;

  /// The 'generation' of the job that was last processed by the controller.
  final int observedGeneration;

  JobStatusResponse5({
    required this.conditions,
    required this.executionCount,
    required this.latestCreatedExecution,
    required this.observedGeneration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['conditions'] = Input.encodeList<GoogleCloudRunV1ConditionResponse,
        Map<String, dynamic>>(conditions, (value) => value.toMap());
    map['executionCount'] = executionCount;
    map['latestCreatedExecution'] = latestCreatedExecution.toMap();
    map['observedGeneration'] = observedGeneration;
    return map;
  }

  factory JobStatusResponse5.fromMap(Map<String, dynamic> map) {
    return JobStatusResponse5(
      conditions: Input.decodeList<GoogleCloudRunV1ConditionResponse>(
          map['conditions'],
          (value) => GoogleCloudRunV1ConditionResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      executionCount: map['executionCount'] as int,
      latestCreatedExecution: ExecutionReferenceResponse.fromMap(
          (map['latestCreatedExecution'] as Map).cast<String, dynamic>()),
      observedGeneration: map['observedGeneration'] as int,
    );
  }
}
