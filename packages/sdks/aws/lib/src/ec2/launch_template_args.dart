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

/// {@template pulumi_ec2_launch_template_launch_template_args_doc}
/// The set of arguments for LaunchTemplate.
/// {@endtemplate}
/// {@macro pulumi_ec2_launch_template_launch_template_args_doc}
class LaunchTemplateArgs {
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
  /// Whether to update Default Version each update. Conflicts with `default_version`.
  final pulumi.Input<bool>? updateDefaultVersion;
  /// The base64-encoded user data to provide when launching the instance.
  final pulumi.Input<String>? userData;
  /// A list of security group IDs to associate with. Conflicts with `network_interfaces.security_groups`
  final pulumi.Input<List<String>>? vpcSecurityGroupIds;

  /// Creates a new [LaunchTemplateArgs].
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
  /// [updateDefaultVersion] Whether to update Default Version each update. Conflicts with `default_version`.
  /// [userData] The base64-encoded user data to provide when launching the instance.
  /// [vpcSecurityGroupIds] A list of security group IDs to associate with. Conflicts with `network_interfaces.security_groups`
  LaunchTemplateArgs({
    pulumi.Output<List<LaunchTemplateBlockDeviceMapping>>? blockDeviceMappings,
    pulumi.Output<LaunchTemplateCapacityReservationSpecification>? capacityReservationSpecification,
    pulumi.Output<LaunchTemplateCpuOptions>? cpuOptions,
    pulumi.Output<LaunchTemplateCreditSpecification>? creditSpecification,
    pulumi.Output<int>? defaultVersion,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? disableApiStop,
    pulumi.Output<bool>? disableApiTermination,
    pulumi.Output<String>? ebsOptimized,
    pulumi.Output<LaunchTemplateEnclaveOptions>? enclaveOptions,
    pulumi.Output<LaunchTemplateHibernationOptions>? hibernationOptions,
    pulumi.Output<LaunchTemplateIamInstanceProfile>? iamInstanceProfile,
    pulumi.Output<String>? imageId,
    pulumi.Output<String>? instanceInitiatedShutdownBehavior,
    pulumi.Output<LaunchTemplateInstanceMarketOptions>? instanceMarketOptions,
    pulumi.Output<LaunchTemplateInstanceRequirements>? instanceRequirements,
    pulumi.Output<String>? instanceType,
    pulumi.Output<String>? kernelId,
    pulumi.Output<String>? keyName,
    pulumi.Output<List<LaunchTemplateLicenseSpecification>>? licenseSpecifications,
    pulumi.Output<LaunchTemplateMaintenanceOptions>? maintenanceOptions,
    pulumi.Output<LaunchTemplateMetadataOptions>? metadataOptions,
    pulumi.Output<LaunchTemplateMonitoring>? monitoring,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namePrefix,
    pulumi.Output<List<LaunchTemplateNetworkInterface>>? networkInterfaces,
    pulumi.Output<LaunchTemplateNetworkPerformanceOptions>? networkPerformanceOptions,
    pulumi.Output<LaunchTemplatePlacement>? placement,
    pulumi.Output<LaunchTemplatePrivateDnsNameOptions>? privateDnsNameOptions,
    pulumi.Output<String>? ramDiskId,
    pulumi.Output<String>? region,
    pulumi.Output<List<LaunchTemplateSecondaryInterface>>? secondaryInterfaces,
    pulumi.Output<List<String>>? securityGroupNames,
    pulumi.Output<List<LaunchTemplateTagSpecification>>? tagSpecifications,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<bool>? updateDefaultVersion,
    pulumi.Output<String>? userData,
    pulumi.Output<List<String>>? vpcSecurityGroupIds,
  }) :
      blockDeviceMappings = pulumi.Input.asOptionalInput<List<LaunchTemplateBlockDeviceMapping>>(blockDeviceMappings),
      capacityReservationSpecification = pulumi.Input.asOptionalInput<LaunchTemplateCapacityReservationSpecification>(capacityReservationSpecification),
      cpuOptions = pulumi.Input.asOptionalInput<LaunchTemplateCpuOptions>(cpuOptions),
      creditSpecification = pulumi.Input.asOptionalInput<LaunchTemplateCreditSpecification>(creditSpecification),
      defaultVersion = pulumi.Input.asOptionalInput<int>(defaultVersion),
      description = pulumi.Input.asOptionalInput<String>(description),
      disableApiStop = pulumi.Input.asOptionalInput<bool>(disableApiStop),
      disableApiTermination = pulumi.Input.asOptionalInput<bool>(disableApiTermination),
      ebsOptimized = pulumi.Input.asOptionalInput<String>(ebsOptimized),
      enclaveOptions = pulumi.Input.asOptionalInput<LaunchTemplateEnclaveOptions>(enclaveOptions),
      hibernationOptions = pulumi.Input.asOptionalInput<LaunchTemplateHibernationOptions>(hibernationOptions),
      iamInstanceProfile = pulumi.Input.asOptionalInput<LaunchTemplateIamInstanceProfile>(iamInstanceProfile),
      imageId = pulumi.Input.asOptionalInput<String>(imageId),
      instanceInitiatedShutdownBehavior = pulumi.Input.asOptionalInput<String>(instanceInitiatedShutdownBehavior),
      instanceMarketOptions = pulumi.Input.asOptionalInput<LaunchTemplateInstanceMarketOptions>(instanceMarketOptions),
      instanceRequirements = pulumi.Input.asOptionalInput<LaunchTemplateInstanceRequirements>(instanceRequirements),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      kernelId = pulumi.Input.asOptionalInput<String>(kernelId),
      keyName = pulumi.Input.asOptionalInput<String>(keyName),
      licenseSpecifications = pulumi.Input.asOptionalInput<List<LaunchTemplateLicenseSpecification>>(licenseSpecifications),
      maintenanceOptions = pulumi.Input.asOptionalInput<LaunchTemplateMaintenanceOptions>(maintenanceOptions),
      metadataOptions = pulumi.Input.asOptionalInput<LaunchTemplateMetadataOptions>(metadataOptions),
      monitoring = pulumi.Input.asOptionalInput<LaunchTemplateMonitoring>(monitoring),
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      networkInterfaces = pulumi.Input.asOptionalInput<List<LaunchTemplateNetworkInterface>>(networkInterfaces),
      networkPerformanceOptions = pulumi.Input.asOptionalInput<LaunchTemplateNetworkPerformanceOptions>(networkPerformanceOptions),
      placement = pulumi.Input.asOptionalInput<LaunchTemplatePlacement>(placement),
      privateDnsNameOptions = pulumi.Input.asOptionalInput<LaunchTemplatePrivateDnsNameOptions>(privateDnsNameOptions),
      ramDiskId = pulumi.Input.asOptionalInput<String>(ramDiskId),
      region = pulumi.Input.asOptionalInput<String>(region),
      secondaryInterfaces = pulumi.Input.asOptionalInput<List<LaunchTemplateSecondaryInterface>>(secondaryInterfaces),
      securityGroupNames = pulumi.Input.asOptionalInput<List<String>>(securityGroupNames),
      tagSpecifications = pulumi.Input.asOptionalInput<List<LaunchTemplateTagSpecification>>(tagSpecifications),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      updateDefaultVersion = pulumi.Input.asOptionalInput<bool>(updateDefaultVersion),
      userData = pulumi.Input.asOptionalInput<String>(userData),
      vpcSecurityGroupIds = pulumi.Input.asOptionalInput<List<String>>(vpcSecurityGroupIds);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
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
      'updateDefaultVersion': ?updateDefaultVersion,
      'userData': ?userData,
      'vpcSecurityGroupIds': ?vpcSecurityGroupIds,
    };
  }

  factory LaunchTemplateArgs.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateArgs(
      blockDeviceMappings: map['blockDeviceMappings'] == null ? null : pulumi.Output.create<List<LaunchTemplateBlockDeviceMapping>>(pulumi.Input.decodeList<LaunchTemplateBlockDeviceMapping>(map['blockDeviceMappings'], (value) => LaunchTemplateBlockDeviceMapping.fromMap((value as Map).cast<String, dynamic>()))),
      capacityReservationSpecification: map['capacityReservationSpecification'] == null ? null : pulumi.Output.create<LaunchTemplateCapacityReservationSpecification>(LaunchTemplateCapacityReservationSpecification.fromMap((map['capacityReservationSpecification'] as Map).cast<String, dynamic>())),
      cpuOptions: map['cpuOptions'] == null ? null : pulumi.Output.create<LaunchTemplateCpuOptions>(LaunchTemplateCpuOptions.fromMap((map['cpuOptions'] as Map).cast<String, dynamic>())),
      creditSpecification: map['creditSpecification'] == null ? null : pulumi.Output.create<LaunchTemplateCreditSpecification>(LaunchTemplateCreditSpecification.fromMap((map['creditSpecification'] as Map).cast<String, dynamic>())),
      defaultVersion: map['defaultVersion'] == null ? null : pulumi.Output.create<int>(map['defaultVersion'] as int),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      disableApiStop: map['disableApiStop'] == null ? null : pulumi.Output.create<bool>(map['disableApiStop'] as bool),
      disableApiTermination: map['disableApiTermination'] == null ? null : pulumi.Output.create<bool>(map['disableApiTermination'] as bool),
      ebsOptimized: map['ebsOptimized'] == null ? null : pulumi.Output.create<String>(map['ebsOptimized'] as String),
      enclaveOptions: map['enclaveOptions'] == null ? null : pulumi.Output.create<LaunchTemplateEnclaveOptions>(LaunchTemplateEnclaveOptions.fromMap((map['enclaveOptions'] as Map).cast<String, dynamic>())),
      hibernationOptions: map['hibernationOptions'] == null ? null : pulumi.Output.create<LaunchTemplateHibernationOptions>(LaunchTemplateHibernationOptions.fromMap((map['hibernationOptions'] as Map).cast<String, dynamic>())),
      iamInstanceProfile: map['iamInstanceProfile'] == null ? null : pulumi.Output.create<LaunchTemplateIamInstanceProfile>(LaunchTemplateIamInstanceProfile.fromMap((map['iamInstanceProfile'] as Map).cast<String, dynamic>())),
      imageId: map['imageId'] == null ? null : pulumi.Output.create<String>(map['imageId'] as String),
      instanceInitiatedShutdownBehavior: map['instanceInitiatedShutdownBehavior'] == null ? null : pulumi.Output.create<String>(map['instanceInitiatedShutdownBehavior'] as String),
      instanceMarketOptions: map['instanceMarketOptions'] == null ? null : pulumi.Output.create<LaunchTemplateInstanceMarketOptions>(LaunchTemplateInstanceMarketOptions.fromMap((map['instanceMarketOptions'] as Map).cast<String, dynamic>())),
      instanceRequirements: map['instanceRequirements'] == null ? null : pulumi.Output.create<LaunchTemplateInstanceRequirements>(LaunchTemplateInstanceRequirements.fromMap((map['instanceRequirements'] as Map).cast<String, dynamic>())),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      kernelId: map['kernelId'] == null ? null : pulumi.Output.create<String>(map['kernelId'] as String),
      keyName: map['keyName'] == null ? null : pulumi.Output.create<String>(map['keyName'] as String),
      licenseSpecifications: map['licenseSpecifications'] == null ? null : pulumi.Output.create<List<LaunchTemplateLicenseSpecification>>(pulumi.Input.decodeList<LaunchTemplateLicenseSpecification>(map['licenseSpecifications'], (value) => LaunchTemplateLicenseSpecification.fromMap((value as Map).cast<String, dynamic>()))),
      maintenanceOptions: map['maintenanceOptions'] == null ? null : pulumi.Output.create<LaunchTemplateMaintenanceOptions>(LaunchTemplateMaintenanceOptions.fromMap((map['maintenanceOptions'] as Map).cast<String, dynamic>())),
      metadataOptions: map['metadataOptions'] == null ? null : pulumi.Output.create<LaunchTemplateMetadataOptions>(LaunchTemplateMetadataOptions.fromMap((map['metadataOptions'] as Map).cast<String, dynamic>())),
      monitoring: map['monitoring'] == null ? null : pulumi.Output.create<LaunchTemplateMonitoring>(LaunchTemplateMonitoring.fromMap((map['monitoring'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      networkInterfaces: map['networkInterfaces'] == null ? null : pulumi.Output.create<List<LaunchTemplateNetworkInterface>>(pulumi.Input.decodeList<LaunchTemplateNetworkInterface>(map['networkInterfaces'], (value) => LaunchTemplateNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))),
      networkPerformanceOptions: map['networkPerformanceOptions'] == null ? null : pulumi.Output.create<LaunchTemplateNetworkPerformanceOptions>(LaunchTemplateNetworkPerformanceOptions.fromMap((map['networkPerformanceOptions'] as Map).cast<String, dynamic>())),
      placement: map['placement'] == null ? null : pulumi.Output.create<LaunchTemplatePlacement>(LaunchTemplatePlacement.fromMap((map['placement'] as Map).cast<String, dynamic>())),
      privateDnsNameOptions: map['privateDnsNameOptions'] == null ? null : pulumi.Output.create<LaunchTemplatePrivateDnsNameOptions>(LaunchTemplatePrivateDnsNameOptions.fromMap((map['privateDnsNameOptions'] as Map).cast<String, dynamic>())),
      ramDiskId: map['ramDiskId'] == null ? null : pulumi.Output.create<String>(map['ramDiskId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      secondaryInterfaces: map['secondaryInterfaces'] == null ? null : pulumi.Output.create<List<LaunchTemplateSecondaryInterface>>(pulumi.Input.decodeList<LaunchTemplateSecondaryInterface>(map['secondaryInterfaces'], (value) => LaunchTemplateSecondaryInterface.fromMap((value as Map).cast<String, dynamic>()))),
      securityGroupNames: map['securityGroupNames'] == null ? null : pulumi.Output.create<List<String>>((map['securityGroupNames'] as List).cast<String>()),
      tagSpecifications: map['tagSpecifications'] == null ? null : pulumi.Output.create<List<LaunchTemplateTagSpecification>>(pulumi.Input.decodeList<LaunchTemplateTagSpecification>(map['tagSpecifications'], (value) => LaunchTemplateTagSpecification.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      updateDefaultVersion: map['updateDefaultVersion'] == null ? null : pulumi.Output.create<bool>(map['updateDefaultVersion'] as bool),
      userData: map['userData'] == null ? null : pulumi.Output.create<String>(map['userData'] as String),
      vpcSecurityGroupIds: map['vpcSecurityGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['vpcSecurityGroupIds'] as List).cast<String>()),
    );
  }
}

