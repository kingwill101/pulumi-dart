// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_provider_managed_instances_provider_infrastructure_optimization.dart';
import 'capacity_provider_managed_instances_provider_instance_launch_template.dart';

class CapacityProviderManagedInstancesProvider {
  /// Configuration block for how Amazon ECS Managed Instances optimizes the infrastructure in your capacity provider, including whether to turn optimization on or off and how long to delay optimizing idle EC2 instances. Detailed below.
  final pulumi.Input<CapacityProviderManagedInstancesProviderInfrastructureOptimization>? infrastructureOptimization;
  /// ARN of the infrastructure role that Amazon ECS uses to manage instances on your behalf. This role must have permissions to launch, terminate, and manage Amazon EC2 instances, as well as access to other AWS services required for Amazon ECS Managed Instances functionality. For more information, see [Amazon ECS infrastructure IAM role](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/infrastructure_IAM_role.html) in the Amazon ECS Developer Guide.
  final pulumi.Input<String> infrastructureRoleArn;
  /// Launch template configuration that specifies how Amazon ECS should launch Amazon EC2 instances. This includes the instance profile, network configuration, storage settings, and instance requirements for attribute-based instance type selection. For more information, see [Store instance launch parameters in Amazon EC2 launch templates](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html) in the Amazon EC2 User Guide. Detailed below.
  final pulumi.Input<CapacityProviderManagedInstancesProviderInstanceLaunchTemplate> instanceLaunchTemplate;
  /// Whether to propagate tags from the capacity provider to the Amazon ECS Managed Instances. When enabled, tags applied to the capacity provider are automatically applied to all instances launched by this provider. Valid values are `CAPACITY_PROVIDER` and `NONE`.
  final pulumi.Input<String>? propagateTags;

  /// Creates a new [CapacityProviderManagedInstancesProvider].
  /// [infrastructureOptimization] Configuration block for how Amazon ECS Managed Instances optimizes the infrastructure in your capacity provider, including whether to turn optimization on or off and how long to delay optimizing idle EC2 instances. Detailed below.
  /// [infrastructureRoleArn] ARN of the infrastructure role that Amazon ECS uses to manage instances on your behalf. This role must have permissions to launch, terminate, and manage Amazon EC2 instances, as well as access to other AWS services required for Amazon ECS Managed Instances functionality. For more information, see [Amazon ECS infrastructure IAM role](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/infrastructure_IAM_role.html) in the Amazon ECS Developer Guide.
  /// [instanceLaunchTemplate] Launch template configuration that specifies how Amazon ECS should launch Amazon EC2 instances. This includes the instance profile, network configuration, storage settings, and instance requirements for attribute-based instance type selection. For more information, see [Store instance launch parameters in Amazon EC2 launch templates](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html) in the Amazon EC2 User Guide. Detailed below.
  /// [propagateTags] Whether to propagate tags from the capacity provider to the Amazon ECS Managed Instances. When enabled, tags applied to the capacity provider are automatically applied to all instances launched by this provider. Valid values are `CAPACITY_PROVIDER` and `NONE`.
  const CapacityProviderManagedInstancesProvider({
    this.infrastructureOptimization,
    required this.infrastructureRoleArn,
    required this.instanceLaunchTemplate,
    this.propagateTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infrastructureOptimization': ?pulumi.Input.mapOptionalInputValue<CapacityProviderManagedInstancesProviderInfrastructureOptimization, Map<String, dynamic>>(infrastructureOptimization, (value) => value.toMap()),
      'infrastructureRoleArn': infrastructureRoleArn,
      'instanceLaunchTemplate': pulumi.Input.mapInputValue<CapacityProviderManagedInstancesProviderInstanceLaunchTemplate, Map<String, dynamic>>(instanceLaunchTemplate, (value) => value.toMap()),
      'propagateTags': ?propagateTags,
    };
  }

  factory CapacityProviderManagedInstancesProvider.fromMap(Map<String, dynamic> map) {
    return CapacityProviderManagedInstancesProvider(
      infrastructureOptimization: (() { final guardedValue = map['infrastructureOptimization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CapacityProviderManagedInstancesProviderInfrastructureOptimization.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      infrastructureRoleArn: pulumi.Input.fromValue(map['infrastructureRoleArn'] as String),
      instanceLaunchTemplate: pulumi.Input.fromValue(CapacityProviderManagedInstancesProviderInstanceLaunchTemplate.fromMap((map['instanceLaunchTemplate']! as Map).cast<String, dynamic>())),
      propagateTags: (() { final guardedValue = map['propagateTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
