// ignore_for_file: unused_element, unnecessary_cast

import '../capacity_provider_managed_instances_provider_infrastructure_optimization/capacity_provider_managed_instances_provider_infrastructure_optimization.dart';
import '../capacity_provider_managed_instances_provider_instance_launch_template/capacity_provider_managed_instances_provider_instance_launch_template.dart';

class CapacityProviderManagedInstancesProvider {
  /// Defines how Amazon ECS Managed Instances optimizes the infrastructure in your capacity provider. Configure it to turn on or off the infrastructure optimization in your capacity provider, and to control the idle EC2 instances optimization delay.
  final CapacityProviderManagedInstancesProviderInfrastructureOptimization?
      infrastructureOptimization;

  /// The Amazon Resource Name (ARN) of the infrastructure role that Amazon ECS uses to manage instances on your behalf. This role must have permissions to launch, terminate, and manage Amazon EC2 instances, as well as access to other AWS services required for Amazon ECS Managed Instances functionality. For more information, see [Amazon ECS infrastructure IAM role](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/infrastructure_IAM_role.html) in the Amazon ECS Developer Guide.
  final String infrastructureRoleArn;

  /// The launch template configuration that specifies how Amazon ECS should launch Amazon EC2 instances. This includes the instance profile, network configuration, storage settings, and instance requirements for attribute-based instance type selection. For more information, see [Store instance launch parameters in Amazon EC2 launch templates](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html) in the Amazon EC2 User Guide. Detailed below.
  final CapacityProviderManagedInstancesProviderInstanceLaunchTemplate
      instanceLaunchTemplate;

  /// Specifies whether to propagate tags from the capacity provider to the Amazon ECS Managed Instances. When enabled, tags applied to the capacity provider are automatically applied to all instances launched by this provider. Valid values are `CAPACITY_PROVIDER` and `NONE`.
  final String? propagateTags;

  CapacityProviderManagedInstancesProvider({
    this.infrastructureOptimization,
    required this.infrastructureRoleArn,
    required this.instanceLaunchTemplate,
    this.propagateTags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final infrastructureOptimizationValue = infrastructureOptimization;
    if (infrastructureOptimizationValue != null) {
      map['infrastructureOptimization'] =
          infrastructureOptimizationValue.toMap();
    }
    map['infrastructureRoleArn'] = infrastructureRoleArn;
    map['instanceLaunchTemplate'] = instanceLaunchTemplate.toMap();
    final propagateTagsValue = propagateTags;
    if (propagateTagsValue != null) {
      map['propagateTags'] = propagateTagsValue;
    }
    return map;
  }

  factory CapacityProviderManagedInstancesProvider.fromMap(
      Map<String, dynamic> map) {
    return CapacityProviderManagedInstancesProvider(
      infrastructureOptimization: map['infrastructureOptimization'] == null
          ? null
          : CapacityProviderManagedInstancesProviderInfrastructureOptimization
              .fromMap((map['infrastructureOptimization'] as Map)
                  .cast<String, dynamic>()),
      infrastructureRoleArn: map['infrastructureRoleArn'] as String,
      instanceLaunchTemplate:
          CapacityProviderManagedInstancesProviderInstanceLaunchTemplate
              .fromMap((map['instanceLaunchTemplate'] as Map)
                  .cast<String, dynamic>()),
      propagateTags:
          map['propagateTags'] == null ? null : map['propagateTags'] as String,
    );
  }
}
