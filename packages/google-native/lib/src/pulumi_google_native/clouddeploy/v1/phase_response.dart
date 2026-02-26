// ignore_for_file: unused_element, unnecessary_cast

import 'child_rollout_jobs_response.dart';
import 'deployment_jobs_response.dart';

/// Phase represents a collection of jobs that are logically grouped together for a `Rollout`.
class PhaseResponse {
  /// ChildRollout job composition.
  final ChildRolloutJobsResponse childRolloutJobs;

  /// Deployment job composition.
  final DeploymentJobsResponse deploymentJobs;

  /// Additional information on why the Phase was skipped, if available.
  final String skipMessage;

  /// Current state of the Phase.
  final String state;

  PhaseResponse({
    required this.childRolloutJobs,
    required this.deploymentJobs,
    required this.skipMessage,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['childRolloutJobs'] = childRolloutJobs.toMap();
    map['deploymentJobs'] = deploymentJobs.toMap();
    map['skipMessage'] = skipMessage;
    map['state'] = state;
    return map;
  }

  factory PhaseResponse.fromMap(Map<String, dynamic> map) {
    return PhaseResponse(
      childRolloutJobs: ChildRolloutJobsResponse.fromMap(
          (map['childRolloutJobs'] as Map).cast<String, dynamic>()),
      deploymentJobs: DeploymentJobsResponse.fromMap(
          (map['deploymentJobs'] as Map).cast<String, dynamic>()),
      skipMessage: map['skipMessage'] as String,
      state: map['state'] as String,
    );
  }
}
