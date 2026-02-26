// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../launch_template_block_device_mapping/launch_template_block_device_mapping.dart';
import '../launch_template_capacity_reservation_specification/launch_template_capacity_reservation_specification.dart';
import '../launch_template_cpu_options/launch_template_cpu_options.dart';
import '../launch_template_credit_specification/launch_template_credit_specification.dart';
import '../launch_template_enclave_options/launch_template_enclave_options.dart';
import '../launch_template_hibernation_options/launch_template_hibernation_options.dart';
import '../launch_template_iam_instance_profile/launch_template_iam_instance_profile.dart';
import '../launch_template_instance_market_options/launch_template_instance_market_options.dart';
import '../launch_template_instance_requirements/launch_template_instance_requirements.dart';
import '../launch_template_license_specification/launch_template_license_specification.dart';
import '../launch_template_maintenance_options/launch_template_maintenance_options.dart';
import '../launch_template_metadata_options/launch_template_metadata_options.dart';
import '../launch_template_monitoring/launch_template_monitoring.dart';
import '../launch_template_network_interface/launch_template_network_interface.dart';
import '../launch_template_network_performance_options/launch_template_network_performance_options.dart';
import '../launch_template_placement/launch_template_placement.dart';
import '../launch_template_private_dns_name_options/launch_template_private_dns_name_options.dart';
import '../launch_template_secondary_interface/launch_template_secondary_interface.dart';
import '../launch_template_tag_specification/launch_template_tag_specification.dart';

/// The set of arguments for LaunchTemplate.
class LaunchTemplateArgs {
  /// Specify volumes to attach to the instance besides the volumes specified by the AMI.
  /// See Block Devices below for details.
  final Input<List<LaunchTemplateBlockDeviceMapping>>? blockDeviceMappings;

  /// Targeting for EC2 capacity reservations. See Capacity Reservation Specification below for more details.
  final Input<LaunchTemplateCapacityReservationSpecification>?
      capacityReservationSpecification;

  /// The CPU options for the instance. See CPU Options below for more details.
  final Input<LaunchTemplateCpuOptions>? cpuOptions;

  /// Customize the credit specification of the instance. See Credit
  /// Specification below for more details.
  final Input<LaunchTemplateCreditSpecification>? creditSpecification;

  /// Default Version of the launch template.
  final Input<int>? defaultVersion;

  /// Description of the launch template.
  final Input<String>? description;

  /// If true, enables [EC2 Instance Stop Protection](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-stop-protection.html).
  final Input<bool>? disableApiStop;

  /// If <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, enables [EC2 Instance
  /// Termination Protection](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_ChangingDisableAPITermination.html)
  final Input<bool>? disableApiTermination;

  /// If <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, the launched EC2 instance will be EBS-optimized.
  final Input<String>? ebsOptimized;

  /// Enable Nitro Enclaves on launched instances. See Enclave Options below for more details.
  final Input<LaunchTemplateEnclaveOptions>? enclaveOptions;

  /// The hibernation options for the instance. See Hibernation Options below for more details.
  final Input<LaunchTemplateHibernationOptions>? hibernationOptions;

  /// The IAM Instance Profile to launch the instance with. See Instance Profile
  /// below for more details.
  final Input<LaunchTemplateIamInstanceProfile>? iamInstanceProfile;

  /// The AMI from which to launch the instance or use a Systems Manager parameter convention e.g. `resolve:ssm:parameter-name`. See [docs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/create-launch-template.html#use-an-ssm-parameter-instead-of-an-ami-id) for more details.
  final Input<String>? imageId;

  /// Shutdown behavior for the instance. Can be <span pulumi-lang-nodejs="`stop`" pulumi-lang-dotnet="`Stop`" pulumi-lang-go="`stop`" pulumi-lang-python="`stop`" pulumi-lang-yaml="`stop`" pulumi-lang-java="`stop`">`stop`</span> or <span pulumi-lang-nodejs="`terminate`" pulumi-lang-dotnet="`Terminate`" pulumi-lang-go="`terminate`" pulumi-lang-python="`terminate`" pulumi-lang-yaml="`terminate`" pulumi-lang-java="`terminate`">`terminate`</span>.
  /// (Default: <span pulumi-lang-nodejs="`stop`" pulumi-lang-dotnet="`Stop`" pulumi-lang-go="`stop`" pulumi-lang-python="`stop`" pulumi-lang-yaml="`stop`" pulumi-lang-java="`stop`">`stop`</span>).
  final Input<String>? instanceInitiatedShutdownBehavior;

  /// The market (purchasing) option for the instance. See Market Options
  /// below for details.
  final Input<LaunchTemplateInstanceMarketOptions>? instanceMarketOptions;

  /// The attribute requirements for the type of instance. If present then <span pulumi-lang-nodejs="`instanceType`" pulumi-lang-dotnet="`InstanceType`" pulumi-lang-go="`instanceType`" pulumi-lang-python="`instance_type`" pulumi-lang-yaml="`instanceType`" pulumi-lang-java="`instanceType`">`instance_type`</span> cannot be present.
  final Input<LaunchTemplateInstanceRequirements>? instanceRequirements;

  /// The type of the instance. If present then <span pulumi-lang-nodejs="`instanceRequirements`" pulumi-lang-dotnet="`InstanceRequirements`" pulumi-lang-go="`instanceRequirements`" pulumi-lang-python="`instance_requirements`" pulumi-lang-yaml="`instanceRequirements`" pulumi-lang-java="`instanceRequirements`">`instance_requirements`</span> cannot be present.
  final Input<String>? instanceType;

  /// The kernel ID.
  final Input<String>? kernelId;

  /// The key name to use for the instance.
  final Input<String>? keyName;

  /// A list of license specifications to associate with. See License Specification below for more details.
  final Input<List<LaunchTemplateLicenseSpecification>>? licenseSpecifications;

  /// The maintenance options for the instance. See Maintenance Options below for more details.
  final Input<LaunchTemplateMaintenanceOptions>? maintenanceOptions;

  /// Customize the metadata options for the instance. See Metadata Options below for more details.
  final Input<LaunchTemplateMetadataOptions>? metadataOptions;

  /// The monitoring option for the instance. See Monitoring below for more details.
  final Input<LaunchTemplateMonitoring>? monitoring;

  /// The name of the launch template. If you leave this blank, the provider will auto-generate a unique name.
  final Input<String>? name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  final Input<String>? namePrefix;

  /// Customize network interfaces to be attached at instance boot time. See Network
  /// Interfaces below for more details.
  final Input<List<LaunchTemplateNetworkInterface>>? networkInterfaces;
  final Input<LaunchTemplateNetworkPerformanceOptions>?
      networkPerformanceOptions;

  /// The placement of the instance. See Placement below for more details.
  final Input<LaunchTemplatePlacement>? placement;

  /// The options for the instance hostname. The default values are inherited from the subnet. See Private DNS Name Options below for more details.
  final Input<LaunchTemplatePrivateDnsNameOptions>? privateDnsNameOptions;

  /// The ID of the RAM disk.
  final Input<String>? ramDiskId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Secondary interfaces to associate with instances launched from the template. See Secondary
  /// Interfaces below for more details.
  final Input<List<LaunchTemplateSecondaryInterface>>? secondaryInterfaces;

  /// A list of security group names to associate with. If you are creating Instances in a VPC, use
  /// <span pulumi-lang-nodejs="`vpcSecurityGroupIds`" pulumi-lang-dotnet="`VpcSecurityGroupIds`" pulumi-lang-go="`vpcSecurityGroupIds`" pulumi-lang-python="`vpc_security_group_ids`" pulumi-lang-yaml="`vpcSecurityGroupIds`" pulumi-lang-java="`vpcSecurityGroupIds`">`vpc_security_group_ids`</span> instead.
  final Input<List<String>>? securityGroupNames;

  /// The tags to apply to the resources during launch. See Tag Specifications below for more details. Default tags are currently not propagated to ASG created resources so you may wish to inject your default tags into this variable against the relevant child resource types created.
  final Input<List<LaunchTemplateTagSpecification>>? tagSpecifications;

  /// A map of tags to assign to the launch template. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Whether to update Default Version each update. Conflicts with <span pulumi-lang-nodejs="`defaultVersion`" pulumi-lang-dotnet="`DefaultVersion`" pulumi-lang-go="`defaultVersion`" pulumi-lang-python="`default_version`" pulumi-lang-yaml="`defaultVersion`" pulumi-lang-java="`defaultVersion`">`default_version`</span>.
  final Input<bool>? updateDefaultVersion;

  /// The base64-encoded user data to provide when launching the instance.
  final Input<String>? userData;

  /// A list of security group IDs to associate with. Conflicts with `network_interfaces.security_groups`
  final Input<List<String>>? vpcSecurityGroupIds;

  LaunchTemplateArgs({
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
    this.updateDefaultVersion,
    this.userData,
    this.vpcSecurityGroupIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final blockDeviceMappingsValue = blockDeviceMappings;
    if (blockDeviceMappingsValue != null) {
      map['blockDeviceMappings'] = Input.mapOptionalInputValue<
              List<LaunchTemplateBlockDeviceMapping>,
              List<Map<String, dynamic>>>(
          blockDeviceMappingsValue,
          (value) => Input.encodeList<LaunchTemplateBlockDeviceMapping,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final capacityReservationSpecificationValue =
        capacityReservationSpecification;
    if (capacityReservationSpecificationValue != null) {
      map['capacityReservationSpecification'] = Input.mapOptionalInputValue<
              LaunchTemplateCapacityReservationSpecification,
              Map<String, dynamic>>(
          capacityReservationSpecificationValue, (value) => value.toMap());
    }
    final cpuOptionsValue = cpuOptions;
    if (cpuOptionsValue != null) {
      map['cpuOptions'] = Input.mapOptionalInputValue<LaunchTemplateCpuOptions,
          Map<String, dynamic>>(cpuOptionsValue, (value) => value.toMap());
    }
    final creditSpecificationValue = creditSpecification;
    if (creditSpecificationValue != null) {
      map['creditSpecification'] = Input.mapOptionalInputValue<
              LaunchTemplateCreditSpecification, Map<String, dynamic>>(
          creditSpecificationValue, (value) => value.toMap());
    }
    final defaultVersionValue = defaultVersion;
    if (defaultVersionValue != null) {
      map['defaultVersion'] = defaultVersionValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final disableApiStopValue = disableApiStop;
    if (disableApiStopValue != null) {
      map['disableApiStop'] = disableApiStopValue;
    }
    final disableApiTerminationValue = disableApiTermination;
    if (disableApiTerminationValue != null) {
      map['disableApiTermination'] = disableApiTerminationValue;
    }
    final ebsOptimizedValue = ebsOptimized;
    if (ebsOptimizedValue != null) {
      map['ebsOptimized'] = ebsOptimizedValue;
    }
    final enclaveOptionsValue = enclaveOptions;
    if (enclaveOptionsValue != null) {
      map['enclaveOptions'] = Input.mapOptionalInputValue<
          LaunchTemplateEnclaveOptions,
          Map<String, dynamic>>(enclaveOptionsValue, (value) => value.toMap());
    }
    final hibernationOptionsValue = hibernationOptions;
    if (hibernationOptionsValue != null) {
      map['hibernationOptions'] = Input.mapOptionalInputValue<
              LaunchTemplateHibernationOptions, Map<String, dynamic>>(
          hibernationOptionsValue, (value) => value.toMap());
    }
    final iamInstanceProfileValue = iamInstanceProfile;
    if (iamInstanceProfileValue != null) {
      map['iamInstanceProfile'] = Input.mapOptionalInputValue<
              LaunchTemplateIamInstanceProfile, Map<String, dynamic>>(
          iamInstanceProfileValue, (value) => value.toMap());
    }
    final imageIdValue = imageId;
    if (imageIdValue != null) {
      map['imageId'] = imageIdValue;
    }
    final instanceInitiatedShutdownBehaviorValue =
        instanceInitiatedShutdownBehavior;
    if (instanceInitiatedShutdownBehaviorValue != null) {
      map['instanceInitiatedShutdownBehavior'] =
          instanceInitiatedShutdownBehaviorValue;
    }
    final instanceMarketOptionsValue = instanceMarketOptions;
    if (instanceMarketOptionsValue != null) {
      map['instanceMarketOptions'] = Input.mapOptionalInputValue<
              LaunchTemplateInstanceMarketOptions, Map<String, dynamic>>(
          instanceMarketOptionsValue, (value) => value.toMap());
    }
    final instanceRequirementsValue = instanceRequirements;
    if (instanceRequirementsValue != null) {
      map['instanceRequirements'] = Input.mapOptionalInputValue<
              LaunchTemplateInstanceRequirements, Map<String, dynamic>>(
          instanceRequirementsValue, (value) => value.toMap());
    }
    final instanceTypeValue = instanceType;
    if (instanceTypeValue != null) {
      map['instanceType'] = instanceTypeValue;
    }
    final kernelIdValue = kernelId;
    if (kernelIdValue != null) {
      map['kernelId'] = kernelIdValue;
    }
    final keyNameValue = keyName;
    if (keyNameValue != null) {
      map['keyName'] = keyNameValue;
    }
    final licenseSpecificationsValue = licenseSpecifications;
    if (licenseSpecificationsValue != null) {
      map['licenseSpecifications'] = Input.mapOptionalInputValue<
              List<LaunchTemplateLicenseSpecification>,
              List<Map<String, dynamic>>>(
          licenseSpecificationsValue,
          (value) => Input.encodeList<LaunchTemplateLicenseSpecification,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final maintenanceOptionsValue = maintenanceOptions;
    if (maintenanceOptionsValue != null) {
      map['maintenanceOptions'] = Input.mapOptionalInputValue<
              LaunchTemplateMaintenanceOptions, Map<String, dynamic>>(
          maintenanceOptionsValue, (value) => value.toMap());
    }
    final metadataOptionsValue = metadataOptions;
    if (metadataOptionsValue != null) {
      map['metadataOptions'] = Input.mapOptionalInputValue<
          LaunchTemplateMetadataOptions,
          Map<String, dynamic>>(metadataOptionsValue, (value) => value.toMap());
    }
    final monitoringValue = monitoring;
    if (monitoringValue != null) {
      map['monitoring'] = Input.mapOptionalInputValue<LaunchTemplateMonitoring,
          Map<String, dynamic>>(monitoringValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    final networkInterfacesValue = networkInterfaces;
    if (networkInterfacesValue != null) {
      map['networkInterfaces'] = Input.mapOptionalInputValue<
              List<LaunchTemplateNetworkInterface>, List<Map<String, dynamic>>>(
          networkInterfacesValue,
          (value) => Input.encodeList<LaunchTemplateNetworkInterface,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final networkPerformanceOptionsValue = networkPerformanceOptions;
    if (networkPerformanceOptionsValue != null) {
      map['networkPerformanceOptions'] = Input.mapOptionalInputValue<
              LaunchTemplateNetworkPerformanceOptions, Map<String, dynamic>>(
          networkPerformanceOptionsValue, (value) => value.toMap());
    }
    final placementValue = placement;
    if (placementValue != null) {
      map['placement'] = Input.mapOptionalInputValue<LaunchTemplatePlacement,
          Map<String, dynamic>>(placementValue, (value) => value.toMap());
    }
    final privateDnsNameOptionsValue = privateDnsNameOptions;
    if (privateDnsNameOptionsValue != null) {
      map['privateDnsNameOptions'] = Input.mapOptionalInputValue<
              LaunchTemplatePrivateDnsNameOptions, Map<String, dynamic>>(
          privateDnsNameOptionsValue, (value) => value.toMap());
    }
    final ramDiskIdValue = ramDiskId;
    if (ramDiskIdValue != null) {
      map['ramDiskId'] = ramDiskIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final secondaryInterfacesValue = secondaryInterfaces;
    if (secondaryInterfacesValue != null) {
      map['secondaryInterfaces'] = Input.mapOptionalInputValue<
              List<LaunchTemplateSecondaryInterface>,
              List<Map<String, dynamic>>>(
          secondaryInterfacesValue,
          (value) => Input.encodeList<LaunchTemplateSecondaryInterface,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final securityGroupNamesValue = securityGroupNames;
    if (securityGroupNamesValue != null) {
      map['securityGroupNames'] = securityGroupNamesValue;
    }
    final tagSpecificationsValue = tagSpecifications;
    if (tagSpecificationsValue != null) {
      map['tagSpecifications'] = Input.mapOptionalInputValue<
              List<LaunchTemplateTagSpecification>, List<Map<String, dynamic>>>(
          tagSpecificationsValue,
          (value) => Input.encodeList<LaunchTemplateTagSpecification,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final updateDefaultVersionValue = updateDefaultVersion;
    if (updateDefaultVersionValue != null) {
      map['updateDefaultVersion'] = updateDefaultVersionValue;
    }
    final userDataValue = userData;
    if (userDataValue != null) {
      map['userData'] = userDataValue;
    }
    final vpcSecurityGroupIdsValue = vpcSecurityGroupIds;
    if (vpcSecurityGroupIdsValue != null) {
      map['vpcSecurityGroupIds'] = vpcSecurityGroupIdsValue;
    }
    return map;
  }

  factory LaunchTemplateArgs.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateArgs(
      blockDeviceMappings:
          Input.asOptionalInput<List<LaunchTemplateBlockDeviceMapping>>(
              map['blockDeviceMappings']),
      capacityReservationSpecification:
          Input.asOptionalInput<LaunchTemplateCapacityReservationSpecification>(
              map['capacityReservationSpecification']),
      cpuOptions:
          Input.asOptionalInput<LaunchTemplateCpuOptions>(map['cpuOptions']),
      creditSpecification:
          Input.asOptionalInput<LaunchTemplateCreditSpecification>(
              map['creditSpecification']),
      defaultVersion: Input.asOptionalInput<int>(map['defaultVersion']),
      description: Input.asOptionalInput<String>(map['description']),
      disableApiStop: Input.asOptionalInput<bool>(map['disableApiStop']),
      disableApiTermination:
          Input.asOptionalInput<bool>(map['disableApiTermination']),
      ebsOptimized: Input.asOptionalInput<String>(map['ebsOptimized']),
      enclaveOptions: Input.asOptionalInput<LaunchTemplateEnclaveOptions>(
          map['enclaveOptions']),
      hibernationOptions:
          Input.asOptionalInput<LaunchTemplateHibernationOptions>(
              map['hibernationOptions']),
      iamInstanceProfile:
          Input.asOptionalInput<LaunchTemplateIamInstanceProfile>(
              map['iamInstanceProfile']),
      imageId: Input.asOptionalInput<String>(map['imageId']),
      instanceInitiatedShutdownBehavior: Input.asOptionalInput<String>(
          map['instanceInitiatedShutdownBehavior']),
      instanceMarketOptions:
          Input.asOptionalInput<LaunchTemplateInstanceMarketOptions>(
              map['instanceMarketOptions']),
      instanceRequirements:
          Input.asOptionalInput<LaunchTemplateInstanceRequirements>(
              map['instanceRequirements']),
      instanceType: Input.asOptionalInput<String>(map['instanceType']),
      kernelId: Input.asOptionalInput<String>(map['kernelId']),
      keyName: Input.asOptionalInput<String>(map['keyName']),
      licenseSpecifications:
          Input.asOptionalInput<List<LaunchTemplateLicenseSpecification>>(
              map['licenseSpecifications']),
      maintenanceOptions:
          Input.asOptionalInput<LaunchTemplateMaintenanceOptions>(
              map['maintenanceOptions']),
      metadataOptions: Input.asOptionalInput<LaunchTemplateMetadataOptions>(
          map['metadataOptions']),
      monitoring:
          Input.asOptionalInput<LaunchTemplateMonitoring>(map['monitoring']),
      name: Input.asOptionalInput<String>(map['name']),
      namePrefix: Input.asOptionalInput<String>(map['namePrefix']),
      networkInterfaces:
          Input.asOptionalInput<List<LaunchTemplateNetworkInterface>>(
              map['networkInterfaces']),
      networkPerformanceOptions:
          Input.asOptionalInput<LaunchTemplateNetworkPerformanceOptions>(
              map['networkPerformanceOptions']),
      placement:
          Input.asOptionalInput<LaunchTemplatePlacement>(map['placement']),
      privateDnsNameOptions:
          Input.asOptionalInput<LaunchTemplatePrivateDnsNameOptions>(
              map['privateDnsNameOptions']),
      ramDiskId: Input.asOptionalInput<String>(map['ramDiskId']),
      region: Input.asOptionalInput<String>(map['region']),
      secondaryInterfaces:
          Input.asOptionalInput<List<LaunchTemplateSecondaryInterface>>(
              map['secondaryInterfaces']),
      securityGroupNames:
          Input.asOptionalInput<List<String>>(map['securityGroupNames']),
      tagSpecifications:
          Input.asOptionalInput<List<LaunchTemplateTagSpecification>>(
              map['tagSpecifications']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      updateDefaultVersion:
          Input.asOptionalInput<bool>(map['updateDefaultVersion']),
      userData: Input.asOptionalInput<String>(map['userData']),
      vpcSecurityGroupIds:
          Input.asOptionalInput<List<String>>(map['vpcSecurityGroupIds']),
    );
  }
}
