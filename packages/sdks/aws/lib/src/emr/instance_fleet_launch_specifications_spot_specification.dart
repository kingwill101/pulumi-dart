// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceFleetLaunchSpecificationsSpotSpecification {
  /// Specifies one of the following strategies to launch Spot Instance fleets: `price-capacity-optimized`, `capacity-optimized`, `lowest-price`, or `diversified`. For more information on the provisioning strategies, see [Allocation strategies for Spot Instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-allocation-strategy.html).
  final pulumi.Input<String> allocationStrategy;
  /// The defined duration for Spot instances (also known as Spot blocks) in minutes. When specified, the Spot instance does not terminate before the defined duration expires, and defined duration pricing for Spot instances applies. Valid values are 60, 120, 180, 240, 300, or 360. The duration period starts as soon as a Spot instance receives its instance ID. At the end of the duration, Amazon EC2 marks the Spot instance for termination and provides a Spot instance termination notice, which gives the instance a two-minute warning before it terminates.
  final pulumi.Input<int>? blockDurationMinutes;
  /// The action to take when TargetSpotCapacity has not been fulfilled when the TimeoutDurationMinutes has expired; that is, when all Spot instances could not be provisioned within the Spot provisioning timeout. Valid values are `TERMINATE_CLUSTER` and `SWITCH_TO_ON_DEMAND`. SWITCH_TO_ON_DEMAND specifies that if no Spot instances are available, On-Demand Instances should be provisioned to fulfill any remaining Spot capacity.
  final pulumi.Input<String> timeoutAction;
  /// The spot provisioning timeout period in minutes. If Spot instances are not provisioned within this time period, the TimeOutAction is taken. Minimum value is 5 and maximum value is 1440. The timeout applies only during initial provisioning, when the cluster is first created.
  final pulumi.Input<int> timeoutDurationMinutes;

  /// Creates a new [InstanceFleetLaunchSpecificationsSpotSpecification].
  /// [allocationStrategy] Specifies one of the following strategies to launch Spot Instance fleets: `price-capacity-optimized`, `capacity-optimized`, `lowest-price`, or `diversified`. For more information on the provisioning strategies, see [Allocation strategies for Spot Instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-allocation-strategy.html).
  /// [blockDurationMinutes] The defined duration for Spot instances (also known as Spot blocks) in minutes. When specified, the Spot instance does not terminate before the defined duration expires, and defined duration pricing for Spot instances applies. Valid values are 60, 120, 180, 240, 300, or 360. The duration period starts as soon as a Spot instance receives its instance ID. At the end of the duration, Amazon EC2 marks the Spot instance for termination and provides a Spot instance termination notice, which gives the instance a two-minute warning before it terminates.
  /// [timeoutAction] The action to take when TargetSpotCapacity has not been fulfilled when the TimeoutDurationMinutes has expired; that is, when all Spot instances could not be provisioned within the Spot provisioning timeout. Valid values are `TERMINATE_CLUSTER` and `SWITCH_TO_ON_DEMAND`. SWITCH_TO_ON_DEMAND specifies that if no Spot instances are available, On-Demand Instances should be provisioned to fulfill any remaining Spot capacity.
  /// [timeoutDurationMinutes] The spot provisioning timeout period in minutes. If Spot instances are not provisioned within this time period, the TimeOutAction is taken. Minimum value is 5 and maximum value is 1440. The timeout applies only during initial provisioning, when the cluster is first created.
  const InstanceFleetLaunchSpecificationsSpotSpecification({
    required this.allocationStrategy,
    this.blockDurationMinutes,
    required this.timeoutAction,
    required this.timeoutDurationMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationStrategy': allocationStrategy,
      'blockDurationMinutes': ?blockDurationMinutes,
      'timeoutAction': timeoutAction,
      'timeoutDurationMinutes': timeoutDurationMinutes,
    };
  }

  factory InstanceFleetLaunchSpecificationsSpotSpecification.fromMap(Map<String, dynamic> map) {
    return InstanceFleetLaunchSpecificationsSpotSpecification(
      allocationStrategy: pulumi.Input.fromValue(map['allocationStrategy'] as String),
      blockDurationMinutes: (() { final guardedValue = map['blockDurationMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      timeoutAction: pulumi.Input.fromValue(map['timeoutAction'] as String),
      timeoutDurationMinutes: pulumi.Input.fromValue(map['timeoutDurationMinutes'] as int),
    );
  }
}
