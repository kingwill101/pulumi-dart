// ignore_for_file: unused_element, unnecessary_cast

class CapacityProviderAutoScalingGroupProviderManagedScaling {
  /// Period of time, in seconds, after a newly launched Amazon EC2 instance can contribute to CloudWatch metrics for Auto Scaling group. If this parameter is omitted, the default value of 300 seconds is used.
  ///
  /// For more information on how the instance warmup period contributes to managed scale-out behavior, see [Control the instances Amazon ECS terminates](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/managed-termination-protection.html) in the _Amazon Elastic Container Service Developer Guide_.
  final int? instanceWarmupPeriod;

  /// Maximum step adjustment size. A number between 1 and 10,000.
  final int? maximumScalingStepSize;

  /// Minimum step adjustment size. A number between 1 and 10,000.
  final int? minimumScalingStepSize;

  /// Whether auto scaling is managed by ECS. Valid values are `ENABLED` and `DISABLED`.
  final String? status;

  /// Target utilization for the capacity provider. A number between 1 and 100.
  final int? targetCapacity;

  /// Creates a new [CapacityProviderAutoScalingGroupProviderManagedScaling].
  /// [instanceWarmupPeriod] Period of time, in seconds, after a newly launched Amazon EC2 instance can contribute to CloudWatch metrics for Auto Scaling group. If this parameter is omitted, the default value of 300 seconds is used.
  /// [maximumScalingStepSize] Maximum step adjustment size. A number between 1 and 10,000.
  /// [minimumScalingStepSize] Minimum step adjustment size. A number between 1 and 10,000.
  /// [status] Whether auto scaling is managed by ECS. Valid values are `ENABLED` and `DISABLED`.
  /// [targetCapacity] Target utilization for the capacity provider. A number between 1 and 100.
  CapacityProviderAutoScalingGroupProviderManagedScaling({
    this.instanceWarmupPeriod,
    this.maximumScalingStepSize,
    this.minimumScalingStepSize,
    this.status,
    this.targetCapacity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final instanceWarmupPeriodValue = instanceWarmupPeriod;
    if (instanceWarmupPeriodValue != null) {
      map['instanceWarmupPeriod'] = instanceWarmupPeriodValue;
    }
    final maximumScalingStepSizeValue = maximumScalingStepSize;
    if (maximumScalingStepSizeValue != null) {
      map['maximumScalingStepSize'] = maximumScalingStepSizeValue;
    }
    final minimumScalingStepSizeValue = minimumScalingStepSize;
    if (minimumScalingStepSizeValue != null) {
      map['minimumScalingStepSize'] = minimumScalingStepSizeValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    final targetCapacityValue = targetCapacity;
    if (targetCapacityValue != null) {
      map['targetCapacity'] = targetCapacityValue;
    }
    return map;
  }

  factory CapacityProviderAutoScalingGroupProviderManagedScaling.fromMap(
      Map<String, dynamic> map) {
    return CapacityProviderAutoScalingGroupProviderManagedScaling(
      instanceWarmupPeriod: map['instanceWarmupPeriod'] == null
          ? null
          : map['instanceWarmupPeriod'] as int,
      maximumScalingStepSize: map['maximumScalingStepSize'] == null
          ? null
          : map['maximumScalingStepSize'] as int,
      minimumScalingStepSize: map['minimumScalingStepSize'] == null
          ? null
          : map['minimumScalingStepSize'] as int,
      status: map['status'] == null ? null : map['status'] as String,
      targetCapacity:
          map['targetCapacity'] == null ? null : map['targetCapacity'] as int,
    );
  }
}
