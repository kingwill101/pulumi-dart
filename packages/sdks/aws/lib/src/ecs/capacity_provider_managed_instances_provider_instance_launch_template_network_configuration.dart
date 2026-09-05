// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CapacityProviderManagedInstancesProviderInstanceLaunchTemplateNetworkConfiguration {
  /// List of security group IDs to apply to Amazon ECS Managed Instances. These security groups control the network traffic allowed to and from the instances.
  final pulumi.Input<List<String>?>? securityGroups;
  /// List of subnet IDs where Amazon ECS can launch Amazon ECS Managed Instances. Instances are distributed across the specified subnets for high availability. All subnets must be in the same VPC.
  final pulumi.Input<List<String>> subnets;

  /// Creates a new [CapacityProviderManagedInstancesProviderInstanceLaunchTemplateNetworkConfiguration].
  /// [securityGroups] List of security group IDs to apply to Amazon ECS Managed Instances. These security groups control the network traffic allowed to and from the instances.
  /// [subnets] List of subnet IDs where Amazon ECS can launch Amazon ECS Managed Instances. Instances are distributed across the specified subnets for high availability. All subnets must be in the same VPC.
  const CapacityProviderManagedInstancesProviderInstanceLaunchTemplateNetworkConfiguration({
    this.securityGroups,
    required this.subnets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroups': ?securityGroups,
      'subnets': subnets,
    };
  }

  factory CapacityProviderManagedInstancesProviderInstanceLaunchTemplateNetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return CapacityProviderManagedInstancesProviderInstanceLaunchTemplateNetworkConfiguration(
      securityGroups: (() { final guardedValue = map['securityGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnets: pulumi.Input.fromValue((map['subnets'] as List).cast<String>()),
    );
  }
}
