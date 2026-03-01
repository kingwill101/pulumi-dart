// ignore_for_file: unused_element, unnecessary_cast


class ClusterNodeGroupAutoScalingPolicyConstraints {
  /// The maximum capacity of constraints for emr node group auto scaling policy.
  final int? maxCapacity;
  /// The minimum capacity of constraints for emr node group auto scaling policy.
  final int? minCapacity;

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
      maxCapacity: map['maxCapacity'] == null ? null : map['maxCapacity'] as int,
      minCapacity: map['minCapacity'] == null ? null : map['minCapacity'] as int,
    );
  }
}

