// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_group_mixed_instances_policy_launch_template_override_instance_requirement_accelerator_count/get_group_mixed_instances_policy_launch_template_override_instance_requirement_accelerator_count.dart';
import '../get_group_mixed_instances_policy_launch_template_override_instance_requirement_accelerator_total_memory_mib/get_group_mixed_instances_policy_launch_template_override_instance_requirement_accelerator_total_memory_mib.dart';
import '../get_group_mixed_instances_policy_launch_template_override_instance_requirement_baseline_ebs_bandwidth_mbp/get_group_mixed_instances_policy_launch_template_override_instance_requirement_baseline_ebs_bandwidth_mbp.dart';
import '../get_group_mixed_instances_policy_launch_template_override_instance_requirement_memory_gib_per_vcpus/get_group_mixed_instances_policy_launch_template_override_instance_requirement_memory_gib_per_vcpus.dart';
import '../get_group_mixed_instances_policy_launch_template_override_instance_requirement_memory_mib/get_group_mixed_instances_policy_launch_template_override_instance_requirement_memory_mib.dart';
import '../get_group_mixed_instances_policy_launch_template_override_instance_requirement_network_bandwidth_gbp/get_group_mixed_instances_policy_launch_template_override_instance_requirement_network_bandwidth_gbp.dart';
import '../get_group_mixed_instances_policy_launch_template_override_instance_requirement_network_interface_count/get_group_mixed_instances_policy_launch_template_override_instance_requirement_network_interface_count.dart';
import '../get_group_mixed_instances_policy_launch_template_override_instance_requirement_total_local_storage_gb/get_group_mixed_instances_policy_launch_template_override_instance_requirement_total_local_storage_gb.dart';
import '../get_group_mixed_instances_policy_launch_template_override_instance_requirement_vcpu_count/get_group_mixed_instances_policy_launch_template_override_instance_requirement_vcpu_count.dart';

class GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirement {
  final List<
          GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementAcceleratorCount>
      acceleratorCounts;

  /// List of accelerator manufacturer names.
  final List<String> acceleratorManufacturers;

  /// List of accelerator names.
  final List<String> acceleratorNames;

  /// List of objects describing the minimum and maximum total memory of the accelerators.
  final List<
          GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementAcceleratorTotalMemoryMib>
      acceleratorTotalMemoryMibs;

  /// List of accelerator types.
  final List<String> acceleratorTypes;

  /// List of instance types to apply the specified attributes against.
  final List<String> allowedInstanceTypes;

  /// Indicates whether bare metal instances are included, excluded, or required.
  final String bareMetal;

  /// List of objects describing the minimum and maximum baseline EBS bandwidth (Mbps).
  final List<
          GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementBaselineEbsBandwidthMbp>
      baselineEbsBandwidthMbps;

  /// Indicates whether burstable performance instance types are included, excluded, or required.
  final String burstablePerformance;

  /// List of CPU manufacturer names.
  final List<String> cpuManufacturers;

  /// List of excluded instance types.
  final List<String> excludedInstanceTypes;

  /// List of instance generation names.
  final List<String> instanceGenerations;

  /// Indicates whether instance types with instance store volumes are included, excluded, or required.
  final String localStorage;

  /// List of local storage type names.
  final List<String> localStorageTypes;

  /// Price protection threshold for Spot Instances.
  final int maxSpotPriceAsPercentageOfOptimalOnDemandPrice;

  /// List of objects describing the minimum and maximum amount of memory (GiB) per vCPU.
  final List<
          GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementMemoryGibPerVcpus>
      memoryGibPerVcpus;

  /// List of objects describing the minimum and maximum amount of memory (MiB).
  final List<
          GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementMemoryMib>
      memoryMibs;

  /// List of objects describing the minimum and maximum amount of network bandwidth (Gbps).
  final List<
          GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementNetworkBandwidthGbp>
      networkBandwidthGbps;

  /// List of objects describing the minimum and maximum amount of network interfaces.
  final List<
          GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementNetworkInterfaceCount>
      networkInterfaceCounts;

  /// Price protection threshold for On-Demand Instances.
  final int onDemandMaxPricePercentageOverLowestPrice;

  /// Indicates whether instance types must support On-Demand Instance Hibernation.
  final bool requireHibernateSupport;

  /// Price protection threshold for Spot Instances.
  final int spotMaxPricePercentageOverLowestPrice;

  /// List of objects describing the minimum and maximum total storage (GB).
  final List<
          GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementTotalLocalStorageGb>
      totalLocalStorageGbs;

  /// List of objects describing the minimum and maximum number of vCPUs.
  final List<
          GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementVcpuCount>
      vcpuCounts;

  GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirement({
    required this.acceleratorCounts,
    required this.acceleratorManufacturers,
    required this.acceleratorNames,
    required this.acceleratorTotalMemoryMibs,
    required this.acceleratorTypes,
    required this.allowedInstanceTypes,
    required this.bareMetal,
    required this.baselineEbsBandwidthMbps,
    required this.burstablePerformance,
    required this.cpuManufacturers,
    required this.excludedInstanceTypes,
    required this.instanceGenerations,
    required this.localStorage,
    required this.localStorageTypes,
    required this.maxSpotPriceAsPercentageOfOptimalOnDemandPrice,
    required this.memoryGibPerVcpus,
    required this.memoryMibs,
    required this.networkBandwidthGbps,
    required this.networkInterfaceCounts,
    required this.onDemandMaxPricePercentageOverLowestPrice,
    required this.requireHibernateSupport,
    required this.spotMaxPricePercentageOverLowestPrice,
    required this.totalLocalStorageGbs,
    required this.vcpuCounts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['acceleratorCounts'] = pulumi.Input.encodeList<
        GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementAcceleratorCount,
        Map<String, dynamic>>(acceleratorCounts, (value) => value.toMap());
    map['acceleratorManufacturers'] = acceleratorManufacturers;
    map['acceleratorNames'] = acceleratorNames;
    map['acceleratorTotalMemoryMibs'] = pulumi.Input.encodeList<
        GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementAcceleratorTotalMemoryMib,
        Map<String,
            dynamic>>(acceleratorTotalMemoryMibs, (value) => value.toMap());
    map['acceleratorTypes'] = acceleratorTypes;
    map['allowedInstanceTypes'] = allowedInstanceTypes;
    map['bareMetal'] = bareMetal;
    map['baselineEbsBandwidthMbps'] = pulumi.Input.encodeList<
        GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementBaselineEbsBandwidthMbp,
        Map<String,
            dynamic>>(baselineEbsBandwidthMbps, (value) => value.toMap());
    map['burstablePerformance'] = burstablePerformance;
    map['cpuManufacturers'] = cpuManufacturers;
    map['excludedInstanceTypes'] = excludedInstanceTypes;
    map['instanceGenerations'] = instanceGenerations;
    map['localStorage'] = localStorage;
    map['localStorageTypes'] = localStorageTypes;
    map['maxSpotPriceAsPercentageOfOptimalOnDemandPrice'] =
        maxSpotPriceAsPercentageOfOptimalOnDemandPrice;
    map['memoryGibPerVcpus'] = pulumi.Input.encodeList<
        GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementMemoryGibPerVcpus,
        Map<String, dynamic>>(memoryGibPerVcpus, (value) => value.toMap());
    map['memoryMibs'] = pulumi.Input.encodeList<
        GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementMemoryMib,
        Map<String, dynamic>>(memoryMibs, (value) => value.toMap());
    map['networkBandwidthGbps'] = pulumi.Input.encodeList<
        GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementNetworkBandwidthGbp,
        Map<String, dynamic>>(networkBandwidthGbps, (value) => value.toMap());
    map['networkInterfaceCounts'] = pulumi.Input.encodeList<
        GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementNetworkInterfaceCount,
        Map<String, dynamic>>(networkInterfaceCounts, (value) => value.toMap());
    map['onDemandMaxPricePercentageOverLowestPrice'] =
        onDemandMaxPricePercentageOverLowestPrice;
    map['requireHibernateSupport'] = requireHibernateSupport;
    map['spotMaxPricePercentageOverLowestPrice'] =
        spotMaxPricePercentageOverLowestPrice;
    map['totalLocalStorageGbs'] = pulumi.Input.encodeList<
        GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementTotalLocalStorageGb,
        Map<String, dynamic>>(totalLocalStorageGbs, (value) => value.toMap());
    map['vcpuCounts'] = pulumi.Input.encodeList<
        GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementVcpuCount,
        Map<String, dynamic>>(vcpuCounts, (value) => value.toMap());
    return map;
  }

  factory GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirement.fromMap(
      Map<String, dynamic> map) {
    return GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirement(
      acceleratorCounts: pulumi.Input.decodeList<
              GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementAcceleratorCount>(
          map['acceleratorCounts'],
          (value) =>
              GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementAcceleratorCount
                  .fromMap((value as Map).cast<String, dynamic>())),
      acceleratorManufacturers:
          (map['acceleratorManufacturers'] as List).cast<String>(),
      acceleratorNames: (map['acceleratorNames'] as List).cast<String>(),
      acceleratorTotalMemoryMibs: pulumi.Input.decodeList<
              GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementAcceleratorTotalMemoryMib>(
          map['acceleratorTotalMemoryMibs'],
          (value) =>
              GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementAcceleratorTotalMemoryMib
                  .fromMap((value as Map).cast<String, dynamic>())),
      acceleratorTypes: (map['acceleratorTypes'] as List).cast<String>(),
      allowedInstanceTypes:
          (map['allowedInstanceTypes'] as List).cast<String>(),
      bareMetal: map['bareMetal'] as String,
      baselineEbsBandwidthMbps: pulumi.Input.decodeList<
              GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementBaselineEbsBandwidthMbp>(
          map['baselineEbsBandwidthMbps'],
          (value) =>
              GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementBaselineEbsBandwidthMbp
                  .fromMap((value as Map).cast<String, dynamic>())),
      burstablePerformance: map['burstablePerformance'] as String,
      cpuManufacturers: (map['cpuManufacturers'] as List).cast<String>(),
      excludedInstanceTypes:
          (map['excludedInstanceTypes'] as List).cast<String>(),
      instanceGenerations: (map['instanceGenerations'] as List).cast<String>(),
      localStorage: map['localStorage'] as String,
      localStorageTypes: (map['localStorageTypes'] as List).cast<String>(),
      maxSpotPriceAsPercentageOfOptimalOnDemandPrice:
          map['maxSpotPriceAsPercentageOfOptimalOnDemandPrice'] as int,
      memoryGibPerVcpus: pulumi.Input.decodeList<
              GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementMemoryGibPerVcpus>(
          map['memoryGibPerVcpus'],
          (value) =>
              GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementMemoryGibPerVcpus
                  .fromMap((value as Map).cast<String, dynamic>())),
      memoryMibs: pulumi.Input.decodeList<
              GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementMemoryMib>(
          map['memoryMibs'],
          (value) =>
              GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementMemoryMib
                  .fromMap((value as Map).cast<String, dynamic>())),
      networkBandwidthGbps: pulumi.Input.decodeList<
              GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementNetworkBandwidthGbp>(
          map['networkBandwidthGbps'],
          (value) =>
              GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementNetworkBandwidthGbp
                  .fromMap((value as Map).cast<String, dynamic>())),
      networkInterfaceCounts: pulumi.Input.decodeList<
              GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementNetworkInterfaceCount>(
          map['networkInterfaceCounts'],
          (value) =>
              GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementNetworkInterfaceCount
                  .fromMap((value as Map).cast<String, dynamic>())),
      onDemandMaxPricePercentageOverLowestPrice:
          map['onDemandMaxPricePercentageOverLowestPrice'] as int,
      requireHibernateSupport: map['requireHibernateSupport'] as bool,
      spotMaxPricePercentageOverLowestPrice:
          map['spotMaxPricePercentageOverLowestPrice'] as int,
      totalLocalStorageGbs: pulumi.Input.decodeList<
              GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementTotalLocalStorageGb>(
          map['totalLocalStorageGbs'],
          (value) =>
              GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementTotalLocalStorageGb
                  .fromMap((value as Map).cast<String, dynamic>())),
      vcpuCounts: pulumi.Input.decodeList<
              GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementVcpuCount>(
          map['vcpuCounts'],
          (value) =>
              GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementVcpuCount
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
