// ignore_for_file: unused_element, unnecessary_cast

class InstanceFleetLaunchSpecificationsOnDemandSpecification {
  /// Specifies one of the following strategies to launch Spot Instance fleets: `price-capacity-optimized`, `capacity-optimized`, `lowest-price`, or <span pulumi-lang-nodejs="`diversified`" pulumi-lang-dotnet="`Diversified`" pulumi-lang-go="`diversified`" pulumi-lang-python="`diversified`" pulumi-lang-yaml="`diversified`" pulumi-lang-java="`diversified`">`diversified`</span>. For more information on the provisioning strategies, see [Allocation strategies for Spot Instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-allocation-strategy.html).
  final String allocationStrategy;

  InstanceFleetLaunchSpecificationsOnDemandSpecification({
    required this.allocationStrategy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allocationStrategy'] = allocationStrategy;
    return map;
  }

  factory InstanceFleetLaunchSpecificationsOnDemandSpecification.fromMap(
      Map<String, dynamic> map) {
    return InstanceFleetLaunchSpecificationsOnDemandSpecification(
      allocationStrategy: map['allocationStrategy'] as String,
    );
  }
}
