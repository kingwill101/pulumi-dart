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
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
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
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  JobQueueState({
    pulumi.Output<String>? arn,
    pulumi.Output<List<JobQueueComputeEnvironmentOrder>>? computeEnvironmentOrders,
    pulumi.Output<List<JobQueueJobStateTimeLimitAction>>? jobStateTimeLimitActions,
    pulumi.Output<String>? name,
    pulumi.Output<int>? priority,
    pulumi.Output<String>? region,
    pulumi.Output<String>? schedulingPolicyArn,
    pulumi.Output<String>? state,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<JobQueueTimeouts>? timeouts,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      computeEnvironmentOrders = pulumi.Input.asOptionalInput<List<JobQueueComputeEnvironmentOrder>>(computeEnvironmentOrders),
      jobStateTimeLimitActions = pulumi.Input.asOptionalInput<List<JobQueueJobStateTimeLimitAction>>(jobStateTimeLimitActions),
      name = pulumi.Input.asOptionalInput<String>(name),
      priority = pulumi.Input.asOptionalInput<int>(priority),
      region = pulumi.Input.asOptionalInput<String>(region),
      schedulingPolicyArn = pulumi.Input.asOptionalInput<String>(schedulingPolicyArn),
      state = pulumi.Input.asOptionalInput<String>(state),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<JobQueueTimeouts>(timeouts);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      computeEnvironmentOrders: map['computeEnvironmentOrders'] == null ? null : pulumi.Output.create<List<JobQueueComputeEnvironmentOrder>>(pulumi.Input.decodeList<JobQueueComputeEnvironmentOrder>(map['computeEnvironmentOrders'], (value) => JobQueueComputeEnvironmentOrder.fromMap((value as Map).cast<String, dynamic>()))),
      jobStateTimeLimitActions: map['jobStateTimeLimitActions'] == null ? null : pulumi.Output.create<List<JobQueueJobStateTimeLimitAction>>(pulumi.Input.decodeList<JobQueueJobStateTimeLimitAction>(map['jobStateTimeLimitActions'], (value) => JobQueueJobStateTimeLimitAction.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      priority: map['priority'] == null ? null : pulumi.Output.create<int>(map['priority'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      schedulingPolicyArn: map['schedulingPolicyArn'] == null ? null : pulumi.Output.create<String>(map['schedulingPolicyArn'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<JobQueueTimeouts>(JobQueueTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

