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
  final String? arn;
  final List<GetLaunchTemplateBlockDeviceMapping>? blockDeviceMappings;
  final List<GetLaunchTemplateCapacityReservationSpecification>? capacityReservationSpecifications;
  final List<GetLaunchTemplateCpuOption>? cpuOptions;
  final List<GetLaunchTemplateCreditSpecification>? creditSpecifications;
  final int? defaultVersion;
  final String? description;
  final bool? disableApiStop;
  final bool? disableApiTermination;
  final String? ebsOptimized;
  final List<GetLaunchTemplateEnclaveOption>? enclaveOptions;
  final List<GetLaunchTemplateFilter>? filters;
  final List<GetLaunchTemplateHibernationOption>? hibernationOptions;
  final List<GetLaunchTemplateIamInstanceProfile>? iamInstanceProfiles;
  /// ID of the launch template.
  final String? id;
  final String? imageId;
  final String? instanceInitiatedShutdownBehavior;
  final List<GetLaunchTemplateInstanceMarketOption>? instanceMarketOptions;
  final List<GetLaunchTemplateInstanceRequirement>? instanceRequirements;
  final String? instanceType;
  final String? kernelId;
  final String? keyName;
  final int? latestVersion;
  final List<GetLaunchTemplateLicenseSpecification>? licenseSpecifications;
  final List<GetLaunchTemplateMaintenanceOption>? maintenanceOptions;
  final List<GetLaunchTemplateMetadataOption>? metadataOptions;
  final List<GetLaunchTemplateMonitoring>? monitorings;
  final String? name;
  final List<GetLaunchTemplateNetworkInterface>? networkInterfaces;
  final List<GetLaunchTemplateNetworkPerformanceOption>? networkPerformanceOptions;
  final List<GetLaunchTemplatePlacement>? placements;
  final List<GetLaunchTemplatePrivateDnsNameOption>? privateDnsNameOptions;
  final String? ramDiskId;
  final String? region;
  final List<GetLaunchTemplateSecondaryInterface>? secondaryInterfaces;
  final List<String>? securityGroupNames;
  final List<GetLaunchTemplateTagSpecification>? tagSpecifications;
  final Map<String, String>? tags;
  final String? userData;
  final List<String>? vpcSecurityGroupIds;

  /// Creates a new [GetLaunchTemplateResult].
  /// [arn] Optional.
  /// [blockDeviceMappings] Optional.
  /// [capacityReservationSpecifications] Optional.
  /// [cpuOptions] Optional.
  /// [creditSpecifications] Optional.
  /// [defaultVersion] Optional.
  /// [description] Optional.
  /// [disableApiStop] Optional.
  /// [disableApiTermination] Optional.
  /// [ebsOptimized] Optional.
  /// [enclaveOptions] Optional.
  /// [filters] Optional.
  /// [hibernationOptions] Optional.
  /// [iamInstanceProfiles] Optional.
  /// [id] ID of the launch template.
  /// [imageId] Optional.
  /// [instanceInitiatedShutdownBehavior] Optional.
  /// [instanceMarketOptions] Optional.
  /// [instanceRequirements] Optional.
  /// [instanceType] Optional.
  /// [kernelId] Optional.
  /// [keyName] Optional.
  /// [latestVersion] Optional.
  /// [licenseSpecifications] Optional.
  /// [maintenanceOptions] Optional.
  /// [metadataOptions] Optional.
  /// [monitorings] Optional.
  /// [name] Optional.
  /// [networkInterfaces] Optional.
  /// [networkPerformanceOptions] Optional.
  /// [placements] Optional.
  /// [privateDnsNameOptions] Optional.
  /// [ramDiskId] Optional.
  /// [region] Optional.
  /// [secondaryInterfaces] Optional.
  /// [securityGroupNames] Optional.
  /// [tagSpecifications] Optional.
  /// [tags] Optional.
  /// [userData] Optional.
  /// [vpcSecurityGroupIds] Optional.
  const GetLaunchTemplateResult({
    this.arn,
    this.blockDeviceMappings,
    this.capacityReservationSpecifications,
    this.cpuOptions,
    this.creditSpecifications,
    this.defaultVersion,
    this.description,
    this.disableApiStop,
    this.disableApiTermination,
    this.ebsOptimized,
    this.enclaveOptions,
    this.filters,
    this.hibernationOptions,
    this.iamInstanceProfiles,
    this.id,
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
    this.monitorings,
    this.name,
    this.networkInterfaces,
    this.networkPerformanceOptions,
    this.placements,
    this.privateDnsNameOptions,
    this.ramDiskId,
    this.region,
    this.secondaryInterfaces,
    this.securityGroupNames,
    this.tagSpecifications,
    this.tags,
    this.userData,
    this.vpcSecurityGroupIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'blockDeviceMappings': ?(() { final guardedValue = blockDeviceMappings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLaunchTemplateBlockDeviceMapping, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'capacityReservationSpecifications': ?(() { final guardedValue = capacityReservationSpecifications; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLaunchTemplateCapacityReservationSpecification, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'cpuOptions': ?(() { final guardedValue = cpuOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLaunchTemplateCpuOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'creditSpecifications': ?(() { final guardedValue = creditSpecifications; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLaunchTemplateCreditSpecification, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'defaultVersion': ?defaultVersion,
      'description': ?description,
      'disableApiStop': ?disableApiStop,
      'disableApiTermination': ?disableApiTermination,
      'ebsOptimized': ?ebsOptimized,
      'enclaveOptions': ?(() { final guardedValue = enclaveOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLaunchTemplateEnclaveOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLaunchTemplateFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'hibernationOptions': ?(() { final guardedValue = hibernationOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLaunchTemplateHibernationOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'iamInstanceProfiles': ?(() { final guardedValue = iamInstanceProfiles; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLaunchTemplateIamInstanceProfile, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'imageId': ?imageId,
      'instanceInitiatedShutdownBehavior': ?instanceInitiatedShutdownBehavior,
      'instanceMarketOptions': ?(() { final guardedValue = instanceMarketOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLaunchTemplateInstanceMarketOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'instanceRequirements': ?(() { final guardedValue = instanceRequirements; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLaunchTemplateInstanceRequirement, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'instanceType': ?instanceType,
      'kernelId': ?kernelId,
      'keyName': ?keyName,
      'latestVersion': ?latestVersion,
      'licenseSpecifications': ?(() { final guardedValue = licenseSpecifications; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLaunchTemplateLicenseSpecification, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'maintenanceOptions': ?(() { final guardedValue = maintenanceOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLaunchTemplateMaintenanceOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'metadataOptions': ?(() { final guardedValue = metadataOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLaunchTemplateMetadataOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'monitorings': ?(() { final guardedValue = monitorings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLaunchTemplateMonitoring, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'networkInterfaces': ?(() { final guardedValue = networkInterfaces; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLaunchTemplateNetworkInterface, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'networkPerformanceOptions': ?(() { final guardedValue = networkPerformanceOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLaunchTemplateNetworkPerformanceOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'placements': ?(() { final guardedValue = placements; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLaunchTemplatePlacement, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'privateDnsNameOptions': ?(() { final guardedValue = privateDnsNameOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLaunchTemplatePrivateDnsNameOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'ramDiskId': ?ramDiskId,
      'region': ?region,
      'secondaryInterfaces': ?(() { final guardedValue = secondaryInterfaces; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLaunchTemplateSecondaryInterface, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'securityGroupNames': ?securityGroupNames,
      'tagSpecifications': ?(() { final guardedValue = tagSpecifications; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLaunchTemplateTagSpecification, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
      'userData': ?userData,
      'vpcSecurityGroupIds': ?vpcSecurityGroupIds,
    };
  }

  factory GetLaunchTemplateResult.fromMap(Map<String, dynamic> map) {
    return GetLaunchTemplateResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      blockDeviceMappings: (() { final guardedValue = map['blockDeviceMappings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLaunchTemplateBlockDeviceMapping>(guardedValue, (value) => GetLaunchTemplateBlockDeviceMapping.fromMap((value as Map).cast<String, dynamic>())); })(),
      capacityReservationSpecifications: (() { final guardedValue = map['capacityReservationSpecifications']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLaunchTemplateCapacityReservationSpecification>(guardedValue, (value) => GetLaunchTemplateCapacityReservationSpecification.fromMap((value as Map).cast<String, dynamic>())); })(),
      cpuOptions: (() { final guardedValue = map['cpuOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLaunchTemplateCpuOption>(guardedValue, (value) => GetLaunchTemplateCpuOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      creditSpecifications: (() { final guardedValue = map['creditSpecifications']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLaunchTemplateCreditSpecification>(guardedValue, (value) => GetLaunchTemplateCreditSpecification.fromMap((value as Map).cast<String, dynamic>())); })(),
      defaultVersion: (() { final guardedValue = map['defaultVersion']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disableApiStop: (() { final guardedValue = map['disableApiStop']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      disableApiTermination: (() { final guardedValue = map['disableApiTermination']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      ebsOptimized: (() { final guardedValue = map['ebsOptimized']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enclaveOptions: (() { final guardedValue = map['enclaveOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLaunchTemplateEnclaveOption>(guardedValue, (value) => GetLaunchTemplateEnclaveOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLaunchTemplateFilter>(guardedValue, (value) => GetLaunchTemplateFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      hibernationOptions: (() { final guardedValue = map['hibernationOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLaunchTemplateHibernationOption>(guardedValue, (value) => GetLaunchTemplateHibernationOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      iamInstanceProfiles: (() { final guardedValue = map['iamInstanceProfiles']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLaunchTemplateIamInstanceProfile>(guardedValue, (value) => GetLaunchTemplateIamInstanceProfile.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imageId: (() { final guardedValue = map['imageId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceInitiatedShutdownBehavior: (() { final guardedValue = map['instanceInitiatedShutdownBehavior']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceMarketOptions: (() { final guardedValue = map['instanceMarketOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLaunchTemplateInstanceMarketOption>(guardedValue, (value) => GetLaunchTemplateInstanceMarketOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      instanceRequirements: (() { final guardedValue = map['instanceRequirements']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLaunchTemplateInstanceRequirement>(guardedValue, (value) => GetLaunchTemplateInstanceRequirement.fromMap((value as Map).cast<String, dynamic>())); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kernelId: (() { final guardedValue = map['kernelId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyName: (() { final guardedValue = map['keyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      latestVersion: (() { final guardedValue = map['latestVersion']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      licenseSpecifications: (() { final guardedValue = map['licenseSpecifications']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLaunchTemplateLicenseSpecification>(guardedValue, (value) => GetLaunchTemplateLicenseSpecification.fromMap((value as Map).cast<String, dynamic>())); })(),
      maintenanceOptions: (() { final guardedValue = map['maintenanceOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLaunchTemplateMaintenanceOption>(guardedValue, (value) => GetLaunchTemplateMaintenanceOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      metadataOptions: (() { final guardedValue = map['metadataOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLaunchTemplateMetadataOption>(guardedValue, (value) => GetLaunchTemplateMetadataOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      monitorings: (() { final guardedValue = map['monitorings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLaunchTemplateMonitoring>(guardedValue, (value) => GetLaunchTemplateMonitoring.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkInterfaces: (() { final guardedValue = map['networkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLaunchTemplateNetworkInterface>(guardedValue, (value) => GetLaunchTemplateNetworkInterface.fromMap((value as Map).cast<String, dynamic>())); })(),
      networkPerformanceOptions: (() { final guardedValue = map['networkPerformanceOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLaunchTemplateNetworkPerformanceOption>(guardedValue, (value) => GetLaunchTemplateNetworkPerformanceOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      placements: (() { final guardedValue = map['placements']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLaunchTemplatePlacement>(guardedValue, (value) => GetLaunchTemplatePlacement.fromMap((value as Map).cast<String, dynamic>())); })(),
      privateDnsNameOptions: (() { final guardedValue = map['privateDnsNameOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLaunchTemplatePrivateDnsNameOption>(guardedValue, (value) => GetLaunchTemplatePrivateDnsNameOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      ramDiskId: (() { final guardedValue = map['ramDiskId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryInterfaces: (() { final guardedValue = map['secondaryInterfaces']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLaunchTemplateSecondaryInterface>(guardedValue, (value) => GetLaunchTemplateSecondaryInterface.fromMap((value as Map).cast<String, dynamic>())); })(),
      securityGroupNames: (() { final guardedValue = map['securityGroupNames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tagSpecifications: (() { final guardedValue = map['tagSpecifications']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLaunchTemplateTagSpecification>(guardedValue, (value) => GetLaunchTemplateTagSpecification.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      userData: (() { final guardedValue = map['userData']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpcSecurityGroupIds: (() { final guardedValue = map['vpcSecurityGroupIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
