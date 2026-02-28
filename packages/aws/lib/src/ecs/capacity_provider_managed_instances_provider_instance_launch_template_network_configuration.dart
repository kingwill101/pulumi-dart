// ignore_for_file: unused_element, unnecessary_cast

class CapacityProviderManagedInstancesProviderInstanceLaunchTemplateNetworkConfiguration {
  /// The list of security group IDs to apply to Amazon ECS Managed Instances. These security groups control the network traffic allowed to and from the instances.
  final List<String>? securityGroups;

  /// The list of subnet IDs where Amazon ECS can launch Amazon ECS Managed Instances. Instances are distributed across the specified subnets for high availability. All subnets must be in the same VPC.
  final List<String> subnets;

  /// Creates a new [CapacityProviderManagedInstancesProviderInstanceLaunchTemplateNetworkConfiguration].
  /// [securityGroups] The list of security group IDs to apply to Amazon ECS Managed Instances. These security groups control the network traffic allowed to and from the instances.
  /// [subnets] The list of subnet IDs where Amazon ECS can launch Amazon ECS Managed Instances. Instances are distributed across the specified subnets for high availability. All subnets must be in the same VPC.
  CapacityProviderManagedInstancesProviderInstanceLaunchTemplateNetworkConfiguration({
    this.securityGroups,
    required this.subnets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final securityGroupsValue = securityGroups;
    if (securityGroupsValue != null) {
      map['securityGroups'] = securityGroupsValue;
    }
    map['subnets'] = subnets;
    return map;
  }

  factory CapacityProviderManagedInstancesProviderInstanceLaunchTemplateNetworkConfiguration.fromMap(
      Map<String, dynamic> map) {
    return CapacityProviderManagedInstancesProviderInstanceLaunchTemplateNetworkConfiguration(
      securityGroups: map['securityGroups'] == null
          ? null
          : (map['securityGroups'] as List).cast<String>(),
      subnets: (map['subnets'] as List).cast<String>(),
    );
  }
}
