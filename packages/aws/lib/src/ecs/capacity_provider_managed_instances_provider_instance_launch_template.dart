// ignore_for_file: unused_element, unnecessary_cast

import 'capacity_provider_managed_instances_provider_instance_launch_template_instance_requirements.dart';
import 'capacity_provider_managed_instances_provider_instance_launch_template_network_configuration.dart';
import 'capacity_provider_managed_instances_provider_instance_launch_template_storage_configuration.dart';

class CapacityProviderManagedInstancesProviderInstanceLaunchTemplate {
  /// The purchasing option for the EC2 instances used in the capacity provider. Determines whether to use On-Demand or Spot instances. Valid values are `ON_DEMAND` and `SPOT`. Defaults to `ON_DEMAND` when not specified. Changing this value will trigger replacement of the capacity provider. For more information, see [Amazon EC2 billing and purchasing options](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-purchasing-options.html) in the Amazon EC2 User Guide.
  final String? capacityOptionType;

  /// The Amazon Resource Name (ARN) of the instance profile that Amazon ECS applies to Amazon ECS Managed Instances. This instance profile must include the necessary permissions for your tasks to access AWS services and resources. For more information, see [Amazon ECS instance profile for Managed Instances](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/instance_IAM_role.html) in the Amazon ECS Developer Guide.
  final String ec2InstanceProfileArn;

  /// The instance requirements. You can specify the instance types and instance requirements such as vCPU count, memory, network performance, and accelerator specifications. Amazon ECS automatically selects the instances that match the specified criteria. Detailed below.
  final CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirements?
  instanceRequirements;

  /// CloudWatch provides two categories of monitoring: basic monitoring and detailed monitoring. By default, your managed instance is configured for basic monitoring. You can optionally enable detailed monitoring to help you more quickly identify and act on operational issues. You can enable or turn off detailed monitoring at launch or when the managed instance is running or stopped. For more information, see [Detailed monitoring for Amazon ECS Managed Instances](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cloudwatch-metrics.html) in the Amazon ECS Developer Guide. Valid values are `BASIC` and `DETAILED`.
  final String? monitoring;

  /// The network configuration for Amazon ECS Managed Instances. This specifies the subnets and security groups that instances use for network connectivity. Detailed below.
  final CapacityProviderManagedInstancesProviderInstanceLaunchTemplateNetworkConfiguration
  networkConfiguration;

  /// The storage configuration for Amazon ECS Managed Instances. This defines the root volume size and type for the instances. Detailed below.
  final CapacityProviderManagedInstancesProviderInstanceLaunchTemplateStorageConfiguration?
  storageConfiguration;

  /// Creates a new [CapacityProviderManagedInstancesProviderInstanceLaunchTemplate].
  /// [capacityOptionType] The purchasing option for the EC2 instances used in the capacity provider. Determines whether to use On-Demand or Spot instances. Valid values are `ON_DEMAND` and `SPOT`. Defaults to `ON_DEMAND` when not specified. Changing this value will trigger replacement of the capacity provider. For more information, see [Amazon EC2 billing and purchasing options](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-purchasing-options.html) in the Amazon EC2 User Guide.
  /// [ec2InstanceProfileArn] The Amazon Resource Name (ARN) of the instance profile that Amazon ECS applies to Amazon ECS Managed Instances. This instance profile must include the necessary permissions for your tasks to access AWS services and resources. For more information, see [Amazon ECS instance profile for Managed Instances](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/instance_IAM_role.html) in the Amazon ECS Developer Guide.
  /// [instanceRequirements] The instance requirements. You can specify the instance types and instance requirements such as vCPU count, memory, network performance, and accelerator specifications. Amazon ECS automatically selects the instances that match the specified criteria. Detailed below.
  /// [monitoring] CloudWatch provides two categories of monitoring: basic monitoring and detailed monitoring. By default, your managed instance is configured for basic monitoring. You can optionally enable detailed monitoring to help you more quickly identify and act on operational issues. You can enable or turn off detailed monitoring at launch or when the managed instance is running or stopped. For more information, see [Detailed monitoring for Amazon ECS Managed Instances](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cloudwatch-metrics.html) in the Amazon ECS Developer Guide. Valid values are `BASIC` and `DETAILED`.
  /// [networkConfiguration] The network configuration for Amazon ECS Managed Instances. This specifies the subnets and security groups that instances use for network connectivity. Detailed below.
  /// [storageConfiguration] The storage configuration for Amazon ECS Managed Instances. This defines the root volume size and type for the instances. Detailed below.
  CapacityProviderManagedInstancesProviderInstanceLaunchTemplate({
    this.capacityOptionType,
    required this.ec2InstanceProfileArn,
    this.instanceRequirements,
    this.monitoring,
    required this.networkConfiguration,
    this.storageConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityOptionType': ?capacityOptionType,
      'ec2InstanceProfileArn': ec2InstanceProfileArn,
      'instanceRequirements': ?instanceRequirements == null
          ? null
          : instanceRequirements!.toMap(),
      'monitoring': ?monitoring,
      'networkConfiguration': networkConfiguration.toMap(),
      'storageConfiguration': ?storageConfiguration == null
          ? null
          : storageConfiguration!.toMap(),
    };
  }

  factory CapacityProviderManagedInstancesProviderInstanceLaunchTemplate.fromMap(
    Map<String, dynamic> map,
  ) {
    return CapacityProviderManagedInstancesProviderInstanceLaunchTemplate(
      capacityOptionType: map['capacityOptionType'] == null
          ? null
          : map['capacityOptionType'] as String,
      ec2InstanceProfileArn: map['ec2InstanceProfileArn'] as String,
      instanceRequirements: map['instanceRequirements'] == null
          ? null
          : CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirements.fromMap(
              (map['instanceRequirements'] as Map).cast<String, dynamic>(),
            ),
      monitoring: map['monitoring'] == null
          ? null
          : map['monitoring'] as String,
      networkConfiguration:
          CapacityProviderManagedInstancesProviderInstanceLaunchTemplateNetworkConfiguration.fromMap(
            (map['networkConfiguration'] as Map).cast<String, dynamic>(),
          ),
      storageConfiguration: map['storageConfiguration'] == null
          ? null
          : CapacityProviderManagedInstancesProviderInstanceLaunchTemplateStorageConfiguration.fromMap(
              (map['storageConfiguration'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
