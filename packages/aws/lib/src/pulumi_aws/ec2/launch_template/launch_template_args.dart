// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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
  final pulumi.Input<List<LaunchTemplateBlockDeviceMapping>>?
      blockDeviceMappings;

  /// Targeting for EC2 capacity reservations. See Capacity Reservation Specification below for more details.
  final pulumi.Input<LaunchTemplateCapacityReservationSpecification>?
      capacityReservationSpecification;

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
  final pulumi.Input<LaunchTemplateInstanceMarketOptions>?
      instanceMarketOptions;

  /// The attribute requirements for the type of instance. If present then `instance_type` cannot be present.
  final pulumi.Input<LaunchTemplateInstanceRequirements>? instanceRequirements;

  /// The type of the instance. If present then `instance_requirements` cannot be present.
  final pulumi.Input<String>? instanceType;

  /// The kernel ID.
  final pulumi.Input<String>? kernelId;

  /// The key name to use for the instance.
  final pulumi.Input<String>? keyName;

  /// A list of license specifications to associate with. See License Specification below for more details.
  final pulumi.Input<List<LaunchTemplateLicenseSpecification>>?
      licenseSpecifications;

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
  final pulumi.Input<LaunchTemplateNetworkPerformanceOptions>?
      networkPerformanceOptions;

  /// The placement of the instance. See Placement below for more details.
  final pulumi.Input<LaunchTemplatePlacement>? placement;

  /// The options for the instance hostname. The default values are inherited from the subnet. See Private DNS Name Options below for more details.
  final pulumi.Input<LaunchTemplatePrivateDnsNameOptions>?
      privateDnsNameOptions;

  /// The ID of the RAM disk.
  final pulumi.Input<String>? ramDiskId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Secondary interfaces to associate with instances launched from the template. See Secondary
  /// Interfaces below for more details.
  final pulumi.Input<List<LaunchTemplateSecondaryInterface>>?
      secondaryInterfaces;

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
      map['blockDeviceMappings'] = pulumi.Input.mapOptionalInputValue<
              List<LaunchTemplateBlockDeviceMapping>,
              List<Map<String, dynamic>>>(
          blockDeviceMappingsValue,
          (value) => pulumi.Input.encodeList<LaunchTemplateBlockDeviceMapping,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final capacityReservationSpecificationValue =
        capacityReservationSpecification;
    if (capacityReservationSpecificationValue != null) {
      map['capacityReservationSpecification'] =
          pulumi.Input.mapOptionalInputValue<
                  LaunchTemplateCapacityReservationSpecification,
                  Map<String, dynamic>>(
              capacityReservationSpecificationValue, (value) => value.toMap());
    }
    final cpuOptionsValue = cpuOptions;
    if (cpuOptionsValue != null) {
      map['cpuOptions'] = pulumi.Input.mapOptionalInputValue<
          LaunchTemplateCpuOptions,
          Map<String, dynamic>>(cpuOptionsValue, (value) => value.toMap());
    }
    final creditSpecificationValue = creditSpecification;
    if (creditSpecificationValue != null) {
      map['creditSpecification'] = pulumi.Input.mapOptionalInputValue<
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
      map['enclaveOptions'] = pulumi.Input.mapOptionalInputValue<
          LaunchTemplateEnclaveOptions,
          Map<String, dynamic>>(enclaveOptionsValue, (value) => value.toMap());
    }
    final hibernationOptionsValue = hibernationOptions;
    if (hibernationOptionsValue != null) {
      map['hibernationOptions'] = pulumi.Input.mapOptionalInputValue<
              LaunchTemplateHibernationOptions, Map<String, dynamic>>(
          hibernationOptionsValue, (value) => value.toMap());
    }
    final iamInstanceProfileValue = iamInstanceProfile;
    if (iamInstanceProfileValue != null) {
      map['iamInstanceProfile'] = pulumi.Input.mapOptionalInputValue<
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
      map['instanceMarketOptions'] = pulumi.Input.mapOptionalInputValue<
              LaunchTemplateInstanceMarketOptions, Map<String, dynamic>>(
          instanceMarketOptionsValue, (value) => value.toMap());
    }
    final instanceRequirementsValue = instanceRequirements;
    if (instanceRequirementsValue != null) {
      map['instanceRequirements'] = pulumi.Input.mapOptionalInputValue<
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
      map['licenseSpecifications'] = pulumi.Input.mapOptionalInputValue<
              List<LaunchTemplateLicenseSpecification>,
              List<Map<String, dynamic>>>(
          licenseSpecificationsValue,
          (value) => pulumi.Input.encodeList<LaunchTemplateLicenseSpecification,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final maintenanceOptionsValue = maintenanceOptions;
    if (maintenanceOptionsValue != null) {
      map['maintenanceOptions'] = pulumi.Input.mapOptionalInputValue<
              LaunchTemplateMaintenanceOptions, Map<String, dynamic>>(
          maintenanceOptionsValue, (value) => value.toMap());
    }
    final metadataOptionsValue = metadataOptions;
    if (metadataOptionsValue != null) {
      map['metadataOptions'] = pulumi.Input.mapOptionalInputValue<
          LaunchTemplateMetadataOptions,
          Map<String, dynamic>>(metadataOptionsValue, (value) => value.toMap());
    }
    final monitoringValue = monitoring;
    if (monitoringValue != null) {
      map['monitoring'] = pulumi.Input.mapOptionalInputValue<
          LaunchTemplateMonitoring,
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
      map['networkInterfaces'] = pulumi.Input.mapOptionalInputValue<
              List<LaunchTemplateNetworkInterface>, List<Map<String, dynamic>>>(
          networkInterfacesValue,
          (value) => pulumi.Input.encodeList<LaunchTemplateNetworkInterface,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final networkPerformanceOptionsValue = networkPerformanceOptions;
    if (networkPerformanceOptionsValue != null) {
      map['networkPerformanceOptions'] = pulumi.Input.mapOptionalInputValue<
              LaunchTemplateNetworkPerformanceOptions, Map<String, dynamic>>(
          networkPerformanceOptionsValue, (value) => value.toMap());
    }
    final placementValue = placement;
    if (placementValue != null) {
      map['placement'] = pulumi.Input.mapOptionalInputValue<
          LaunchTemplatePlacement,
          Map<String, dynamic>>(placementValue, (value) => value.toMap());
    }
    final privateDnsNameOptionsValue = privateDnsNameOptions;
    if (privateDnsNameOptionsValue != null) {
      map['privateDnsNameOptions'] = pulumi.Input.mapOptionalInputValue<
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
      map['secondaryInterfaces'] = pulumi.Input.mapOptionalInputValue<
              List<LaunchTemplateSecondaryInterface>,
              List<Map<String, dynamic>>>(
          secondaryInterfacesValue,
          (value) => pulumi.Input.encodeList<LaunchTemplateSecondaryInterface,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final securityGroupNamesValue = securityGroupNames;
    if (securityGroupNamesValue != null) {
      map['securityGroupNames'] = securityGroupNamesValue;
    }
    final tagSpecificationsValue = tagSpecifications;
    if (tagSpecificationsValue != null) {
      map['tagSpecifications'] = pulumi.Input.mapOptionalInputValue<
              List<LaunchTemplateTagSpecification>, List<Map<String, dynamic>>>(
          tagSpecificationsValue,
          (value) => pulumi.Input.encodeList<LaunchTemplateTagSpecification,
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
          pulumi.Input.asOptionalInput<List<LaunchTemplateBlockDeviceMapping>>(
              map['blockDeviceMappings']),
      capacityReservationSpecification: pulumi.Input.asOptionalInput<
              LaunchTemplateCapacityReservationSpecification>(
          map['capacityReservationSpecification']),
      cpuOptions: pulumi.Input.asOptionalInput<LaunchTemplateCpuOptions>(
          map['cpuOptions']),
      creditSpecification:
          pulumi.Input.asOptionalInput<LaunchTemplateCreditSpecification>(
              map['creditSpecification']),
      defaultVersion: pulumi.Input.asOptionalInput<int>(map['defaultVersion']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      disableApiStop: pulumi.Input.asOptionalInput<bool>(map['disableApiStop']),
      disableApiTermination:
          pulumi.Input.asOptionalInput<bool>(map['disableApiTermination']),
      ebsOptimized: pulumi.Input.asOptionalInput<String>(map['ebsOptimized']),
      enclaveOptions:
          pulumi.Input.asOptionalInput<LaunchTemplateEnclaveOptions>(
              map['enclaveOptions']),
      hibernationOptions:
          pulumi.Input.asOptionalInput<LaunchTemplateHibernationOptions>(
              map['hibernationOptions']),
      iamInstanceProfile:
          pulumi.Input.asOptionalInput<LaunchTemplateIamInstanceProfile>(
              map['iamInstanceProfile']),
      imageId: pulumi.Input.asOptionalInput<String>(map['imageId']),
      instanceInitiatedShutdownBehavior: pulumi.Input.asOptionalInput<String>(
          map['instanceInitiatedShutdownBehavior']),
      instanceMarketOptions:
          pulumi.Input.asOptionalInput<LaunchTemplateInstanceMarketOptions>(
              map['instanceMarketOptions']),
      instanceRequirements:
          pulumi.Input.asOptionalInput<LaunchTemplateInstanceRequirements>(
              map['instanceRequirements']),
      instanceType: pulumi.Input.asOptionalInput<String>(map['instanceType']),
      kernelId: pulumi.Input.asOptionalInput<String>(map['kernelId']),
      keyName: pulumi.Input.asOptionalInput<String>(map['keyName']),
      licenseSpecifications: pulumi.Input.asOptionalInput<
              List<LaunchTemplateLicenseSpecification>>(
          map['licenseSpecifications']),
      maintenanceOptions:
          pulumi.Input.asOptionalInput<LaunchTemplateMaintenanceOptions>(
              map['maintenanceOptions']),
      metadataOptions:
          pulumi.Input.asOptionalInput<LaunchTemplateMetadataOptions>(
              map['metadataOptions']),
      monitoring: pulumi.Input.asOptionalInput<LaunchTemplateMonitoring>(
          map['monitoring']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      namePrefix: pulumi.Input.asOptionalInput<String>(map['namePrefix']),
      networkInterfaces:
          pulumi.Input.asOptionalInput<List<LaunchTemplateNetworkInterface>>(
              map['networkInterfaces']),
      networkPerformanceOptions:
          pulumi.Input.asOptionalInput<LaunchTemplateNetworkPerformanceOptions>(
              map['networkPerformanceOptions']),
      placement: pulumi.Input.asOptionalInput<LaunchTemplatePlacement>(
          map['placement']),
      privateDnsNameOptions:
          pulumi.Input.asOptionalInput<LaunchTemplatePrivateDnsNameOptions>(
              map['privateDnsNameOptions']),
      ramDiskId: pulumi.Input.asOptionalInput<String>(map['ramDiskId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      secondaryInterfaces:
          pulumi.Input.asOptionalInput<List<LaunchTemplateSecondaryInterface>>(
              map['secondaryInterfaces']),
      securityGroupNames:
          pulumi.Input.asOptionalInput<List<String>>(map['securityGroupNames']),
      tagSpecifications:
          pulumi.Input.asOptionalInput<List<LaunchTemplateTagSpecification>>(
              map['tagSpecifications']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      updateDefaultVersion:
          pulumi.Input.asOptionalInput<bool>(map['updateDefaultVersion']),
      userData: pulumi.Input.asOptionalInput<String>(map['userData']),
      vpcSecurityGroupIds: pulumi.Input.asOptionalInput<List<String>>(
          map['vpcSecurityGroupIds']),
    );
  }
}
