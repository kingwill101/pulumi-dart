// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../job_queue_compute_environment_order/job_queue_compute_environment_order.dart';
import '../job_queue_job_state_time_limit_action/job_queue_job_state_time_limit_action.dart';
import '../job_queue_timeouts/job_queue_timeouts.dart';

/// The set of arguments for JobQueue.
class JobQueueArgs {
  /// The set of compute environments mapped to a job queue and their order relative to each other. The job scheduler uses this parameter to determine which compute environment runs a specific job. Compute environments must be in the VALID state before you can associate them with a job queue. You can associate up to three compute environments with a job queue.
  final pulumi.Input<List<JobQueueComputeEnvironmentOrder>>?
      computeEnvironmentOrders;

  /// The set of job state time limit actions mapped to a job queue. Specifies an action that AWS Batch will take after the job has remained at the head of the queue in the specified state for longer than the specified time.
  final pulumi.Input<List<JobQueueJobStateTimeLimitAction>>?
      jobStateTimeLimitActions;

  /// Specifies the name of the job queue.
  final pulumi.Input<String>? name;

  /// The priority of the job queue. Job queues with a higher priority
  /// are evaluated first when associated with the same compute environment.
  final pulumi.Input<int> priority;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ARN of the fair share scheduling policy. If this parameter is specified, the job queue uses a fair share scheduling policy. If this parameter isn't specified, the job queue uses a first in, first out (FIFO) scheduling policy. After a job queue is created, you can replace but can't remove the fair share scheduling policy.
  final pulumi.Input<String>? schedulingPolicyArn;

  /// The state of the job queue. Must be one of: `ENABLED` or `DISABLED`
  final pulumi.Input<String> state;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<JobQueueTimeouts>? timeouts;

  JobQueueArgs({
    this.computeEnvironmentOrders,
    this.jobStateTimeLimitActions,
    this.name,
    required this.priority,
    this.region,
    this.schedulingPolicyArn,
    required this.state,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final computeEnvironmentOrdersValue = computeEnvironmentOrders;
    if (computeEnvironmentOrdersValue != null) {
      map['computeEnvironmentOrders'] = pulumi.Input.mapOptionalInputValue<
              List<JobQueueComputeEnvironmentOrder>,
              List<Map<String, dynamic>>>(
          computeEnvironmentOrdersValue,
          (value) => pulumi.Input.encodeList<JobQueueComputeEnvironmentOrder,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final jobStateTimeLimitActionsValue = jobStateTimeLimitActions;
    if (jobStateTimeLimitActionsValue != null) {
      map['jobStateTimeLimitActions'] = pulumi.Input.mapOptionalInputValue<
              List<JobQueueJobStateTimeLimitAction>,
              List<Map<String, dynamic>>>(
          jobStateTimeLimitActionsValue,
          (value) => pulumi.Input.encodeList<JobQueueJobStateTimeLimitAction,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['priority'] = priority;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final schedulingPolicyArnValue = schedulingPolicyArn;
    if (schedulingPolicyArnValue != null) {
      map['schedulingPolicyArn'] = schedulingPolicyArnValue;
    }
    map['state'] = state;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<JobQueueTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory JobQueueArgs.fromMap(Map<String, dynamic> map) {
    return JobQueueArgs(
      computeEnvironmentOrders:
          pulumi.Input.asOptionalInput<List<JobQueueComputeEnvironmentOrder>>(
              map['computeEnvironmentOrders']),
      jobStateTimeLimitActions:
          pulumi.Input.asOptionalInput<List<JobQueueJobStateTimeLimitAction>>(
              map['jobStateTimeLimitActions']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      priority: pulumi.Input.asInput<int>(map['priority']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      schedulingPolicyArn:
          pulumi.Input.asOptionalInput<String>(map['schedulingPolicyArn']),
      state: pulumi.Input.asInput<String>(map['state']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: pulumi.Input.asOptionalInput<JobQueueTimeouts>(map['timeouts']),
    );
  }
}
