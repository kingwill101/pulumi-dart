// ignore_for_file: unused_element, unnecessary_cast

import '../group_warm_pool_instance_reuse_policy/group_warm_pool_instance_reuse_policy.dart';

class GroupWarmPool {
  /// Whether instances in the Auto Scaling group can be returned to the warm pool on scale in. The default is to terminate instances in the Auto Scaling group when the group scales in.
  final GroupWarmPoolInstanceReusePolicy? instanceReusePolicy;

  /// Total maximum number of instances that are allowed to be in the warm pool or in any state except Terminated for the Auto Scaling group.
  final int? maxGroupPreparedCapacity;

  /// Minimum number of instances to maintain in the warm pool. This helps you to ensure that there is always a certain number of warmed instances available to handle traffic spikes. Defaults to 0 if not specified.
  final int? minSize;

  /// Sets the instance state to transition to after the lifecycle hooks finish. Valid values are: Stopped (default), Running or Hibernated.
  final String? poolState;

  GroupWarmPool({
    this.instanceReusePolicy,
    this.maxGroupPreparedCapacity,
    this.minSize,
    this.poolState,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final instanceReusePolicyValue = instanceReusePolicy;
    if (instanceReusePolicyValue != null) {
      map['instanceReusePolicy'] = instanceReusePolicyValue.toMap();
    }
    final maxGroupPreparedCapacityValue = maxGroupPreparedCapacity;
    if (maxGroupPreparedCapacityValue != null) {
      map['maxGroupPreparedCapacity'] = maxGroupPreparedCapacityValue;
    }
    final minSizeValue = minSize;
    if (minSizeValue != null) {
      map['minSize'] = minSizeValue;
    }
    final poolStateValue = poolState;
    if (poolStateValue != null) {
      map['poolState'] = poolStateValue;
    }
    return map;
  }

  factory GroupWarmPool.fromMap(Map<String, dynamic> map) {
    return GroupWarmPool(
      instanceReusePolicy: map['instanceReusePolicy'] == null
          ? null
          : GroupWarmPoolInstanceReusePolicy.fromMap(
              (map['instanceReusePolicy'] as Map).cast<String, dynamic>()),
      maxGroupPreparedCapacity: map['maxGroupPreparedCapacity'] == null
          ? null
          : map['maxGroupPreparedCapacity'] as int,
      minSize: map['minSize'] == null ? null : map['minSize'] as int,
      poolState: map['poolState'] == null ? null : map['poolState'] as String,
    );
  }
}
