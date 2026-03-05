// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CapacityProviderAutoScalingGroupProviderManagedScaling {
  /// Period of time, in seconds, after a newly launched Amazon EC2 instance can contribute to CloudWatch metrics for Auto Scaling group. If this parameter is omitted, the default value of 300 seconds is used.
  ///
  /// For more information on how the instance warmup period contributes to managed scale-out behavior, see [Control the instances Amazon ECS terminates](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/managed-termination-protection.html) in the _Amazon Elastic Container Service Developer Guide_.
  final pulumi.Input<int>? instanceWarmupPeriod;
  /// Maximum step adjustment size. A number between 1 and 10,000.
  final pulumi.Input<int>? maximumScalingStepSize;
  /// Minimum step adjustment size. A number between 1 and 10,000.
  final pulumi.Input<int>? minimumScalingStepSize;
  /// Whether auto scaling is managed by ECS. Valid values are `ENABLED` and `DISABLED`.
  final pulumi.Input<String>? status;
  /// Target utilization for the capacity provider. A number between 1 and 100.
  final pulumi.Input<int>? targetCapacity;

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
    return <String, dynamic>{
      'instanceWarmupPeriod': ?instanceWarmupPeriod,
      'maximumScalingStepSize': ?maximumScalingStepSize,
      'minimumScalingStepSize': ?minimumScalingStepSize,
      'status': ?status,
      'targetCapacity': ?targetCapacity,
    };
  }

  factory CapacityProviderAutoScalingGroupProviderManagedScaling.fromMap(Map<String, dynamic> map) {
    return CapacityProviderAutoScalingGroupProviderManagedScaling(
      instanceWarmupPeriod: (() { final guardedValue = map['instanceWarmupPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maximumScalingStepSize: (() { final guardedValue = map['maximumScalingStepSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minimumScalingStepSize: (() { final guardedValue = map['minimumScalingStepSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetCapacity: (() { final guardedValue = map['targetCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

