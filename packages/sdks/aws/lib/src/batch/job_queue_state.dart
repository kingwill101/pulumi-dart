// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_queue_compute_environment_order.dart';
import 'job_queue_job_state_time_limit_action.dart';
import 'job_queue_timeouts.dart';

/// Input properties used for looking up and filtering JobQueue resources.
class JobQueueState {
  /// The Amazon Resource Name of the job queue.
  final pulumi.Input<String>? arn;
  /// The set of compute environments mapped to a job queue and their order relative to each other. The job scheduler uses this parameter to determine which compute environment runs a specific job. Compute environments must be in the VALID state before you can associate them with a job queue. You can associate up to three compute environments with a job queue.
  final pulumi.Input<List<JobQueueComputeEnvironmentOrder>>? computeEnvironmentOrders;
  /// The set of job state time limit actions mapped to a job queue. Specifies an action that AWS Batch will take after the job has remained at the head of the queue in the specified state for longer than the specified time.
  final pulumi.Input<List<JobQueueJobStateTimeLimitAction>>? jobStateTimeLimitActions;
  /// Specifies the name of the job queue.
  final pulumi.Input<String>? name;
  /// The priority of the job queue. Job queues with a higher priority
  /// are evaluated first when associated with the same compute environment.
  final pulumi.Input<int>? priority;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ARN of the fair share scheduling policy. If this parameter is specified, the job queue uses a fair share scheduling policy. If this parameter isn't specified, the job queue uses a first in, first out (FIFO) scheduling policy. After a job queue is created, you can replace but can't remove the fair share scheduling policy.
  final pulumi.Input<String>? schedulingPolicyArn;
  /// The state of the job queue. Must be one of: `ENABLED` or `DISABLED`
  final pulumi.Input<String>? state;
  /// Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<JobQueueTimeouts>? timeouts;

  /// Creates a new [JobQueueState].
  /// [arn] The Amazon Resource Name of the job queue.
  /// [computeEnvironmentOrders] The set of compute environments mapped to a job queue and their order relative to each other. The job scheduler uses this parameter to determine which compute environment runs a specific job. Compute environments must be in the VALID state before you can associate them with a job queue. You can associate up to three compute environments with a job queue.
  /// [jobStateTimeLimitActions] The set of job state time limit actions mapped to a job queue. Specifies an action that AWS Batch will take after the job has remained at the head of the queue in the specified state for longer than the specified time.
  /// [name] Specifies the name of the job queue.
  /// [priority] The priority of the job queue. Job queues with a higher priority
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [schedulingPolicyArn] The ARN of the fair share scheduling policy. If this parameter is specified, the job queue uses a fair share scheduling policy. If this parameter isn't specified, the job queue uses a first in, first out (FIFO) scheduling policy. After a job queue is created, you can replace but can't remove the fair share scheduling policy.
  /// [state] The state of the job queue. Must be one of: `ENABLED` or `DISABLED`
  /// [tags] Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  const JobQueueState({
    this.arn,
    this.computeEnvironmentOrders,
    this.jobStateTimeLimitActions,
    this.name,
    this.priority,
    this.region,
    this.schedulingPolicyArn,
    this.state,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'computeEnvironmentOrders': ?pulumi.Input.mapOptionalInputValue<List<JobQueueComputeEnvironmentOrder>, List<Map<String, dynamic>>>(computeEnvironmentOrders, (value) => pulumi.Input.encodeList<JobQueueComputeEnvironmentOrder, Map<String, dynamic>>(value, (value) => value.toMap())),
      'jobStateTimeLimitActions': ?pulumi.Input.mapOptionalInputValue<List<JobQueueJobStateTimeLimitAction>, List<Map<String, dynamic>>>(jobStateTimeLimitActions, (value) => pulumi.Input.encodeList<JobQueueJobStateTimeLimitAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'priority': ?priority,
      'region': ?region,
      'schedulingPolicyArn': ?schedulingPolicyArn,
      'state': ?state,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<JobQueueTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory JobQueueState.fromMap(Map<String, dynamic> map) {
    return JobQueueState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      computeEnvironmentOrders: (() { final guardedValue = map['computeEnvironmentOrders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<JobQueueComputeEnvironmentOrder>(guardedValue, (value) => JobQueueComputeEnvironmentOrder.fromMap((value as Map).cast<String, dynamic>()))); })(),
      jobStateTimeLimitActions: (() { final guardedValue = map['jobStateTimeLimitActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<JobQueueJobStateTimeLimitAction>(guardedValue, (value) => JobQueueJobStateTimeLimitAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schedulingPolicyArn: (() { final guardedValue = map['schedulingPolicyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobQueueTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
