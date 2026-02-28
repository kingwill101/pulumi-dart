// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_launch_template_block_device_mapping.dart';
import 'get_launch_template_capacity_reservation_specification.dart';
import 'get_launch_template_cpu_option.dart';
import 'get_launch_template_credit_specification.dart';
import 'get_launch_template_enclave_option.dart';
import 'get_launch_template_filter.dart';
import 'get_launch_template_hibernation_option.dart';
import 'get_launch_template_iam_instance_profile.dart';
import 'get_launch_template_instance_market_option.dart';
import 'get_launch_template_instance_requirement.dart';
import 'get_launch_template_license_specification.dart';
import 'get_launch_template_maintenance_option.dart';
import 'get_launch_template_metadata_option.dart';
import 'get_launch_template_monitoring.dart';
import 'get_launch_template_network_interface.dart';
import 'get_launch_template_network_performance_option.dart';
import 'get_launch_template_placement.dart';
import 'get_launch_template_private_dns_name_option.dart';
import 'get_launch_template_secondary_interface.dart';
import 'get_launch_template_tag_specification.dart';

/// Result data returned by getLaunchTemplate.
class GetLaunchTemplateResult {
  final String arn;
  final List<GetLaunchTemplateBlockDeviceMapping> blockDeviceMappings;
  final List<GetLaunchTemplateCapacityReservationSpecification>
      capacityReservationSpecifications;
  final List<GetLaunchTemplateCpuOption> cpuOptions;
  final List<GetLaunchTemplateCreditSpecification> creditSpecifications;
  final int defaultVersion;
  final String description;
  final bool disableApiStop;
  final bool disableApiTermination;
  final String ebsOptimized;
  final List<GetLaunchTemplateEnclaveOption> enclaveOptions;
  final List<GetLaunchTemplateFilter>? filters;
  final List<GetLaunchTemplateHibernationOption> hibernationOptions;
  final List<GetLaunchTemplateIamInstanceProfile> iamInstanceProfiles;

  /// ID of the launch template.
  final String id;
  final String imageId;
  final String instanceInitiatedShutdownBehavior;
  final List<GetLaunchTemplateInstanceMarketOption> instanceMarketOptions;
  final List<GetLaunchTemplateInstanceRequirement> instanceRequirements;
  final String instanceType;
  final String kernelId;
  final String keyName;
  final int latestVersion;
  final List<GetLaunchTemplateLicenseSpecification> licenseSpecifications;
  final List<GetLaunchTemplateMaintenanceOption> maintenanceOptions;
  final List<GetLaunchTemplateMetadataOption> metadataOptions;
  final List<GetLaunchTemplateMonitoring> monitorings;
  final String name;
  final List<GetLaunchTemplateNetworkInterface> networkInterfaces;
  final List<GetLaunchTemplateNetworkPerformanceOption>
      networkPerformanceOptions;
  final List<GetLaunchTemplatePlacement> placements;
  final List<GetLaunchTemplatePrivateDnsNameOption> privateDnsNameOptions;
  final String ramDiskId;
  final String region;
  final List<GetLaunchTemplateSecondaryInterface> secondaryInterfaces;
  final List<String> securityGroupNames;
  final List<GetLaunchTemplateTagSpecification> tagSpecifications;
  final Map<String, String> tags;
  final String userData;
  final List<String> vpcSecurityGroupIds;

  /// Creates a new [GetLaunchTemplateResult].
  /// [arn] Required.
  /// [blockDeviceMappings] Required.
  /// [capacityReservationSpecifications] Required.
  /// [cpuOptions] Required.
  /// [creditSpecifications] Required.
  /// [defaultVersion] Required.
  /// [description] Required.
  /// [disableApiStop] Required.
  /// [disableApiTermination] Required.
  /// [ebsOptimized] Required.
  /// [enclaveOptions] Required.
  /// [filters] Optional.
  /// [hibernationOptions] Required.
  /// [iamInstanceProfiles] Required.
  /// [id] ID of the launch template.
  /// [imageId] Required.
  /// [instanceInitiatedShutdownBehavior] Required.
  /// [instanceMarketOptions] Required.
  /// [instanceRequirements] Required.
  /// [instanceType] Required.
  /// [kernelId] Required.
  /// [keyName] Required.
  /// [latestVersion] Required.
  /// [licenseSpecifications] Required.
  /// [maintenanceOptions] Required.
  /// [metadataOptions] Required.
  /// [monitorings] Required.
  /// [name] Required.
  /// [networkInterfaces] Required.
  /// [networkPerformanceOptions] Required.
  /// [placements] Required.
  /// [privateDnsNameOptions] Required.
  /// [ramDiskId] Required.
  /// [region] Required.
  /// [secondaryInterfaces] Required.
  /// [securityGroupNames] Required.
  /// [tagSpecifications] Required.
  /// [tags] Required.
  /// [userData] Required.
  /// [vpcSecurityGroupIds] Required.
  GetLaunchTemplateResult({
    required this.arn,
    required this.blockDeviceMappings,
    required this.capacityReservationSpecifications,
    required this.cpuOptions,
    required this.creditSpecifications,
    required this.defaultVersion,
    required this.description,
    required this.disableApiStop,
    required this.disableApiTermination,
    required this.ebsOptimized,
    required this.enclaveOptions,
    this.filters,
    required this.hibernationOptions,
    required this.iamInstanceProfiles,
    required this.id,
    required this.imageId,
    required this.instanceInitiatedShutdownBehavior,
    required this.instanceMarketOptions,
    required this.instanceRequirements,
    required this.instanceType,
    required this.kernelId,
    required this.keyName,
    required this.latestVersion,
    required this.licenseSpecifications,
    required this.maintenanceOptions,
    required this.metadataOptions,
    required this.monitorings,
    required this.name,
    required this.networkInterfaces,
    required this.networkPerformanceOptions,
    required this.placements,
    required this.privateDnsNameOptions,
    required this.ramDiskId,
    required this.region,
    required this.secondaryInterfaces,
    required this.securityGroupNames,
    required this.tagSpecifications,
    required this.tags,
    required this.userData,
    required this.vpcSecurityGroupIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['blockDeviceMappings'] = pulumi.Input.encodeList<
        GetLaunchTemplateBlockDeviceMapping,
        Map<String, dynamic>>(blockDeviceMappings, (value) => value.toMap());
    map['capacityReservationSpecifications'] = pulumi.Input.encodeList<
            GetLaunchTemplateCapacityReservationSpecification,
            Map<String, dynamic>>(
        capacityReservationSpecifications, (value) => value.toMap());
    map['cpuOptions'] = pulumi.Input.encodeList<GetLaunchTemplateCpuOption,
        Map<String, dynamic>>(cpuOptions, (value) => value.toMap());
    map['creditSpecifications'] = pulumi.Input.encodeList<
        GetLaunchTemplateCreditSpecification,
        Map<String, dynamic>>(creditSpecifications, (value) => value.toMap());
    map['defaultVersion'] = defaultVersion;
    map['description'] = description;
    map['disableApiStop'] = disableApiStop;
    map['disableApiTermination'] = disableApiTermination;
    map['ebsOptimized'] = ebsOptimized;
    map['enclaveOptions'] = pulumi.Input.encodeList<
        GetLaunchTemplateEnclaveOption,
        Map<String, dynamic>>(enclaveOptions, (value) => value.toMap());
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.encodeList<GetLaunchTemplateFilter,
          Map<String, dynamic>>(filtersValue, (value) => value.toMap());
    }
    map['hibernationOptions'] = pulumi.Input.encodeList<
        GetLaunchTemplateHibernationOption,
        Map<String, dynamic>>(hibernationOptions, (value) => value.toMap());
    map['iamInstanceProfiles'] = pulumi.Input.encodeList<
        GetLaunchTemplateIamInstanceProfile,
        Map<String, dynamic>>(iamInstanceProfiles, (value) => value.toMap());
    map['id'] = id;
    map['imageId'] = imageId;
    map['instanceInitiatedShutdownBehavior'] =
        instanceInitiatedShutdownBehavior;
    map['instanceMarketOptions'] = pulumi.Input.encodeList<
        GetLaunchTemplateInstanceMarketOption,
        Map<String, dynamic>>(instanceMarketOptions, (value) => value.toMap());
    map['instanceRequirements'] = pulumi.Input.encodeList<
        GetLaunchTemplateInstanceRequirement,
        Map<String, dynamic>>(instanceRequirements, (value) => value.toMap());
    map['instanceType'] = instanceType;
    map['kernelId'] = kernelId;
    map['keyName'] = keyName;
    map['latestVersion'] = latestVersion;
    map['licenseSpecifications'] = pulumi.Input.encodeList<
        GetLaunchTemplateLicenseSpecification,
        Map<String, dynamic>>(licenseSpecifications, (value) => value.toMap());
    map['maintenanceOptions'] = pulumi.Input.encodeList<
        GetLaunchTemplateMaintenanceOption,
        Map<String, dynamic>>(maintenanceOptions, (value) => value.toMap());
    map['metadataOptions'] = pulumi.Input.encodeList<
        GetLaunchTemplateMetadataOption,
        Map<String, dynamic>>(metadataOptions, (value) => value.toMap());
    map['monitorings'] = pulumi.Input.encodeList<GetLaunchTemplateMonitoring,
        Map<String, dynamic>>(monitorings, (value) => value.toMap());
    map['name'] = name;
    map['networkInterfaces'] = pulumi.Input.encodeList<
        GetLaunchTemplateNetworkInterface,
        Map<String, dynamic>>(networkInterfaces, (value) => value.toMap());
    map['networkPerformanceOptions'] = pulumi.Input.encodeList<
            GetLaunchTemplateNetworkPerformanceOption, Map<String, dynamic>>(
        networkPerformanceOptions, (value) => value.toMap());
    map['placements'] = pulumi.Input.encodeList<GetLaunchTemplatePlacement,
        Map<String, dynamic>>(placements, (value) => value.toMap());
    map['privateDnsNameOptions'] = pulumi.Input.encodeList<
        GetLaunchTemplatePrivateDnsNameOption,
        Map<String, dynamic>>(privateDnsNameOptions, (value) => value.toMap());
    map['ramDiskId'] = ramDiskId;
    map['region'] = region;
    map['secondaryInterfaces'] = pulumi.Input.encodeList<
        GetLaunchTemplateSecondaryInterface,
        Map<String, dynamic>>(secondaryInterfaces, (value) => value.toMap());
    map['securityGroupNames'] = securityGroupNames;
    map['tagSpecifications'] = pulumi.Input.encodeList<
        GetLaunchTemplateTagSpecification,
        Map<String, dynamic>>(tagSpecifications, (value) => value.toMap());
    map['tags'] = tags;
    map['userData'] = userData;
    map['vpcSecurityGroupIds'] = vpcSecurityGroupIds;
    return map;
  }

  factory GetLaunchTemplateResult.fromMap(Map<String, dynamic> map) {
    return GetLaunchTemplateResult(
      arn: map['arn'] as String,
      blockDeviceMappings:
          pulumi.Input.decodeList<GetLaunchTemplateBlockDeviceMapping>(
              map['blockDeviceMappings'],
              (value) => GetLaunchTemplateBlockDeviceMapping.fromMap(
                  (value as Map).cast<String, dynamic>())),
      capacityReservationSpecifications: pulumi.Input.decodeList<
              GetLaunchTemplateCapacityReservationSpecification>(
          map['capacityReservationSpecifications'],
          (value) => GetLaunchTemplateCapacityReservationSpecification.fromMap(
              (value as Map).cast<String, dynamic>())),
      cpuOptions: pulumi.Input.decodeList<GetLaunchTemplateCpuOption>(
          map['cpuOptions'],
          (value) => GetLaunchTemplateCpuOption.fromMap(
              (value as Map).cast<String, dynamic>())),
      creditSpecifications:
          pulumi.Input.decodeList<GetLaunchTemplateCreditSpecification>(
              map['creditSpecifications'],
              (value) => GetLaunchTemplateCreditSpecification.fromMap(
                  (value as Map).cast<String, dynamic>())),
      defaultVersion: map['defaultVersion'] as int,
      description: map['description'] as String,
      disableApiStop: map['disableApiStop'] as bool,
      disableApiTermination: map['disableApiTermination'] as bool,
      ebsOptimized: map['ebsOptimized'] as String,
      enclaveOptions: pulumi.Input.decodeList<GetLaunchTemplateEnclaveOption>(
          map['enclaveOptions'],
          (value) => GetLaunchTemplateEnclaveOption.fromMap(
              (value as Map).cast<String, dynamic>())),
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetLaunchTemplateFilter>(
              map['filters'],
              (value) => GetLaunchTemplateFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      hibernationOptions:
          pulumi.Input.decodeList<GetLaunchTemplateHibernationOption>(
              map['hibernationOptions'],
              (value) => GetLaunchTemplateHibernationOption.fromMap(
                  (value as Map).cast<String, dynamic>())),
      iamInstanceProfiles:
          pulumi.Input.decodeList<GetLaunchTemplateIamInstanceProfile>(
              map['iamInstanceProfiles'],
              (value) => GetLaunchTemplateIamInstanceProfile.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      imageId: map['imageId'] as String,
      instanceInitiatedShutdownBehavior:
          map['instanceInitiatedShutdownBehavior'] as String,
      instanceMarketOptions:
          pulumi.Input.decodeList<GetLaunchTemplateInstanceMarketOption>(
              map['instanceMarketOptions'],
              (value) => GetLaunchTemplateInstanceMarketOption.fromMap(
                  (value as Map).cast<String, dynamic>())),
      instanceRequirements:
          pulumi.Input.decodeList<GetLaunchTemplateInstanceRequirement>(
              map['instanceRequirements'],
              (value) => GetLaunchTemplateInstanceRequirement.fromMap(
                  (value as Map).cast<String, dynamic>())),
      instanceType: map['instanceType'] as String,
      kernelId: map['kernelId'] as String,
      keyName: map['keyName'] as String,
      latestVersion: map['latestVersion'] as int,
      licenseSpecifications:
          pulumi.Input.decodeList<GetLaunchTemplateLicenseSpecification>(
              map['licenseSpecifications'],
              (value) => GetLaunchTemplateLicenseSpecification.fromMap(
                  (value as Map).cast<String, dynamic>())),
      maintenanceOptions:
          pulumi.Input.decodeList<GetLaunchTemplateMaintenanceOption>(
              map['maintenanceOptions'],
              (value) => GetLaunchTemplateMaintenanceOption.fromMap(
                  (value as Map).cast<String, dynamic>())),
      metadataOptions: pulumi.Input.decodeList<GetLaunchTemplateMetadataOption>(
          map['metadataOptions'],
          (value) => GetLaunchTemplateMetadataOption.fromMap(
              (value as Map).cast<String, dynamic>())),
      monitorings: pulumi.Input.decodeList<GetLaunchTemplateMonitoring>(
          map['monitorings'],
          (value) => GetLaunchTemplateMonitoring.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      networkInterfaces:
          pulumi.Input.decodeList<GetLaunchTemplateNetworkInterface>(
              map['networkInterfaces'],
              (value) => GetLaunchTemplateNetworkInterface.fromMap(
                  (value as Map).cast<String, dynamic>())),
      networkPerformanceOptions:
          pulumi.Input.decodeList<GetLaunchTemplateNetworkPerformanceOption>(
              map['networkPerformanceOptions'],
              (value) => GetLaunchTemplateNetworkPerformanceOption.fromMap(
                  (value as Map).cast<String, dynamic>())),
      placements: pulumi.Input.decodeList<GetLaunchTemplatePlacement>(
          map['placements'],
          (value) => GetLaunchTemplatePlacement.fromMap(
              (value as Map).cast<String, dynamic>())),
      privateDnsNameOptions:
          pulumi.Input.decodeList<GetLaunchTemplatePrivateDnsNameOption>(
              map['privateDnsNameOptions'],
              (value) => GetLaunchTemplatePrivateDnsNameOption.fromMap(
                  (value as Map).cast<String, dynamic>())),
      ramDiskId: map['ramDiskId'] as String,
      region: map['region'] as String,
      secondaryInterfaces:
          pulumi.Input.decodeList<GetLaunchTemplateSecondaryInterface>(
              map['secondaryInterfaces'],
              (value) => GetLaunchTemplateSecondaryInterface.fromMap(
                  (value as Map).cast<String, dynamic>())),
      securityGroupNames: (map['securityGroupNames'] as List).cast<String>(),
      tagSpecifications:
          pulumi.Input.decodeList<GetLaunchTemplateTagSpecification>(
              map['tagSpecifications'],
              (value) => GetLaunchTemplateTagSpecification.fromMap(
                  (value as Map).cast<String, dynamic>())),
      tags: (map['tags'] as Map).cast<String, String>(),
      userData: map['userData'] as String,
      vpcSecurityGroupIds: (map['vpcSecurityGroupIds'] as List).cast<String>(),
    );
  }
}
