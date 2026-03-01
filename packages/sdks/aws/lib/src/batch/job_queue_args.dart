// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_queue_compute_environment_order.dart';
import 'job_queue_job_state_time_limit_action.dart';
import 'job_queue_timeouts.dart';

/// {@template pulumi_batch_job_queue_job_queue_args_doc}
/// The set of arguments for JobQueue.
/// {@endtemplate}
/// {@macro pulumi_batch_job_queue_job_queue_args_doc}
class JobQueueArgs {
  /// The set of compute environments mapped to a job queue and their order relative to each other. The job scheduler uses this parameter to determine which compute environment runs a specific job. Compute environments must be in the VALID state before you can associate them with a job queue. You can associate up to three compute environments with a job queue.
  final pulumi.Input<List<JobQueueComputeEnvironmentOrder>>? computeEnvironmentOrders;
  /// The set of job state time limit actions mapped to a job queue. Specifies an action that AWS Batch will take after the job has remained at the head of the queue in the specified state for longer than the specified time.
  final pulumi.Input<List<JobQueueJobStateTimeLimitAction>>? jobStateTimeLimitActions;
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

  /// Creates a new [JobQueueArgs].
  /// [computeEnvironmentOrders] The set of compute environments mapped to a job queue and their order relative to each other. The job scheduler uses this parameter to determine which compute environment runs a specific job. Compute environments must be in the VALID state before you can associate them with a job queue. You can associate up to three compute environments with a job queue.
  /// [jobStateTimeLimitActions] The set of job state time limit actions mapped to a job queue. Specifies an action that AWS Batch will take after the job has remained at the head of the queue in the specified state for longer than the specified time.
  /// [name] Specifies the name of the job queue.
  /// [priority] The priority of the job queue. Job queues with a higher priority
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [schedulingPolicyArn] The ARN of the fair share scheduling policy. If this parameter is specified, the job queue uses a fair share scheduling policy. If this parameter isn't specified, the job queue uses a first in, first out (FIFO) scheduling policy. After a job queue is created, you can replace but can't remove the fair share scheduling policy.
  /// [state] The state of the job queue. Must be one of: `ENABLED` or `DISABLED`
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  JobQueueArgs({
    pulumi.Output<List<JobQueueComputeEnvironmentOrder>>? computeEnvironmentOrders,
    pulumi.Output<List<JobQueueJobStateTimeLimitAction>>? jobStateTimeLimitActions,
    pulumi.Output<String>? name,
    required pulumi.Output<int> priority,
    pulumi.Output<String>? region,
    pulumi.Output<String>? schedulingPolicyArn,
    required pulumi.Output<String> state,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<JobQueueTimeouts>? timeouts,
  }) :
      computeEnvironmentOrders = pulumi.Input.asOptionalInput<List<JobQueueComputeEnvironmentOrder>>(computeEnvironmentOrders),
      jobStateTimeLimitActions = pulumi.Input.asOptionalInput<List<JobQueueJobStateTimeLimitAction>>(jobStateTimeLimitActions),
      name = pulumi.Input.asOptionalInput<String>(name),
      priority = pulumi.Input.asInput<int>(priority),
      region = pulumi.Input.asOptionalInput<String>(region),
      schedulingPolicyArn = pulumi.Input.asOptionalInput<String>(schedulingPolicyArn),
      state = pulumi.Input.asInput<String>(state),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeouts = pulumi.Input.asOptionalInput<JobQueueTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeEnvironmentOrders': ?pulumi.Input.mapOptionalInputValue<List<JobQueueComputeEnvironmentOrder>, List<Map<String, dynamic>>>(computeEnvironmentOrders, (value) => pulumi.Input.encodeList<JobQueueComputeEnvironmentOrder, Map<String, dynamic>>(value, (value) => value.toMap())),
      'jobStateTimeLimitActions': ?pulumi.Input.mapOptionalInputValue<List<JobQueueJobStateTimeLimitAction>, List<Map<String, dynamic>>>(jobStateTimeLimitActions, (value) => pulumi.Input.encodeList<JobQueueJobStateTimeLimitAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'priority': priority,
      'region': ?region,
      'schedulingPolicyArn': ?schedulingPolicyArn,
      'state': state,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<JobQueueTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory JobQueueArgs.fromMap(Map<String, dynamic> map) {
    return JobQueueArgs(
      computeEnvironmentOrders: map['computeEnvironmentOrders'] == null ? null : pulumi.Output.create<List<JobQueueComputeEnvironmentOrder>>(pulumi.Input.decodeList<JobQueueComputeEnvironmentOrder>(map['computeEnvironmentOrders'], (value) => JobQueueComputeEnvironmentOrder.fromMap((value as Map).cast<String, dynamic>()))),
      jobStateTimeLimitActions: map['jobStateTimeLimitActions'] == null ? null : pulumi.Output.create<List<JobQueueJobStateTimeLimitAction>>(pulumi.Input.decodeList<JobQueueJobStateTimeLimitAction>(map['jobStateTimeLimitActions'], (value) => JobQueueJobStateTimeLimitAction.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      priority: pulumi.Output.create<int>(map['priority'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      schedulingPolicyArn: map['schedulingPolicyArn'] == null ? null : pulumi.Output.create<String>(map['schedulingPolicyArn'] as String),
      state: pulumi.Output.create<String>(map['state'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<JobQueueTimeouts>(JobQueueTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

