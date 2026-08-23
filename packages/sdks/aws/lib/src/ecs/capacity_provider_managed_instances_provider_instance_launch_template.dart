// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_provider_managed_instances_provider_instance_launch_template_capacity_reservations.dart';
import 'capacity_provider_managed_instances_provider_instance_launch_template_instance_requirements.dart';
import 'capacity_provider_managed_instances_provider_instance_launch_template_local_storage_configuration.dart';
import 'capacity_provider_managed_instances_provider_instance_launch_template_network_configuration.dart';
import 'capacity_provider_managed_instances_provider_instance_launch_template_storage_configuration.dart';

class CapacityProviderManagedInstancesProviderInstanceLaunchTemplate {
  /// Purchasing option for the EC2 instances used in the capacity provider. Determines whether to use On-Demand, Spot, or Capacity Reservation instances. Valid values are `ON_DEMAND`, `SPOT`, and `RESERVED`. Defaults to `ON_DEMAND` when not specified. Changing this value will trigger replacement of the capacity provider. For more information, see [Amazon EC2 billing and purchasing options](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-purchasing-options.html) in the Amazon EC2 User Guide.
  final pulumi.Input<String>? capacityOptionType;
  /// Capacity Reservation configuration used to launch instances. Required when `capacityOptionType` is `RESERVED`. Detailed below.
  final pulumi.Input<CapacityProviderManagedInstancesProviderInstanceLaunchTemplateCapacityReservations>? capacityReservations;
  /// ARN of the instance profile that Amazon ECS applies to Amazon ECS Managed Instances. This instance profile must include the necessary permissions for your tasks to access AWS services and resources. For more information, see [Amazon ECS instance profile for Managed Instances](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/instance_IAM_role.html) in the Amazon ECS Developer Guide.
  final pulumi.Input<String> ec2InstanceProfileArn;
  /// Instance requirements. You can specify the instance types and instance requirements such as vCPU count, memory, network performance, and accelerator specifications. Amazon ECS automatically selects the instances that match the specified criteria. Detailed below.
  final pulumi.Input<CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirements>? instanceRequirements;
  /// Configuration block for the local storage settings applied to Amazon ECS Managed Instances. Detailed below.
  final pulumi.Input<CapacityProviderManagedInstancesProviderInstanceLaunchTemplateLocalStorageConfiguration>? localStorageConfiguration;
  /// CloudWatch provides two categories of monitoring: basic monitoring and detailed monitoring. By default, your managed instance is configured for basic monitoring. You can optionally enable detailed monitoring to help you more quickly identify and act on operational issues. You can enable or turn off detailed monitoring at launch or when the managed instance is running or stopped. For more information, see [Detailed monitoring for Amazon ECS Managed Instances](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cloudwatch-metrics.html) in the Amazon ECS Developer Guide. Valid values are `BASIC` and `DETAILED`.
  final pulumi.Input<String>? monitoring;
  /// Network configuration for Amazon ECS Managed Instances. This specifies the subnets and security groups that instances use for network connectivity. Detailed below.
  final pulumi.Input<CapacityProviderManagedInstancesProviderInstanceLaunchTemplateNetworkConfiguration> networkConfiguration;
  /// Storage configuration for Amazon ECS Managed Instances. This defines the root volume size and type for the instances. Detailed below.
  final pulumi.Input<CapacityProviderManagedInstancesProviderInstanceLaunchTemplateStorageConfiguration>? storageConfiguration;

  /// Creates a new [CapacityProviderManagedInstancesProviderInstanceLaunchTemplate].
  /// [capacityOptionType] Purchasing option for the EC2 instances used in the capacity provider. Determines whether to use On-Demand, Spot, or Capacity Reservation instances. Valid values are `ON_DEMAND`, `SPOT`, and `RESERVED`. Defaults to `ON_DEMAND` when not specified. Changing this value will trigger replacement of the capacity provider. For more information, see [Amazon EC2 billing and purchasing options](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-purchasing-options.html) in the Amazon EC2 User Guide.
  /// [capacityReservations] Capacity Reservation configuration used to launch instances. Required when `capacityOptionType` is `RESERVED`. Detailed below.
  /// [ec2InstanceProfileArn] ARN of the instance profile that Amazon ECS applies to Amazon ECS Managed Instances. This instance profile must include the necessary permissions for your tasks to access AWS services and resources. For more information, see [Amazon ECS instance profile for Managed Instances](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/instance_IAM_role.html) in the Amazon ECS Developer Guide.
  /// [instanceRequirements] Instance requirements. You can specify the instance types and instance requirements such as vCPU count, memory, network performance, and accelerator specifications. Amazon ECS automatically selects the instances that match the specified criteria. Detailed below.
  /// [localStorageConfiguration] Configuration block for the local storage settings applied to Amazon ECS Managed Instances. Detailed below.
  /// [monitoring] CloudWatch provides two categories of monitoring: basic monitoring and detailed monitoring. By default, your managed instance is configured for basic monitoring. You can optionally enable detailed monitoring to help you more quickly identify and act on operational issues. You can enable or turn off detailed monitoring at launch or when the managed instance is running or stopped. For more information, see [Detailed monitoring for Amazon ECS Managed Instances](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cloudwatch-metrics.html) in the Amazon ECS Developer Guide. Valid values are `BASIC` and `DETAILED`.
  /// [networkConfiguration] Network configuration for Amazon ECS Managed Instances. This specifies the subnets and security groups that instances use for network connectivity. Detailed below.
  /// [storageConfiguration] Storage configuration for Amazon ECS Managed Instances. This defines the root volume size and type for the instances. Detailed below.
  const CapacityProviderManagedInstancesProviderInstanceLaunchTemplate({
    this.capacityOptionType,
    this.capacityReservations,
    required this.ec2InstanceProfileArn,
    this.instanceRequirements,
    this.localStorageConfiguration,
    this.monitoring,
    required this.networkConfiguration,
    this.storageConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityOptionType': ?capacityOptionType,
      'capacityReservations': ?pulumi.Input.mapOptionalInputValue<CapacityProviderManagedInstancesProviderInstanceLaunchTemplateCapacityReservations, Map<String, dynamic>>(capacityReservations, (value) => value.toMap()),
      'ec2InstanceProfileArn': ec2InstanceProfileArn,
      'instanceRequirements': ?pulumi.Input.mapOptionalInputValue<CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirements, Map<String, dynamic>>(instanceRequirements, (value) => value.toMap()),
      'localStorageConfiguration': ?pulumi.Input.mapOptionalInputValue<CapacityProviderManagedInstancesProviderInstanceLaunchTemplateLocalStorageConfiguration, Map<String, dynamic>>(localStorageConfiguration, (value) => value.toMap()),
      'monitoring': ?monitoring,
      'networkConfiguration': pulumi.Input.mapInputValue<CapacityProviderManagedInstancesProviderInstanceLaunchTemplateNetworkConfiguration, Map<String, dynamic>>(networkConfiguration, (value) => value.toMap()),
      'storageConfiguration': ?pulumi.Input.mapOptionalInputValue<CapacityProviderManagedInstancesProviderInstanceLaunchTemplateStorageConfiguration, Map<String, dynamic>>(storageConfiguration, (value) => value.toMap()),
    };
  }

  factory CapacityProviderManagedInstancesProviderInstanceLaunchTemplate.fromMap(Map<String, dynamic> map) {
    return CapacityProviderManagedInstancesProviderInstanceLaunchTemplate(
      capacityOptionType: (() { final guardedValue = map['capacityOptionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      capacityReservations: (() { final guardedValue = map['capacityReservations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CapacityProviderManagedInstancesProviderInstanceLaunchTemplateCapacityReservations.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ec2InstanceProfileArn: pulumi.Input.fromValue(map['ec2InstanceProfileArn'] as String),
      instanceRequirements: (() { final guardedValue = map['instanceRequirements']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirements.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      localStorageConfiguration: (() { final guardedValue = map['localStorageConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CapacityProviderManagedInstancesProviderInstanceLaunchTemplateLocalStorageConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      monitoring: (() { final guardedValue = map['monitoring']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkConfiguration: pulumi.Input.fromValue(CapacityProviderManagedInstancesProviderInstanceLaunchTemplateNetworkConfiguration.fromMap((map['networkConfiguration']! as Map).cast<String, dynamic>())),
      storageConfiguration: (() { final guardedValue = map['storageConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CapacityProviderManagedInstancesProviderInstanceLaunchTemplateStorageConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
