// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_warm_pool_instance_reuse_policy.dart';

class GroupWarmPool {
  /// Whether instances in the Auto Scaling group can be returned to the warm pool on scale in. The default is to terminate instances in the Auto Scaling group when the group scales in.
  final pulumi.Input<GroupWarmPoolInstanceReusePolicy>? instanceReusePolicy;
  /// Total maximum number of instances that are allowed to be in the warm pool or in any state except Terminated for the Auto Scaling group.
  final pulumi.Input<int>? maxGroupPreparedCapacity;
  /// Minimum number of instances to maintain in the warm pool. This helps you to ensure that there is always a certain number of warmed instances available to handle traffic spikes. Defaults to 0 if not specified.
  final pulumi.Input<int>? minSize;
  /// Sets the instance state to transition to after the lifecycle hooks finish. Valid values are: Stopped (default), Running or Hibernated.
  final pulumi.Input<String>? poolState;

  /// Creates a new [GroupWarmPool].
  /// [instanceReusePolicy] Whether instances in the Auto Scaling group can be returned to the warm pool on scale in. The default is to terminate instances in the Auto Scaling group when the group scales in.
  /// [maxGroupPreparedCapacity] Total maximum number of instances that are allowed to be in the warm pool or in any state except Terminated for the Auto Scaling group.
  /// [minSize] Minimum number of instances to maintain in the warm pool. This helps you to ensure that there is always a certain number of warmed instances available to handle traffic spikes. Defaults to 0 if not specified.
  /// [poolState] Sets the instance state to transition to after the lifecycle hooks finish. Valid values are: Stopped (default), Running or Hibernated.
  const GroupWarmPool({
    this.instanceReusePolicy,
    this.maxGroupPreparedCapacity,
    this.minSize,
    this.poolState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceReusePolicy': ?pulumi.Input.mapOptionalInputValue<GroupWarmPoolInstanceReusePolicy, Map<String, dynamic>>(instanceReusePolicy, (value) => value.toMap()),
      'maxGroupPreparedCapacity': ?maxGroupPreparedCapacity,
      'minSize': ?minSize,
      'poolState': ?poolState,
    };
  }

  factory GroupWarmPool.fromMap(Map<String, dynamic> map) {
    return GroupWarmPool(
      instanceReusePolicy: (() { final guardedValue = map['instanceReusePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupWarmPoolInstanceReusePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxGroupPreparedCapacity: (() { final guardedValue = map['maxGroupPreparedCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minSize: (() { final guardedValue = map['minSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      poolState: (() { final guardedValue = map['poolState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
