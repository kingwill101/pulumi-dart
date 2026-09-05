// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNodeGroupWarmPoolConfig {
  /// Maximum number of instances allowed to be in the warm pool combined with the Auto Scaling Group.
  final pulumi.Input<int> maxGroupPreparedCapacity;
  /// Minimum number of instances maintained in the warm pool.
  final pulumi.Input<int> minSize;
  /// Instance state that warm pool instances are transitioned to.
  final pulumi.Input<String> poolState;
  /// Whether instances in the Auto Scaling Group are returned to the warm pool on scale in.
  final pulumi.Input<bool> reuseOnScaleIn;

  /// Creates a new [GetNodeGroupWarmPoolConfig].
  /// [maxGroupPreparedCapacity] Maximum number of instances allowed to be in the warm pool combined with the Auto Scaling Group.
  /// [minSize] Minimum number of instances maintained in the warm pool.
  /// [poolState] Instance state that warm pool instances are transitioned to.
  /// [reuseOnScaleIn] Whether instances in the Auto Scaling Group are returned to the warm pool on scale in.
  const GetNodeGroupWarmPoolConfig({
    required this.maxGroupPreparedCapacity,
    required this.minSize,
    required this.poolState,
    required this.reuseOnScaleIn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxGroupPreparedCapacity': maxGroupPreparedCapacity,
      'minSize': minSize,
      'poolState': poolState,
      'reuseOnScaleIn': reuseOnScaleIn,
    };
  }

  factory GetNodeGroupWarmPoolConfig.fromMap(Map<String, dynamic> map) {
    return GetNodeGroupWarmPoolConfig(
      maxGroupPreparedCapacity: pulumi.Input.fromValue((map['maxGroupPreparedCapacity'] as num).toInt()),
      minSize: pulumi.Input.fromValue((map['minSize'] as num).toInt()),
      poolState: pulumi.Input.fromValue(map['poolState'] as String),
      reuseOnScaleIn: pulumi.Input.fromValue(map['reuseOnScaleIn'] as bool),
    );
  }
}
