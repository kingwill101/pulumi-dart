// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceFleetLaunchSpecificationsOnDemandSpecification {
  /// Specifies one of the following strategies to launch Spot Instance fleets: `price-capacity-optimized`, `capacity-optimized`, `lowest-price`, or `diversified`. For more information on the provisioning strategies, see [Allocation strategies for Spot Instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-allocation-strategy.html).
  final pulumi.Input<String> allocationStrategy;

  /// Creates a new [InstanceFleetLaunchSpecificationsOnDemandSpecification].
  /// [allocationStrategy] Specifies one of the following strategies to launch Spot Instance fleets: `price-capacity-optimized`, `capacity-optimized`, `lowest-price`, or `diversified`. For more information on the provisioning strategies, see [Allocation strategies for Spot Instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-allocation-strategy.html).
  InstanceFleetLaunchSpecificationsOnDemandSpecification({
    required this.allocationStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationStrategy': allocationStrategy,
    };
  }

  factory InstanceFleetLaunchSpecificationsOnDemandSpecification.fromMap(Map<String, dynamic> map) {
    return InstanceFleetLaunchSpecificationsOnDemandSpecification(
      allocationStrategy: pulumi.Input.fromValue(map['allocationStrategy'] as String),
    );
  }
}

