// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'launch_template_block_device_mapping.dart';
import 'launch_template_capacity_reservation_specification.dart';
import 'launch_template_cpu_options.dart';
import 'launch_template_credit_specification.dart';
import 'launch_template_enclave_options.dart';
import 'launch_template_hibernation_options.dart';
import 'launch_template_iam_instance_profile.dart';
import 'launch_template_instance_market_options.dart';
import 'launch_template_instance_requirements.dart';
import 'launch_template_license_specification.dart';
import 'launch_template_maintenance_options.dart';
import 'launch_template_metadata_options.dart';
import 'launch_template_monitoring.dart';
import 'launch_template_network_interface.dart';
import 'launch_template_network_performance_options.dart';
import 'launch_template_placement.dart';
import 'launch_template_private_dns_name_options.dart';
import 'launch_template_secondary_interface.dart';
import 'launch_template_tag_specification.dart';

/// Input properties used for looking up and filtering LaunchTemplate resources.
class LaunchTemplateState {
  /// Amazon Resource Name (ARN) of the launch template.
  final pulumi.Input<String>? arn;
  /// Specify volumes to attach to the instance besides the volumes specified by the AMI.
  /// See Block Devices below for details.
  final pulumi.Input<List<LaunchTemplateBlockDeviceMapping>>? blockDeviceMappings;
  /// Targeting for EC2 capacity reservations. See Capacity Reservation Specification below for more details.
  final pulumi.Input<LaunchTemplateCapacityReservationSpecification>? capacityReservationSpecification;
  /// The CPU options for the instance. See CPU Options below for more details.
  final pulumi.Input<LaunchTemplateCpuOptions>? cpuOptions;
  /// Customize the credit specification of the instance. See Credit
  /// Specification below for more details.
  final pulumi.Input<LaunchTemplateCreditSpecification>? creditSpecification;
  /// Default Version of the launch template.
  final pulumi.Input<int>? defaultVersion;
  /// Description of the launch template.
  final pulumi.Input<String>? description;
  /// If true, enables [EC2 Instance Stop Protection](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-stop-protection.html).
  final pulumi.Input<bool>? disableApiStop;
  /// If `true`, enables [EC2 Instance
  /// Termination Protection](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_ChangingDisableAPITermination.html)
  final pulumi.Input<bool>? disableApiTermination;
  /// If `true`, the launched EC2 instance will be EBS-optimized.
  final pulumi.Input<String>? ebsOptimized;
  /// Enable Nitro Enclaves on launched instances. See Enclave Options below for more details.
  final pulumi.Input<LaunchTemplateEnclaveOptions>? enclaveOptions;
  /// The hibernation options for the instance. See Hibernation Options below for more details.
  final pulumi.Input<LaunchTemplateHibernationOptions>? hibernationOptions;
  /// The IAM Instance Profile to launch the instance with. See Instance Profile
  /// below for more details.
  final pulumi.Input<LaunchTemplateIamInstanceProfile>? iamInstanceProfile;
  /// The AMI from which to launch the instance or use a Systems Manager parameter convention e.g. `resolve:ssm:parameter-name`. See [docs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/create-launch-template.html#use-an-ssm-parameter-instead-of-an-ami-id) for more details.
  final pulumi.Input<String>? imageId;
  /// Shutdown behavior for the instance. Can be `stop` or `terminate`.
  /// (Default: `stop`).
  final pulumi.Input<String>? instanceInitiatedShutdownBehavior;
  /// The market (purchasing) option for the instance. See Market Options
  /// below for details.
  final pulumi.Input<LaunchTemplateInstanceMarketOptions>? instanceMarketOptions;
  /// The attribute requirements for the type of instance. If present then `instance_type` cannot be present.
  final pulumi.Input<LaunchTemplateInstanceRequirements>? instanceRequirements;
  /// The type of the instance. If present then `instance_requirements` cannot be present.
  final pulumi.Input<String>? instanceType;
  /// The kernel ID.
  final pulumi.Input<String>? kernelId;
  /// The key name to use for the instance.
  final pulumi.Input<String>? keyName;
  /// The latest version of the launch template.
  final pulumi.Input<int>? latestVersion;
  /// A list of license specifications to associate with. See License Specification below for more details.
  final pulumi.Input<List<LaunchTemplateLicenseSpecification>>? licenseSpecifications;
  /// The maintenance options for the instance. See Maintenance Options below for more details.
  final pulumi.Input<LaunchTemplateMaintenanceOptions>? maintenanceOptions;
  /// Customize the metadata options for the instance. See Metadata Options below for more details.
  final pulumi.Input<LaunchTemplateMetadataOptions>? metadataOptions;
  /// The monitoring option for the instance. See Monitoring below for more details.
  final pulumi.Input<LaunchTemplateMonitoring>? monitoring;
  /// The name of the launch template. If you leave this blank, the provider will auto-generate a unique name.
  final pulumi.Input<String>? name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;
  /// Customize network interfaces to be attached at instance boot time. See Network
  /// Interfaces below for more details.
  final pulumi.Input<List<LaunchTemplateNetworkInterface>>? networkInterfaces;
  final pulumi.Input<LaunchTemplateNetworkPerformanceOptions>? networkPerformanceOptions;
  /// The placement of the instance. See Placement below for more details.
  final pulumi.Input<LaunchTemplatePlacement>? placement;
  /// The options for the instance hostname. The default values are inherited from the subnet. See Private DNS Name Options below for more details.
  final pulumi.Input<LaunchTemplatePrivateDnsNameOptions>? privateDnsNameOptions;
  /// The ID of the RAM disk.
  final pulumi.Input<String>? ramDiskId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Secondary interfaces to associate with instances launched from the template. See Secondary
  /// Interfaces below for more details.
  final pulumi.Input<List<LaunchTemplateSecondaryInterface>>? secondaryInterfaces;
  /// A list of security group names to associate with. If you are creating Instances in a VPC, use
  /// `vpc_security_group_ids` instead.
  final pulumi.Input<List<String>>? securityGroupNames;
  /// The tags to apply to the resources during launch. See Tag Specifications below for more details. Default tags are currently not propagated to ASG created resources so you may wish to inject your default tags into this variable against the relevant child resource types created.
  final pulumi.Input<List<LaunchTemplateTagSpecification>>? tagSpecifications;
  /// A map of tags to assign to the launch template. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Whether to update Default Version each update. Conflicts with `default_version`.
  final pulumi.Input<bool>? updateDefaultVersion;
  /// The base64-encoded user data to provide when launching the instance.
  final pulumi.Input<String>? userData;
  /// A list of security group IDs to associate with. Conflicts with `network_interfaces.security_groups`
  final pulumi.Input<List<String>>? vpcSecurityGroupIds;

  /// Creates a new [LaunchTemplateState].
  /// [arn] Amazon Resource Name (ARN) of the launch template.
  /// [blockDeviceMappings] Specify volumes to attach to the instance besides the volumes specified by the AMI.
  /// [capacityReservationSpecification] Targeting for EC2 capacity reservations. See Capacity Reservation Specification below for more details.
  /// [cpuOptions] The CPU options for the instance. See CPU Options below for more details.
  /// [creditSpecification] Customize the credit specification of the instance. See Credit
  /// [defaultVersion] Default Version of the launch template.
  /// [description] Description of the launch template.
  /// [disableApiStop] If true, enables [EC2 Instance Stop Protection](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-stop-protection.html).
  /// [disableApiTermination] If `true`, enables [EC2 Instance
  /// [ebsOptimized] If `true`, the launched EC2 instance will be EBS-optimized.
  /// [enclaveOptions] Enable Nitro Enclaves on launched instances. See Enclave Options below for more details.
  /// [hibernationOptions] The hibernation options for the instance. See Hibernation Options below for more details.
  /// [iamInstanceProfile] The IAM Instance Profile to launch the instance with. See Instance Profile
  /// [imageId] The AMI from which to launch the instance or use a Systems Manager parameter convention e.g. `resolve:ssm:parameter-name`. See [docs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/create-launch-template.html#use-an-ssm-parameter-instead-of-an-ami-id) for more details.
  /// [instanceInitiatedShutdownBehavior] Shutdown behavior for the instance. Can be `stop` or `terminate`.
  /// [instanceMarketOptions] The market (purchasing) option for the instance. See Market Options
  /// [instanceRequirements] The attribute requirements for the type of instance. If present then `instance_type` cannot be present.
  /// [instanceType] The type of the instance. If present then `instance_requirements` cannot be present.
  /// [kernelId] The kernel ID.
  /// [keyName] The key name to use for the instance.
  /// [latestVersion] The latest version of the launch template.
  /// [licenseSpecifications] A list of license specifications to associate with. See License Specification below for more details.
  /// [maintenanceOptions] The maintenance options for the instance. See Maintenance Options below for more details.
  /// [metadataOptions] Customize the metadata options for the instance. See Metadata Options below for more details.
  /// [monitoring] The monitoring option for the instance. See Monitoring below for more details.
  /// [name] The name of the launch template. If you leave this blank, the provider will auto-generate a unique name.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [networkInterfaces] Customize network interfaces to be attached at instance boot time. See Network
  /// [networkPerformanceOptions] Optional.
  /// [placement] The placement of the instance. See Placement below for more details.
  /// [privateDnsNameOptions] The options for the instance hostname. The default values are inherited from the subnet. See Private DNS Name Options below for more details.
  /// [ramDiskId] The ID of the RAM disk.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [secondaryInterfaces] Secondary interfaces to associate with instances launched from the template. See Secondary
  /// [securityGroupNames] A list of security group names to associate with. If you are creating Instances in a VPC, use
  /// [tagSpecifications] The tags to apply to the resources during launch. See Tag Specifications below for more details. Default tags are currently not propagated to ASG created resources so you may wish to inject your default tags into this variable against the relevant child resource types created.
  /// [tags] A map of tags to assign to the launch template. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [updateDefaultVersion] Whether to update Default Version each update. Conflicts with `default_version`.
  /// [userData] The base64-encoded user data to provide when launching the instance.
  /// [vpcSecurityGroupIds] A list of security group IDs to associate with. Conflicts with `network_interfaces.security_groups`
  const LaunchTemplateState({
    this.arn,
    this.blockDeviceMappings,
    this.capacityReservationSpecification,
    this.cpuOptions,
    this.creditSpecification,
    this.defaultVersion,
    this.description,
    this.disableApiStop,
    this.disableApiTermination,
    this.ebsOptimized,
    this.enclaveOptions,
    this.hibernationOptions,
    this.iamInstanceProfile,
    this.imageId,
    this.instanceInitiatedShutdownBehavior,
    this.instanceMarketOptions,
    this.instanceRequirements,
    this.instanceType,
    this.kernelId,
    this.keyName,
    this.latestVersion,
    this.licenseSpecifications,
    this.maintenanceOptions,
    this.metadataOptions,
    this.monitoring,
    this.name,
    this.namePrefix,
    this.networkInterfaces,
    this.networkPerformanceOptions,
    this.placement,
    this.privateDnsNameOptions,
    this.ramDiskId,
    this.region,
    this.secondaryInterfaces,
    this.securityGroupNames,
    this.tagSpecifications,
    this.tags,
    this.tagsAll,
    this.updateDefaultVersion,
    this.userData,
    this.vpcSecurityGroupIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'blockDeviceMappings': ?pulumi.Input.mapOptionalInputValue<List<LaunchTemplateBlockDeviceMapping>, List<Map<String, dynamic>>>(blockDeviceMappings, (value) => pulumi.Input.encodeList<LaunchTemplateBlockDeviceMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'capacityReservationSpecification': ?pulumi.Input.mapOptionalInputValue<LaunchTemplateCapacityReservationSpecification, Map<String, dynamic>>(capacityReservationSpecification, (value) => value.toMap()),
      'cpuOptions': ?pulumi.Input.mapOptionalInputValue<LaunchTemplateCpuOptions, Map<String, dynamic>>(cpuOptions, (value) => value.toMap()),
      'creditSpecification': ?pulumi.Input.mapOptionalInputValue<LaunchTemplateCreditSpecification, Map<String, dynamic>>(creditSpecification, (value) => value.toMap()),
      'defaultVersion': ?defaultVersion,
      'description': ?description,
      'disableApiStop': ?disableApiStop,
      'disableApiTermination': ?disableApiTermination,
      'ebsOptimized': ?ebsOptimized,
      'enclaveOptions': ?pulumi.Input.mapOptionalInputValue<LaunchTemplateEnclaveOptions, Map<String, dynamic>>(enclaveOptions, (value) => value.toMap()),
      'hibernationOptions': ?pulumi.Input.mapOptionalInputValue<LaunchTemplateHibernationOptions, Map<String, dynamic>>(hibernationOptions, (value) => value.toMap()),
      'iamInstanceProfile': ?pulumi.Input.mapOptionalInputValue<LaunchTemplateIamInstanceProfile, Map<String, dynamic>>(iamInstanceProfile, (value) => value.toMap()),
      'imageId': ?imageId,
      'instanceInitiatedShutdownBehavior': ?instanceInitiatedShutdownBehavior,
      'instanceMarketOptions': ?pulumi.Input.mapOptionalInputValue<LaunchTemplateInstanceMarketOptions, Map<String, dynamic>>(instanceMarketOptions, (value) => value.toMap()),
      'instanceRequirements': ?pulumi.Input.mapOptionalInputValue<LaunchTemplateInstanceRequirements, Map<String, dynamic>>(instanceRequirements, (value) => value.toMap()),
      'instanceType': ?instanceType,
      'kernelId': ?kernelId,
      'keyName': ?keyName,
      'latestVersion': ?latestVersion,
      'licenseSpecifications': ?pulumi.Input.mapOptionalInputValue<List<LaunchTemplateLicenseSpecification>, List<Map<String, dynamic>>>(licenseSpecifications, (value) => pulumi.Input.encodeList<LaunchTemplateLicenseSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maintenanceOptions': ?pulumi.Input.mapOptionalInputValue<LaunchTemplateMaintenanceOptions, Map<String, dynamic>>(maintenanceOptions, (value) => value.toMap()),
      'metadataOptions': ?pulumi.Input.mapOptionalInputValue<LaunchTemplateMetadataOptions, Map<String, dynamic>>(metadataOptions, (value) => value.toMap()),
      'monitoring': ?pulumi.Input.mapOptionalInputValue<LaunchTemplateMonitoring, Map<String, dynamic>>(monitoring, (value) => value.toMap()),
      'name': ?name,
      'namePrefix': ?namePrefix,
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<LaunchTemplateNetworkInterface>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<LaunchTemplateNetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkPerformanceOptions': ?pulumi.Input.mapOptionalInputValue<LaunchTemplateNetworkPerformanceOptions, Map<String, dynamic>>(networkPerformanceOptions, (value) => value.toMap()),
      'placement': ?pulumi.Input.mapOptionalInputValue<LaunchTemplatePlacement, Map<String, dynamic>>(placement, (value) => value.toMap()),
      'privateDnsNameOptions': ?pulumi.Input.mapOptionalInputValue<LaunchTemplatePrivateDnsNameOptions, Map<String, dynamic>>(privateDnsNameOptions, (value) => value.toMap()),
      'ramDiskId': ?ramDiskId,
      'region': ?region,
      'secondaryInterfaces': ?pulumi.Input.mapOptionalInputValue<List<LaunchTemplateSecondaryInterface>, List<Map<String, dynamic>>>(secondaryInterfaces, (value) => pulumi.Input.encodeList<LaunchTemplateSecondaryInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'securityGroupNames': ?securityGroupNames,
      'tagSpecifications': ?pulumi.Input.mapOptionalInputValue<List<LaunchTemplateTagSpecification>, List<Map<String, dynamic>>>(tagSpecifications, (value) => pulumi.Input.encodeList<LaunchTemplateTagSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'updateDefaultVersion': ?updateDefaultVersion,
      'userData': ?userData,
      'vpcSecurityGroupIds': ?vpcSecurityGroupIds,
    };
  }

  factory LaunchTemplateState.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      blockDeviceMappings: (() { final guardedValue = map['blockDeviceMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LaunchTemplateBlockDeviceMapping>(guardedValue, (value) => LaunchTemplateBlockDeviceMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      capacityReservationSpecification: (() { final guardedValue = map['capacityReservationSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LaunchTemplateCapacityReservationSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cpuOptions: (() { final guardedValue = map['cpuOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LaunchTemplateCpuOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      creditSpecification: (() { final guardedValue = map['creditSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LaunchTemplateCreditSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultVersion: (() { final guardedValue = map['defaultVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableApiStop: (() { final guardedValue = map['disableApiStop']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disableApiTermination: (() { final guardedValue = map['disableApiTermination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ebsOptimized: (() { final guardedValue = map['ebsOptimized']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enclaveOptions: (() { final guardedValue = map['enclaveOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LaunchTemplateEnclaveOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hibernationOptions: (() { final guardedValue = map['hibernationOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LaunchTemplateHibernationOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      iamInstanceProfile: (() { final guardedValue = map['iamInstanceProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LaunchTemplateIamInstanceProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      imageId: (() { final guardedValue = map['imageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceInitiatedShutdownBehavior: (() { final guardedValue = map['instanceInitiatedShutdownBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceMarketOptions: (() { final guardedValue = map['instanceMarketOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LaunchTemplateInstanceMarketOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceRequirements: (() { final guardedValue = map['instanceRequirements']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LaunchTemplateInstanceRequirements.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kernelId: (() { final guardedValue = map['kernelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyName: (() { final guardedValue = map['keyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      latestVersion: (() { final guardedValue = map['latestVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      licenseSpecifications: (() { final guardedValue = map['licenseSpecifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LaunchTemplateLicenseSpecification>(guardedValue, (value) => LaunchTemplateLicenseSpecification.fromMap((value as Map).cast<String, dynamic>()))); })(),
      maintenanceOptions: (() { final guardedValue = map['maintenanceOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LaunchTemplateMaintenanceOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metadataOptions: (() { final guardedValue = map['metadataOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LaunchTemplateMetadataOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      monitoring: (() { final guardedValue = map['monitoring']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LaunchTemplateMonitoring.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namePrefix: (() { final guardedValue = map['namePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaces: (() { final guardedValue = map['networkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LaunchTemplateNetworkInterface>(guardedValue, (value) => LaunchTemplateNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))); })(),
      networkPerformanceOptions: (() { final guardedValue = map['networkPerformanceOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LaunchTemplateNetworkPerformanceOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      placement: (() { final guardedValue = map['placement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LaunchTemplatePlacement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateDnsNameOptions: (() { final guardedValue = map['privateDnsNameOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LaunchTemplatePrivateDnsNameOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ramDiskId: (() { final guardedValue = map['ramDiskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryInterfaces: (() { final guardedValue = map['secondaryInterfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LaunchTemplateSecondaryInterface>(guardedValue, (value) => LaunchTemplateSecondaryInterface.fromMap((value as Map).cast<String, dynamic>()))); })(),
      securityGroupNames: (() { final guardedValue = map['securityGroupNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tagSpecifications: (() { final guardedValue = map['tagSpecifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LaunchTemplateTagSpecification>(guardedValue, (value) => LaunchTemplateTagSpecification.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      updateDefaultVersion: (() { final guardedValue = map['updateDefaultVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      userData: (() { final guardedValue = map['userData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcSecurityGroupIds: (() { final guardedValue = map['vpcSecurityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

