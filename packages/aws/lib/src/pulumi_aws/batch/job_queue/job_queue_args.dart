// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../job_queue_compute_environment_order/job_queue_compute_environment_order.dart';
import '../job_queue_job_state_time_limit_action/job_queue_job_state_time_limit_action.dart';
import '../job_queue_timeouts/job_queue_timeouts.dart';

/// The set of arguments for JobQueue.
class JobQueueArgs {
  /// The set of compute environments mapped to a job queue and their order relative to each other. The job scheduler uses this parameter to determine which compute environment runs a specific job. Compute environments must be in the VALID state before you can associate them with a job queue. You can associate up to three compute environments with a job queue.
  final Input<List<JobQueueComputeEnvironmentOrder>>? computeEnvironmentOrders;

  /// The set of job state time limit actions mapped to a job queue. Specifies an action that AWS Batch will take after the job has remained at the head of the queue in the specified state for longer than the specified time.
  final Input<List<JobQueueJobStateTimeLimitAction>>? jobStateTimeLimitActions;

  /// Specifies the name of the job queue.
  final Input<String>? name;

  /// The priority of the job queue. Job queues with a higher priority
  /// are evaluated first when associated with the same compute environment.
  final Input<int> priority;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The ARN of the fair share scheduling policy. If this parameter is specified, the job queue uses a fair share scheduling policy. If this parameter isn't specified, the job queue uses a first in, first out (FIFO) scheduling policy. After a job queue is created, you can replace but can't remove the fair share scheduling policy.
  final Input<String>? schedulingPolicyArn;

  /// The state of the job queue. Must be one of: `ENABLED` or `DISABLED`
  final Input<String> state;

  /// Key-value map of resource tags. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<JobQueueTimeouts>? timeouts;

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
      map['computeEnvironmentOrders'] = Input.mapOptionalInputValue<
              List<JobQueueComputeEnvironmentOrder>,
              List<Map<String, dynamic>>>(
          computeEnvironmentOrdersValue,
          (value) => Input.encodeList<JobQueueComputeEnvironmentOrder,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final jobStateTimeLimitActionsValue = jobStateTimeLimitActions;
    if (jobStateTimeLimitActionsValue != null) {
      map['jobStateTimeLimitActions'] = Input.mapOptionalInputValue<
              List<JobQueueJobStateTimeLimitAction>,
              List<Map<String, dynamic>>>(
          jobStateTimeLimitActionsValue,
          (value) => Input.encodeList<JobQueueJobStateTimeLimitAction,
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
      map['timeouts'] =
          Input.mapOptionalInputValue<JobQueueTimeouts, Map<String, dynamic>>(
              timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory JobQueueArgs.fromMap(Map<String, dynamic> map) {
    return JobQueueArgs(
      computeEnvironmentOrders:
          Input.asOptionalInput<List<JobQueueComputeEnvironmentOrder>>(
              map['computeEnvironmentOrders']),
      jobStateTimeLimitActions:
          Input.asOptionalInput<List<JobQueueJobStateTimeLimitAction>>(
              map['jobStateTimeLimitActions']),
      name: Input.asOptionalInput<String>(map['name']),
      priority: Input.asInput<int>(map['priority']),
      region: Input.asOptionalInput<String>(map['region']),
      schedulingPolicyArn:
          Input.asOptionalInput<String>(map['schedulingPolicyArn']),
      state: Input.asInput<String>(map['state']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<JobQueueTimeouts>(map['timeouts']),
    );
  }
}
