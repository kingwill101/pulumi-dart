// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_queue_compute_environment_order.dart';
import 'get_job_queue_job_state_time_limit_action.dart';

/// Result data returned by getJobQueue.
class GetJobQueueResult {
  /// ARN of the job queue.
  final String? arn;
  /// The compute environments that are attached to the job queue and the order in
  /// which job placement is preferred. Compute environments are selected for job placement in ascending order.
  /// * `compute_environment_order.#.order` - The order of the compute environment.
  /// * `compute_environment_order.#.compute_environment` - The ARN of the compute environment.
  final List<GetJobQueueComputeEnvironmentOrder>? computeEnvironmentOrders;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Specifies an action that AWS Batch will take after the job has remained at the head of the queue in the specified state for longer than the specified time.
  /// * `job_state_time_limit_action.#.action` - The action to take when a job is at the head of the job queue in the specified state for the specified period of time.
  /// * `job_state_time_limit_action.#.max_time_seconds` - The approximate amount of time, in seconds, that must pass with the job in the specified state before the action is taken.
  /// * `job_state_time_limit_action.#.reason` - The reason to log for the action being taken.
  /// * `job_state_time_limit_action.#.state` - The state of the job needed to trigger the action.
  final List<GetJobQueueJobStateTimeLimitAction>? jobStateTimeLimitActions;
  final String? name;
  /// Priority of the job queue. Job queues with a higher priority are evaluated first when
  /// associated with the same compute environment.
  final int? priority;
  final String? region;
  /// The ARN of the fair share scheduling policy. If this attribute has a value, the job queue uses a fair share scheduling policy. If this attribute does not have a value, the job queue uses a first in, first out (FIFO) scheduling policy.
  final String? schedulingPolicyArn;
  /// Describes the ability of the queue to accept new jobs (for example, `ENABLED` or `DISABLED`).
  final String? state;
  /// Current status of the job queue (for example, `CREATING` or `VALID`).
  final String? status;
  /// Short, human-readable string to provide additional details about the current status
  /// of the job queue.
  final String? statusReason;
  /// Key-value map of resource tags
  final Map<String, String>? tags;

  /// Creates a new [GetJobQueueResult].
  /// [arn] ARN of the job queue.
  /// [computeEnvironmentOrders] The compute environments that are attached to the job queue and the order in
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [jobStateTimeLimitActions] Specifies an action that AWS Batch will take after the job has remained at the head of the queue in the specified state for longer than the specified time.
  /// [name] Optional.
  /// [priority] Priority of the job queue. Job queues with a higher priority are evaluated first when
  /// [region] Optional.
  /// [schedulingPolicyArn] The ARN of the fair share scheduling policy. If this attribute has a value, the job queue uses a fair share scheduling policy. If this attribute does not have a value, the job queue uses a first in, first out (FIFO) scheduling policy.
  /// [state] Describes the ability of the queue to accept new jobs (for example, `ENABLED` or `DISABLED`).
  /// [status] Current status of the job queue (for example, `CREATING` or `VALID`).
  /// [statusReason] Short, human-readable string to provide additional details about the current status
  /// [tags] Key-value map of resource tags
  const GetJobQueueResult({
    this.arn,
    this.computeEnvironmentOrders,
    this.id,
    this.jobStateTimeLimitActions,
    this.name,
    this.priority,
    this.region,
    this.schedulingPolicyArn,
    this.state,
    this.status,
    this.statusReason,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'computeEnvironmentOrders': ?(() { final guardedValue = computeEnvironmentOrders; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetJobQueueComputeEnvironmentOrder, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'jobStateTimeLimitActions': ?(() { final guardedValue = jobStateTimeLimitActions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetJobQueueJobStateTimeLimitAction, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'priority': ?priority,
      'region': ?region,
      'schedulingPolicyArn': ?schedulingPolicyArn,
      'state': ?state,
      'status': ?status,
      'statusReason': ?statusReason,
      'tags': ?tags,
    };
  }

  factory GetJobQueueResult.fromMap(Map<String, dynamic> map) {
    return GetJobQueueResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      computeEnvironmentOrders: (() { final guardedValue = map['computeEnvironmentOrders']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetJobQueueComputeEnvironmentOrder>(guardedValue, (value) => GetJobQueueComputeEnvironmentOrder.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      jobStateTimeLimitActions: (() { final guardedValue = map['jobStateTimeLimitActions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetJobQueueJobStateTimeLimitAction>(guardedValue, (value) => GetJobQueueJobStateTimeLimitAction.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      schedulingPolicyArn: (() { final guardedValue = map['schedulingPolicyArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statusReason: (() { final guardedValue = map['statusReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
