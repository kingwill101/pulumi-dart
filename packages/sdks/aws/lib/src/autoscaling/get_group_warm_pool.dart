// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_warm_pool_instance_reuse_policy.dart';

class GetGroupWarmPool {
  /// List of instance reuse policy objects.
  final pulumi.Input<List<GetGroupWarmPoolInstanceReusePolicy>> instanceReusePolicies;
  /// Total maximum number of instances that are allowed to be in the warm pool or in any state except Terminated for the Auto Scaling group.
  final pulumi.Input<int> maxGroupPreparedCapacity;
  /// Minimum number of instances to maintain in the warm pool.
  final pulumi.Input<int> minSize;
  /// Instance state to transition to after the lifecycle actions are complete.
  final pulumi.Input<String> poolState;

  /// Creates a new [GetGroupWarmPool].
  /// [instanceReusePolicies] List of instance reuse policy objects.
  /// [maxGroupPreparedCapacity] Total maximum number of instances that are allowed to be in the warm pool or in any state except Terminated for the Auto Scaling group.
  /// [minSize] Minimum number of instances to maintain in the warm pool.
  /// [poolState] Instance state to transition to after the lifecycle actions are complete.
  const GetGroupWarmPool({
    required this.instanceReusePolicies,
    required this.maxGroupPreparedCapacity,
    required this.minSize,
    required this.poolState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceReusePolicies': pulumi.Input.mapInputValue<List<GetGroupWarmPoolInstanceReusePolicy>, List<Map<String, dynamic>>>(instanceReusePolicies, (value) => pulumi.Input.encodeList<GetGroupWarmPoolInstanceReusePolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxGroupPreparedCapacity': maxGroupPreparedCapacity,
      'minSize': minSize,
      'poolState': poolState,
    };
  }

  factory GetGroupWarmPool.fromMap(Map<String, dynamic> map) {
    return GetGroupWarmPool(
      instanceReusePolicies: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGroupWarmPoolInstanceReusePolicy>(map['instanceReusePolicies']!, (value) => GetGroupWarmPoolInstanceReusePolicy.fromMap((value as Map).cast<String, dynamic>()))),
      maxGroupPreparedCapacity: pulumi.Input.fromValue(map['maxGroupPreparedCapacity'] as int),
      minSize: pulumi.Input.fromValue(map['minSize'] as int),
      poolState: pulumi.Input.fromValue(map['poolState'] as String),
    );
  }
}
