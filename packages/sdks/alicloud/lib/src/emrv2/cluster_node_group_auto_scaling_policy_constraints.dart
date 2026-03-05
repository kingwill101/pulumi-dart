// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodeGroupAutoScalingPolicyConstraints {
  /// The maximum capacity of constraints for emr node group auto scaling policy.
  final pulumi.Input<int>? maxCapacity;
  /// The minimum capacity of constraints for emr node group auto scaling policy.
  final pulumi.Input<int>? minCapacity;

  /// Creates a new [ClusterNodeGroupAutoScalingPolicyConstraints].
  /// [maxCapacity] The maximum capacity of constraints for emr node group auto scaling policy.
  /// [minCapacity] The minimum capacity of constraints for emr node group auto scaling policy.
  ClusterNodeGroupAutoScalingPolicyConstraints({
    this.maxCapacity,
    this.minCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxCapacity': ?maxCapacity,
      'minCapacity': ?minCapacity,
    };
  }

  factory ClusterNodeGroupAutoScalingPolicyConstraints.fromMap(Map<String, dynamic> map) {
    return ClusterNodeGroupAutoScalingPolicyConstraints(
      maxCapacity: (() { final guardedValue = map['maxCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minCapacity: (() { final guardedValue = map['minCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

