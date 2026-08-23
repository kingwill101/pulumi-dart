// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_task_instance_pool.dart';
import 'capacity_task_instances_to_exclude.dart';
import 'capacity_task_timeouts.dart';

/// {@template pulumi_outposts_capacity_task_capacity_task_args_doc}
/// The set of arguments for CapacityTask.
/// {@endtemplate}
/// {@macro pulumi_outposts_capacity_task_capacity_task_args_doc}
class CapacityTaskArgs {
  /// ID of a specific Outposts asset (hardware server) to target for the capacity task. If omitted, AWS selects an appropriate asset automatically. Discover valid asset IDs with the `aws.outposts.getAssets` data source. Changing this value forces a new resource.
  final pulumi.Input<String>? assetId;
  /// One or more `instancePool` blocks defining the desired instance-type layout for the Outpost. See below. At least one block is required. Changing any value forces a new resource.
  final pulumi.Input<List<CapacityTaskInstancePool>>? instancePools;
  /// Single `instancesToExclude` block specifying user-owned running instances that must not be stopped to free up capacity. See below. Note: AWS does not return this value via the Get/Describe API; after import, you must add the block back to your configuration manually — see Import.
  final pulumi.Input<CapacityTaskInstancesToExclude>? instancesToExclude;
  /// ID of the Amazon Web Services Outposts order associated with the capacity task. Changing this value forces a new resource.
  final pulumi.Input<String>? orderId;
  /// ID or ARN of the Outpost on which to run the capacity task. Both forms are accepted; the provider normalizes the value internally. Changing this value forces a new resource.
  final pulumi.Input<String> outpostIdentifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Action to take if running instances block the capacity task. Valid values are `WAIT_FOR_EVACUATION` and `FAIL_TASK`. Changing this value forces a new resource.
  final pulumi.Input<String>? taskActionOnBlockingInstances;
  /// Configuration block with timeouts. See below.
  final pulumi.Input<CapacityTaskTimeouts>? timeouts;

  /// Creates a new [CapacityTaskArgs].
  /// [assetId] ID of a specific Outposts asset (hardware server) to target for the capacity task. If omitted, AWS selects an appropriate asset automatically. Discover valid asset IDs with the `aws.outposts.getAssets` data source. Changing this value forces a new resource.
  /// [instancePools] One or more `instancePool` blocks defining the desired instance-type layout for the Outpost. See below. At least one block is required. Changing any value forces a new resource.
  /// [instancesToExclude] Single `instancesToExclude` block specifying user-owned running instances that must not be stopped to free up capacity. See below. Note: AWS does not return this value via the Get/Describe API; after import, you must add the block back to your configuration manually — see Import.
  /// [orderId] ID of the Amazon Web Services Outposts order associated with the capacity task. Changing this value forces a new resource.
  /// [outpostIdentifier] ID or ARN of the Outpost on which to run the capacity task. Both forms are accepted; the provider normalizes the value internally. Changing this value forces a new resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [taskActionOnBlockingInstances] Action to take if running instances block the capacity task. Valid values are `WAIT_FOR_EVACUATION` and `FAIL_TASK`. Changing this value forces a new resource.
  /// [timeouts] Configuration block with timeouts. See below.
  const CapacityTaskArgs({
    this.assetId,
    this.instancePools,
    this.instancesToExclude,
    this.orderId,
    required this.outpostIdentifier,
    this.region,
    this.taskActionOnBlockingInstances,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetId': ?assetId,
      'instancePools': ?pulumi.Input.mapOptionalInputValue<List<CapacityTaskInstancePool>, List<Map<String, dynamic>>>(instancePools, (value) => pulumi.Input.encodeList<CapacityTaskInstancePool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instancesToExclude': ?pulumi.Input.mapOptionalInputValue<CapacityTaskInstancesToExclude, Map<String, dynamic>>(instancesToExclude, (value) => value.toMap()),
      'orderId': ?orderId,
      'outpostIdentifier': outpostIdentifier,
      'region': ?region,
      'taskActionOnBlockingInstances': ?taskActionOnBlockingInstances,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<CapacityTaskTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory CapacityTaskArgs.fromMap(Map<String, dynamic> map) {
    return CapacityTaskArgs(
      assetId: (() { final guardedValue = map['assetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instancePools: (() { final guardedValue = map['instancePools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CapacityTaskInstancePool>(guardedValue, (value) => CapacityTaskInstancePool.fromMap((value as Map).cast<String, dynamic>()))); })(),
      instancesToExclude: (() { final guardedValue = map['instancesToExclude']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CapacityTaskInstancesToExclude.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      orderId: (() { final guardedValue = map['orderId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outpostIdentifier: pulumi.Input.fromValue(map['outpostIdentifier'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskActionOnBlockingInstances: (() { final guardedValue = map['taskActionOnBlockingInstances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CapacityTaskTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
