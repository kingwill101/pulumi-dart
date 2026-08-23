// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_environment_compute_resources_ec2_configuration.dart';
import 'compute_environment_compute_resources_launch_template.dart';

class ComputeEnvironmentComputeResources {
  /// The allocation strategy to use for the compute resource in case not enough instances of the best fitting instance type can be allocated. For valid values, refer to the [AWS documentation](https://docs.aws.amazon.com/batch/latest/APIReference/API_ComputeResource.html#Batch-Type-ComputeResource-allocationStrategy). Defaults to `BEST_FIT`. This parameter isn't applicable to jobs running on Fargate resources, and shouldn't be specified.
  final pulumi.Input<String>? allocationStrategy;
  /// Integer of maximum percentage that a Spot Instance price can be when compared with the On-Demand price for that instance type before instances are launched. For example, if your bid percentage is 20% (`20`), then the Spot price must be below 20% of the current On-Demand price for that EC2 instance. If you leave this field empty, the default value is 100% of the On-Demand price. This parameter isn't applicable to jobs running on Fargate resources, and shouldn't be specified.
  final pulumi.Input<int>? bidPercentage;
  /// The desired number of EC2 vCPUS in the compute environment. This parameter isn't applicable to jobs running on Fargate resources, and shouldn't be specified.
  final pulumi.Input<int>? desiredVcpus;
  /// Provides information used to select Amazon Machine Images (AMIs) for EC2 instances in the compute environment. If Ec2Configuration isn't specified, the default is ECS_AL2. This parameter isn't applicable to jobs that are running on Fargate resources, and shouldn't be specified.
  final pulumi.Input<List<ComputeEnvironmentComputeResourcesEc2Configuration>>? ec2Configurations;
  /// The EC2 key pair that is used for instances launched in the compute environment. This parameter isn't applicable to jobs running on Fargate resources, and shouldn't be specified.
  final pulumi.Input<String>? ec2KeyPair;
  /// The Amazon Machine Image (AMI) ID used for instances launched in the compute environment. This parameter isn't applicable to jobs running on Fargate resources, and shouldn't be specified. (Deprecated, use `ec2Configuration` `imageIdOverride` instead)
  final pulumi.Input<String>? imageId;
  /// The Amazon ECS instance role applied to Amazon EC2 instances in a compute environment. This parameter isn't applicable to jobs running on Fargate resources, and shouldn't be specified.
  final pulumi.Input<String>? instanceRole;
  /// A list of instance types that may be launched. This parameter isn't applicable to jobs running on Fargate resources, and shouldn't be specified.
  final pulumi.Input<List<String>>? instanceTypes;
  /// The launch template to use for your compute resources. See details below. This parameter isn't applicable to jobs running on Fargate resources, and shouldn't be specified.
  final pulumi.Input<ComputeEnvironmentComputeResourcesLaunchTemplate>? launchTemplate;
  /// The maximum number of EC2 vCPUs that an environment can reach.
  final pulumi.Input<int> maxVcpus;
  /// The minimum number of EC2 vCPUs that an environment should maintain. For `EC2` or `SPOT` compute environments, if the parameter is not explicitly defined, a `0` default value will be set. This parameter isn't applicable to jobs running on Fargate resources, and shouldn't be specified.
  final pulumi.Input<int>? minVcpus;
  /// The Amazon EC2 placement group to associate with your compute resources.
  final pulumi.Input<String>? placementGroup;
  /// A list of EC2 security group that are associated with instances launched in the compute environment. This parameter is required for Fargate compute environments.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// The Amazon Resource Name (ARN) of the Amazon EC2 Spot Fleet IAM role applied to a SPOT compute environment. This parameter is required for SPOT compute environments. This parameter isn't applicable to jobs running on Fargate resources, and shouldn't be specified.
  final pulumi.Input<String>? spotIamFleetRole;
  /// A list of VPC subnets into which the compute resources are launched.
  final pulumi.Input<List<String>> subnets;
  /// Key-value pair tags to be applied to resources that are launched in the compute environment. This parameter isn't applicable to jobs running on Fargate resources, and shouldn't be specified.
  final pulumi.Input<Map<String, String>>? tags;
  /// The type of compute environment. Valid items are `EC2`, `SPOT`, `FARGATE` or `FARGATE_SPOT`.
  final pulumi.Input<String> type;

  /// Creates a new [ComputeEnvironmentComputeResources].
  /// [allocationStrategy] The allocation strategy to use for the compute resource in case not enough instances of the best fitting instance type can be allocated. For valid values, refer to the [AWS documentation](https://docs.aws.amazon.com/batch/latest/APIReference/API_ComputeResource.html#Batch-Type-ComputeResource-allocationStrategy). Defaults to `BEST_FIT`. This parameter isn't applicable to jobs running on Fargate resources, and shouldn't be specified.
  /// [bidPercentage] Integer of maximum percentage that a Spot Instance price can be when compared with the On-Demand price for that instance type before instances are launched. For example, if your bid percentage is 20% (`20`), then the Spot price must be below 20% of the current On-Demand price for that EC2 instance. If you leave this field empty, the default value is 100% of the On-Demand price. This parameter isn't applicable to jobs running on Fargate resources, and shouldn't be specified.
  /// [desiredVcpus] The desired number of EC2 vCPUS in the compute environment. This parameter isn't applicable to jobs running on Fargate resources, and shouldn't be specified.
  /// [ec2Configurations] Provides information used to select Amazon Machine Images (AMIs) for EC2 instances in the compute environment. If Ec2Configuration isn't specified, the default is ECS_AL2. This parameter isn't applicable to jobs that are running on Fargate resources, and shouldn't be specified.
  /// [ec2KeyPair] The EC2 key pair that is used for instances launched in the compute environment. This parameter isn't applicable to jobs running on Fargate resources, and shouldn't be specified.
  /// [imageId] The Amazon Machine Image (AMI) ID used for instances launched in the compute environment. This parameter isn't applicable to jobs running on Fargate resources, and shouldn't be specified. (Deprecated, use `ec2Configuration` `imageIdOverride` instead)
  /// [instanceRole] The Amazon ECS instance role applied to Amazon EC2 instances in a compute environment. This parameter isn't applicable to jobs running on Fargate resources, and shouldn't be specified.
  /// [instanceTypes] A list of instance types that may be launched. This parameter isn't applicable to jobs running on Fargate resources, and shouldn't be specified.
  /// [launchTemplate] The launch template to use for your compute resources. See details below. This parameter isn't applicable to jobs running on Fargate resources, and shouldn't be specified.
  /// [maxVcpus] The maximum number of EC2 vCPUs that an environment can reach.
  /// [minVcpus] The minimum number of EC2 vCPUs that an environment should maintain. For `EC2` or `SPOT` compute environments, if the parameter is not explicitly defined, a `0` default value will be set. This parameter isn't applicable to jobs running on Fargate resources, and shouldn't be specified.
  /// [placementGroup] The Amazon EC2 placement group to associate with your compute resources.
  /// [securityGroupIds] A list of EC2 security group that are associated with instances launched in the compute environment. This parameter is required for Fargate compute environments.
  /// [spotIamFleetRole] The Amazon Resource Name (ARN) of the Amazon EC2 Spot Fleet IAM role applied to a SPOT compute environment. This parameter is required for SPOT compute environments. This parameter isn't applicable to jobs running on Fargate resources, and shouldn't be specified.
  /// [subnets] A list of VPC subnets into which the compute resources are launched.
  /// [tags] Key-value pair tags to be applied to resources that are launched in the compute environment. This parameter isn't applicable to jobs running on Fargate resources, and shouldn't be specified.
  /// [type] The type of compute environment. Valid items are `EC2`, `SPOT`, `FARGATE` or `FARGATE_SPOT`.
  const ComputeEnvironmentComputeResources({
    this.allocationStrategy,
    this.bidPercentage,
    this.desiredVcpus,
    this.ec2Configurations,
    this.ec2KeyPair,
    this.imageId,
    this.instanceRole,
    this.instanceTypes,
    this.launchTemplate,
    required this.maxVcpus,
    this.minVcpus,
    this.placementGroup,
    this.securityGroupIds,
    this.spotIamFleetRole,
    required this.subnets,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationStrategy': ?allocationStrategy,
      'bidPercentage': ?bidPercentage,
      'desiredVcpus': ?desiredVcpus,
      'ec2Configurations': ?pulumi.Input.mapOptionalInputValue<List<ComputeEnvironmentComputeResourcesEc2Configuration>, List<Map<String, dynamic>>>(ec2Configurations, (value) => pulumi.Input.encodeList<ComputeEnvironmentComputeResourcesEc2Configuration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ec2KeyPair': ?ec2KeyPair,
      'imageId': ?imageId,
      'instanceRole': ?instanceRole,
      'instanceTypes': ?instanceTypes,
      'launchTemplate': ?pulumi.Input.mapOptionalInputValue<ComputeEnvironmentComputeResourcesLaunchTemplate, Map<String, dynamic>>(launchTemplate, (value) => value.toMap()),
      'maxVcpus': maxVcpus,
      'minVcpus': ?minVcpus,
      'placementGroup': ?placementGroup,
      'securityGroupIds': ?securityGroupIds,
      'spotIamFleetRole': ?spotIamFleetRole,
      'subnets': subnets,
      'tags': ?tags,
      'type': type,
    };
  }

  factory ComputeEnvironmentComputeResources.fromMap(Map<String, dynamic> map) {
    return ComputeEnvironmentComputeResources(
      allocationStrategy: (() { final guardedValue = map['allocationStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bidPercentage: (() { final guardedValue = map['bidPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      desiredVcpus: (() { final guardedValue = map['desiredVcpus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ec2Configurations: (() { final guardedValue = map['ec2Configurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ComputeEnvironmentComputeResourcesEc2Configuration>(guardedValue, (value) => ComputeEnvironmentComputeResourcesEc2Configuration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ec2KeyPair: (() { final guardedValue = map['ec2KeyPair']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageId: (() { final guardedValue = map['imageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceRole: (() { final guardedValue = map['instanceRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceTypes: (() { final guardedValue = map['instanceTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      launchTemplate: (() { final guardedValue = map['launchTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ComputeEnvironmentComputeResourcesLaunchTemplate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxVcpus: pulumi.Input.fromValue(map['maxVcpus'] as int),
      minVcpus: (() { final guardedValue = map['minVcpus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      placementGroup: (() { final guardedValue = map['placementGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      spotIamFleetRole: (() { final guardedValue = map['spotIamFleetRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnets: pulumi.Input.fromValue((map['subnets'] as List).cast<String>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
