// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodeGroupWarmPoolConfig {
  /// Maximum number of instances that are allowed to be in the warm pool combined with the Auto Scaling Group. Use `-1` to specify an unlimited capacity.
  final pulumi.Input<int?>? maxGroupPreparedCapacity;
  /// Minimum number of instances to maintain in the warm pool. Defaults to `0`.
  final pulumi.Input<int?>? minSize;
  /// Instance state to transition warm pool instances to. Valid values: `STOPPED`, `RUNNING`, `HIBERNATED`. Defaults to `STOPPED`.
  final pulumi.Input<String?>? poolState;
  /// Whether to return instances in the Auto Scaling Group to the warm pool on scale in. Not supported on Bottlerocket. Defaults to `false`.
  final pulumi.Input<bool?>? reuseOnScaleIn;

  /// Creates a new [NodeGroupWarmPoolConfig].
  /// [maxGroupPreparedCapacity] Maximum number of instances that are allowed to be in the warm pool combined with the Auto Scaling Group. Use `-1` to specify an unlimited capacity.
  /// [minSize] Minimum number of instances to maintain in the warm pool. Defaults to `0`.
  /// [poolState] Instance state to transition warm pool instances to. Valid values: `STOPPED`, `RUNNING`, `HIBERNATED`. Defaults to `STOPPED`.
  /// [reuseOnScaleIn] Whether to return instances in the Auto Scaling Group to the warm pool on scale in. Not supported on Bottlerocket. Defaults to `false`.
  const NodeGroupWarmPoolConfig({
    this.maxGroupPreparedCapacity,
    this.minSize,
    this.poolState,
    this.reuseOnScaleIn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxGroupPreparedCapacity': ?maxGroupPreparedCapacity,
      'minSize': ?minSize,
      'poolState': ?poolState,
      'reuseOnScaleIn': ?reuseOnScaleIn,
    };
  }

  factory NodeGroupWarmPoolConfig.fromMap(Map<String, dynamic> map) {
    return NodeGroupWarmPoolConfig(
      maxGroupPreparedCapacity: (() { final guardedValue = map['maxGroupPreparedCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      minSize: (() { final guardedValue = map['minSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      poolState: (() { final guardedValue = map['poolState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reuseOnScaleIn: (() { final guardedValue = map['reuseOnScaleIn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
