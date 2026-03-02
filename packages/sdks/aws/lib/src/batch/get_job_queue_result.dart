// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_queue_compute_environment_order.dart';
import 'get_job_queue_job_state_time_limit_action.dart';

/// Result data returned by getJobQueue.
class GetJobQueueResult {
  /// ARN of the job queue.
  final String arn;
  /// The compute environments that are attached to the job queue and the order in
  /// which job placement is preferred. Compute environments are selected for job placement in ascending order.
  /// * `compute_environment_order.#.order` - The order of the compute environment.
  /// * `compute_environment_order.#.compute_environment` - The ARN of the compute environment.
  final List<GetJobQueueComputeEnvironmentOrder> computeEnvironmentOrders;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Specifies an action that AWS Batch will take after the job has remained at the head of the queue in the specified state for longer than the specified time.
  /// * `job_state_time_limit_action.#.action` - The action to take when a job is at the head of the job queue in the specified state for the specified period of time.
  /// * `job_state_time_limit_action.#.max_time_seconds` - The approximate amount of time, in seconds, that must pass with the job in the specified state before the action is taken.
  /// * `job_state_time_limit_action.#.reason` - The reason to log for the action being taken.
  /// * `job_state_time_limit_action.#.state` - The state of the job needed to trigger the action.
  final List<GetJobQueueJobStateTimeLimitAction> jobStateTimeLimitActions;
  final String name;
  /// Priority of the job queue. Job queues with a higher priority are evaluated first when
  /// associated with the same compute environment.
  final int priority;
  final String region;
  /// The ARN of the fair share scheduling policy. If this attribute has a value, the job queue uses a fair share scheduling policy. If this attribute does not have a value, the job queue uses a first in, first out (FIFO) scheduling policy.
  final String schedulingPolicyArn;
  /// Describes the ability of the queue to accept new jobs (for example, `ENABLED` or `DISABLED`).
  final String state;
  /// Current status of the job queue (for example, `CREATING` or `VALID`).
  final String status;
  /// Short, human-readable string to provide additional details about the current status
  /// of the job queue.
  final String statusReason;
  /// Key-value map of resource tags
  final Map<String, String> tags;

  /// Creates a new [GetJobQueueResult].
  /// [arn] ARN of the job queue.
  /// [computeEnvironmentOrders] The compute environments that are attached to the job queue and the order in
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [jobStateTimeLimitActions] Specifies an action that AWS Batch will take after the job has remained at the head of the queue in the specified state for longer than the specified time.
  /// [name] Required.
  /// [priority] Priority of the job queue. Job queues with a higher priority are evaluated first when
  /// [region] Required.
  /// [schedulingPolicyArn] The ARN of the fair share scheduling policy. If this attribute has a value, the job queue uses a fair share scheduling policy. If this attribute does not have a value, the job queue uses a first in, first out (FIFO) scheduling policy.
  /// [state] Describes the ability of the queue to accept new jobs (for example, `ENABLED` or `DISABLED`).
  /// [status] Current status of the job queue (for example, `CREATING` or `VALID`).
  /// [statusReason] Short, human-readable string to provide additional details about the current status
  /// [tags] Key-value map of resource tags
  GetJobQueueResult({
    required this.arn,
    required this.computeEnvironmentOrders,
    required this.id,
    required this.jobStateTimeLimitActions,
    required this.name,
    required this.priority,
    required this.region,
    required this.schedulingPolicyArn,
    required this.state,
    required this.status,
    required this.statusReason,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'computeEnvironmentOrders': pulumi.Input.encodeList<GetJobQueueComputeEnvironmentOrder, Map<String, dynamic>>(computeEnvironmentOrders, (value) => value.toMap()),
      'id': id,
      'jobStateTimeLimitActions': pulumi.Input.encodeList<GetJobQueueJobStateTimeLimitAction, Map<String, dynamic>>(jobStateTimeLimitActions, (value) => value.toMap()),
      'name': name,
      'priority': priority,
      'region': region,
      'schedulingPolicyArn': schedulingPolicyArn,
      'state': state,
      'status': status,
      'statusReason': statusReason,
      'tags': tags,
    };
  }

  factory GetJobQueueResult.fromMap(Map<String, dynamic> map) {
    return GetJobQueueResult(
      arn: map['arn'] as String,
      computeEnvironmentOrders: pulumi.Input.decodeList<GetJobQueueComputeEnvironmentOrder>(map['computeEnvironmentOrders']!, (value) => GetJobQueueComputeEnvironmentOrder.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      jobStateTimeLimitActions: pulumi.Input.decodeList<GetJobQueueJobStateTimeLimitAction>(map['jobStateTimeLimitActions']!, (value) => GetJobQueueJobStateTimeLimitAction.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      priority: map['priority'] as int,
      region: map['region'] as String,
      schedulingPolicyArn: map['schedulingPolicyArn'] as String,
      state: map['state'] as String,
      status: map['status'] as String,
      statusReason: map['statusReason'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

