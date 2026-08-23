// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_task_instance_pool.dart';
import 'capacity_task_instances_to_exclude.dart';
import 'capacity_task_timeouts.dart';

/// Input properties used for looking up and filtering CapacityTask resources.
class CapacityTaskState {
  /// ID of a specific Outposts asset (hardware server) to target for the capacity task. If omitted, AWS selects an appropriate asset automatically. Discover valid asset IDs with the `aws.outposts.getAssets` data source. Changing this value forces a new resource.
  final pulumi.Input<String>? assetId;
  /// ID assigned by AWS to the capacity task (for example, `cap-1a2b3c4d5e6f7g8h9`).
  final pulumi.Input<String>? capacityTaskId;
  /// RFC 3339 timestamp at which the capacity task reached a terminal state (if any).
  final pulumi.Input<String>? completionDate;
  /// RFC 3339 timestamp at which the capacity task was created.
  final pulumi.Input<String>? creationDate;
  /// Human-readable reason reported by AWS when the capacity task failed. `null` unless the terminal state is `FAILED`.
  final pulumi.Input<String>? failureReason;
  /// One or more `instancePool` blocks defining the desired instance-type layout for the Outpost. See below. At least one block is required. Changing any value forces a new resource.
  final pulumi.Input<List<CapacityTaskInstancePool>>? instancePools;
  /// Single `instancesToExclude` block specifying user-owned running instances that must not be stopped to free up capacity. See below. Note: AWS does not return this value via the Get/Describe API; after import, you must add the block back to your configuration manually — see Import.
  final pulumi.Input<CapacityTaskInstancesToExclude>? instancesToExclude;
  /// ID of the Amazon Web Services Outposts order associated with the capacity task. Changing this value forces a new resource.
  final pulumi.Input<String>? orderId;
  /// ID or ARN of the Outpost on which to run the capacity task. Both forms are accepted; the provider normalizes the value internally. Changing this value forces a new resource.
  final pulumi.Input<String>? outpostIdentifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Current status of the capacity task. One of `REQUESTED`, `IN_PROGRESS`, `WAITING_FOR_EVACUATION`, `CANCELLATION_IN_PROGRESS`, `COMPLETED`, `CANCELLED`, or `FAILED`. See the [AWS documentation](https://docs.aws.amazon.com/outposts/latest/APIReference/API_GetCapacityTask.html) for semantics.
  final pulumi.Input<String>? status;
  /// Action to take if running instances block the capacity task. Valid values are `WAIT_FOR_EVACUATION` and `FAIL_TASK`. Changing this value forces a new resource.
  final pulumi.Input<String>? taskActionOnBlockingInstances;
  /// Configuration block with timeouts. See below.
  final pulumi.Input<CapacityTaskTimeouts>? timeouts;

  /// Creates a new [CapacityTaskState].
  /// [assetId] ID of a specific Outposts asset (hardware server) to target for the capacity task. If omitted, AWS selects an appropriate asset automatically. Discover valid asset IDs with the `aws.outposts.getAssets` data source. Changing this value forces a new resource.
  /// [capacityTaskId] ID assigned by AWS to the capacity task (for example, `cap-1a2b3c4d5e6f7g8h9`).
  /// [completionDate] RFC 3339 timestamp at which the capacity task reached a terminal state (if any).
  /// [creationDate] RFC 3339 timestamp at which the capacity task was created.
  /// [failureReason] Human-readable reason reported by AWS when the capacity task failed. `null` unless the terminal state is `FAILED`.
  /// [instancePools] One or more `instancePool` blocks defining the desired instance-type layout for the Outpost. See below. At least one block is required. Changing any value forces a new resource.
  /// [instancesToExclude] Single `instancesToExclude` block specifying user-owned running instances that must not be stopped to free up capacity. See below. Note: AWS does not return this value via the Get/Describe API; after import, you must add the block back to your configuration manually — see Import.
  /// [orderId] ID of the Amazon Web Services Outposts order associated with the capacity task. Changing this value forces a new resource.
  /// [outpostIdentifier] ID or ARN of the Outpost on which to run the capacity task. Both forms are accepted; the provider normalizes the value internally. Changing this value forces a new resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Current status of the capacity task. One of `REQUESTED`, `IN_PROGRESS`, `WAITING_FOR_EVACUATION`, `CANCELLATION_IN_PROGRESS`, `COMPLETED`, `CANCELLED`, or `FAILED`. See the [AWS documentation](https://docs.aws.amazon.com/outposts/latest/APIReference/API_GetCapacityTask.html) for semantics.
  /// [taskActionOnBlockingInstances] Action to take if running instances block the capacity task. Valid values are `WAIT_FOR_EVACUATION` and `FAIL_TASK`. Changing this value forces a new resource.
  /// [timeouts] Configuration block with timeouts. See below.
  const CapacityTaskState({
    this.assetId,
    this.capacityTaskId,
    this.completionDate,
    this.creationDate,
    this.failureReason,
    this.instancePools,
    this.instancesToExclude,
    this.orderId,
    this.outpostIdentifier,
    this.region,
    this.status,
    this.taskActionOnBlockingInstances,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetId': ?assetId,
      'capacityTaskId': ?capacityTaskId,
      'completionDate': ?completionDate,
      'creationDate': ?creationDate,
      'failureReason': ?failureReason,
      'instancePools': ?pulumi.Input.mapOptionalInputValue<List<CapacityTaskInstancePool>, List<Map<String, dynamic>>>(instancePools, (value) => pulumi.Input.encodeList<CapacityTaskInstancePool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instancesToExclude': ?pulumi.Input.mapOptionalInputValue<CapacityTaskInstancesToExclude, Map<String, dynamic>>(instancesToExclude, (value) => value.toMap()),
      'orderId': ?orderId,
      'outpostIdentifier': ?outpostIdentifier,
      'region': ?region,
      'status': ?status,
      'taskActionOnBlockingInstances': ?taskActionOnBlockingInstances,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<CapacityTaskTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory CapacityTaskState.fromMap(Map<String, dynamic> map) {
    return CapacityTaskState(
      assetId: (() { final guardedValue = map['assetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      capacityTaskId: (() { final guardedValue = map['capacityTaskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      completionDate: (() { final guardedValue = map['completionDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creationDate: (() { final guardedValue = map['creationDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      failureReason: (() { final guardedValue = map['failureReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instancePools: (() { final guardedValue = map['instancePools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CapacityTaskInstancePool>(guardedValue, (value) => CapacityTaskInstancePool.fromMap((value as Map).cast<String, dynamic>()))); })(),
      instancesToExclude: (() { final guardedValue = map['instancesToExclude']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CapacityTaskInstancesToExclude.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      orderId: (() { final guardedValue = map['orderId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outpostIdentifier: (() { final guardedValue = map['outpostIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskActionOnBlockingInstances: (() { final guardedValue = map['taskActionOnBlockingInstances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CapacityTaskTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
