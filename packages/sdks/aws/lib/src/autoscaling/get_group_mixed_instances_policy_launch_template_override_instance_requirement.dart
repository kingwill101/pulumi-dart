// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_mixed_instances_policy_launch_template_override_instance_requirement_accelerator_count.dart';
import 'get_group_mixed_instances_policy_launch_template_override_instance_requirement_accelerator_total_memory_mib.dart';
import 'get_group_mixed_instances_policy_launch_template_override_instance_requirement_baseline_ebs_bandwidth_mbp.dart';
import 'get_group_mixed_instances_policy_launch_template_override_instance_requirement_memory_gib_per_vcpus.dart';
import 'get_group_mixed_instances_policy_launch_template_override_instance_requirement_memory_mib.dart';
import 'get_group_mixed_instances_policy_launch_template_override_instance_requirement_network_bandwidth_gbp.dart';
import 'get_group_mixed_instances_policy_launch_template_override_instance_requirement_network_interface_count.dart';
import 'get_group_mixed_instances_policy_launch_template_override_instance_requirement_total_local_storage_gb.dart';
import 'get_group_mixed_instances_policy_launch_template_override_instance_requirement_vcpu_count.dart';

class GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirement {
  /// List of objects describing the minimum and maximum number of accelerators for an instance type.
  final pulumi.Input<List<GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementAcceleratorCount>> acceleratorCounts;
  /// List of accelerator manufacturer names.
  final pulumi.Input<List<String>> acceleratorManufacturers;
  /// List of accelerator names.
  final pulumi.Input<List<String>> acceleratorNames;
  /// List of objects describing the minimum and maximum total memory of the accelerators.
  final pulumi.Input<List<GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementAcceleratorTotalMemoryMib>> acceleratorTotalMemoryMibs;
  /// List of accelerator types.
  final pulumi.Input<List<String>> acceleratorTypes;
  /// List of instance types to apply the specified attributes against.
  final pulumi.Input<List<String>> allowedInstanceTypes;
  /// Whether bare metal instances are included, excluded, or required.
  final pulumi.Input<String> bareMetal;
  /// List of objects describing the minimum and maximum baseline EBS bandwidth (Mbps).
  final pulumi.Input<List<GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementBaselineEbsBandwidthMbp>> baselineEbsBandwidthMbps;
  /// Whether burstable performance instance types are included, excluded, or required.
  final pulumi.Input<String> burstablePerformance;
  /// List of CPU manufacturer names.
  final pulumi.Input<List<String>> cpuManufacturers;
  /// List of excluded instance types.
  final pulumi.Input<List<String>> excludedInstanceTypes;
  /// List of instance generation names.
  final pulumi.Input<List<String>> instanceGenerations;
  /// Whether instance types with instance store volumes are included, excluded, or required.
  final pulumi.Input<String> localStorage;
  /// List of local storage type names.
  final pulumi.Input<List<String>> localStorageTypes;
  /// Price protection threshold for Spot Instances.
  final pulumi.Input<int> maxSpotPriceAsPercentageOfOptimalOnDemandPrice;
  /// List of objects describing the minimum and maximum amount of memory (GiB) per vCPU.
  final pulumi.Input<List<GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementMemoryGibPerVcpus>> memoryGibPerVcpus;
  /// List of objects describing the minimum and maximum amount of memory (MiB).
  final pulumi.Input<List<GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementMemoryMib>> memoryMibs;
  /// List of objects describing the minimum and maximum amount of network bandwidth (Gbps).
  final pulumi.Input<List<GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementNetworkBandwidthGbp>> networkBandwidthGbps;
  /// List of objects describing the minimum and maximum amount of network interfaces.
  final pulumi.Input<List<GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementNetworkInterfaceCount>> networkInterfaceCounts;
  /// Price protection threshold for On-Demand Instances.
  final pulumi.Input<int> onDemandMaxPricePercentageOverLowestPrice;
  /// Whether instance types must support On-Demand Instance Hibernation.
  final pulumi.Input<bool> requireHibernateSupport;
  /// Price protection threshold for Spot Instances.
  final pulumi.Input<int> spotMaxPricePercentageOverLowestPrice;
  /// List of objects describing the minimum and maximum total storage (GB).
  final pulumi.Input<List<GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementTotalLocalStorageGb>> totalLocalStorageGbs;
  /// List of objects describing the minimum and maximum number of vCPUs.
  final pulumi.Input<List<GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementVcpuCount>> vcpuCounts;

  /// Creates a new [GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirement].
  /// [acceleratorCounts] List of objects describing the minimum and maximum number of accelerators for an instance type.
  /// [acceleratorManufacturers] List of accelerator manufacturer names.
  /// [acceleratorNames] List of accelerator names.
  /// [acceleratorTotalMemoryMibs] List of objects describing the minimum and maximum total memory of the accelerators.
  /// [acceleratorTypes] List of accelerator types.
  /// [allowedInstanceTypes] List of instance types to apply the specified attributes against.
  /// [bareMetal] Whether bare metal instances are included, excluded, or required.
  /// [baselineEbsBandwidthMbps] List of objects describing the minimum and maximum baseline EBS bandwidth (Mbps).
  /// [burstablePerformance] Whether burstable performance instance types are included, excluded, or required.
  /// [cpuManufacturers] List of CPU manufacturer names.
  /// [excludedInstanceTypes] List of excluded instance types.
  /// [instanceGenerations] List of instance generation names.
  /// [localStorage] Whether instance types with instance store volumes are included, excluded, or required.
  /// [localStorageTypes] List of local storage type names.
  /// [maxSpotPriceAsPercentageOfOptimalOnDemandPrice] Price protection threshold for Spot Instances.
  /// [memoryGibPerVcpus] List of objects describing the minimum and maximum amount of memory (GiB) per vCPU.
  /// [memoryMibs] List of objects describing the minimum and maximum amount of memory (MiB).
  /// [networkBandwidthGbps] List of objects describing the minimum and maximum amount of network bandwidth (Gbps).
  /// [networkInterfaceCounts] List of objects describing the minimum and maximum amount of network interfaces.
  /// [onDemandMaxPricePercentageOverLowestPrice] Price protection threshold for On-Demand Instances.
  /// [requireHibernateSupport] Whether instance types must support On-Demand Instance Hibernation.
  /// [spotMaxPricePercentageOverLowestPrice] Price protection threshold for Spot Instances.
  /// [totalLocalStorageGbs] List of objects describing the minimum and maximum total storage (GB).
  /// [vcpuCounts] List of objects describing the minimum and maximum number of vCPUs.
  const GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirement({
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
    return <String, dynamic>{
      'acceleratorCounts': pulumi.Input.mapInputValue<List<GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementAcceleratorCount>, List<Map<String, dynamic>>>(acceleratorCounts, (value) => pulumi.Input.encodeList<GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementAcceleratorCount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'acceleratorManufacturers': acceleratorManufacturers,
      'acceleratorNames': acceleratorNames,
      'acceleratorTotalMemoryMibs': pulumi.Input.mapInputValue<List<GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementAcceleratorTotalMemoryMib>, List<Map<String, dynamic>>>(acceleratorTotalMemoryMibs, (value) => pulumi.Input.encodeList<GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementAcceleratorTotalMemoryMib, Map<String, dynamic>>(value, (value) => value.toMap())),
      'acceleratorTypes': acceleratorTypes,
      'allowedInstanceTypes': allowedInstanceTypes,
      'bareMetal': bareMetal,
      'baselineEbsBandwidthMbps': pulumi.Input.mapInputValue<List<GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementBaselineEbsBandwidthMbp>, List<Map<String, dynamic>>>(baselineEbsBandwidthMbps, (value) => pulumi.Input.encodeList<GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementBaselineEbsBandwidthMbp, Map<String, dynamic>>(value, (value) => value.toMap())),
      'burstablePerformance': burstablePerformance,
      'cpuManufacturers': cpuManufacturers,
      'excludedInstanceTypes': excludedInstanceTypes,
      'instanceGenerations': instanceGenerations,
      'localStorage': localStorage,
      'localStorageTypes': localStorageTypes,
      'maxSpotPriceAsPercentageOfOptimalOnDemandPrice': maxSpotPriceAsPercentageOfOptimalOnDemandPrice,
      'memoryGibPerVcpus': pulumi.Input.mapInputValue<List<GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementMemoryGibPerVcpus>, List<Map<String, dynamic>>>(memoryGibPerVcpus, (value) => pulumi.Input.encodeList<GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementMemoryGibPerVcpus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'memoryMibs': pulumi.Input.mapInputValue<List<GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementMemoryMib>, List<Map<String, dynamic>>>(memoryMibs, (value) => pulumi.Input.encodeList<GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementMemoryMib, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkBandwidthGbps': pulumi.Input.mapInputValue<List<GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementNetworkBandwidthGbp>, List<Map<String, dynamic>>>(networkBandwidthGbps, (value) => pulumi.Input.encodeList<GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementNetworkBandwidthGbp, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkInterfaceCounts': pulumi.Input.mapInputValue<List<GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementNetworkInterfaceCount>, List<Map<String, dynamic>>>(networkInterfaceCounts, (value) => pulumi.Input.encodeList<GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementNetworkInterfaceCount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'onDemandMaxPricePercentageOverLowestPrice': onDemandMaxPricePercentageOverLowestPrice,
      'requireHibernateSupport': requireHibernateSupport,
      'spotMaxPricePercentageOverLowestPrice': spotMaxPricePercentageOverLowestPrice,
      'totalLocalStorageGbs': pulumi.Input.mapInputValue<List<GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementTotalLocalStorageGb>, List<Map<String, dynamic>>>(totalLocalStorageGbs, (value) => pulumi.Input.encodeList<GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementTotalLocalStorageGb, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vcpuCounts': pulumi.Input.mapInputValue<List<GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementVcpuCount>, List<Map<String, dynamic>>>(vcpuCounts, (value) => pulumi.Input.encodeList<GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementVcpuCount, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirement.fromMap(Map<String, dynamic> map) {
    return GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirement(
      acceleratorCounts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementAcceleratorCount>(map['acceleratorCounts']!, (value) => GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementAcceleratorCount.fromMap((value as Map).cast<String, dynamic>()))),
      acceleratorManufacturers: pulumi.Input.fromValue((map['acceleratorManufacturers'] as List).cast<String>()),
      acceleratorNames: pulumi.Input.fromValue((map['acceleratorNames'] as List).cast<String>()),
      acceleratorTotalMemoryMibs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementAcceleratorTotalMemoryMib>(map['acceleratorTotalMemoryMibs']!, (value) => GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementAcceleratorTotalMemoryMib.fromMap((value as Map).cast<String, dynamic>()))),
      acceleratorTypes: pulumi.Input.fromValue((map['acceleratorTypes'] as List).cast<String>()),
      allowedInstanceTypes: pulumi.Input.fromValue((map['allowedInstanceTypes'] as List).cast<String>()),
      bareMetal: pulumi.Input.fromValue(map['bareMetal'] as String),
      baselineEbsBandwidthMbps: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementBaselineEbsBandwidthMbp>(map['baselineEbsBandwidthMbps']!, (value) => GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementBaselineEbsBandwidthMbp.fromMap((value as Map).cast<String, dynamic>()))),
      burstablePerformance: pulumi.Input.fromValue(map['burstablePerformance'] as String),
      cpuManufacturers: pulumi.Input.fromValue((map['cpuManufacturers'] as List).cast<String>()),
      excludedInstanceTypes: pulumi.Input.fromValue((map['excludedInstanceTypes'] as List).cast<String>()),
      instanceGenerations: pulumi.Input.fromValue((map['instanceGenerations'] as List).cast<String>()),
      localStorage: pulumi.Input.fromValue(map['localStorage'] as String),
      localStorageTypes: pulumi.Input.fromValue((map['localStorageTypes'] as List).cast<String>()),
      maxSpotPriceAsPercentageOfOptimalOnDemandPrice: pulumi.Input.fromValue(map['maxSpotPriceAsPercentageOfOptimalOnDemandPrice'] as int),
      memoryGibPerVcpus: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementMemoryGibPerVcpus>(map['memoryGibPerVcpus']!, (value) => GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementMemoryGibPerVcpus.fromMap((value as Map).cast<String, dynamic>()))),
      memoryMibs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementMemoryMib>(map['memoryMibs']!, (value) => GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementMemoryMib.fromMap((value as Map).cast<String, dynamic>()))),
      networkBandwidthGbps: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementNetworkBandwidthGbp>(map['networkBandwidthGbps']!, (value) => GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementNetworkBandwidthGbp.fromMap((value as Map).cast<String, dynamic>()))),
      networkInterfaceCounts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementNetworkInterfaceCount>(map['networkInterfaceCounts']!, (value) => GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementNetworkInterfaceCount.fromMap((value as Map).cast<String, dynamic>()))),
      onDemandMaxPricePercentageOverLowestPrice: pulumi.Input.fromValue(map['onDemandMaxPricePercentageOverLowestPrice'] as int),
      requireHibernateSupport: pulumi.Input.fromValue(map['requireHibernateSupport'] as bool),
      spotMaxPricePercentageOverLowestPrice: pulumi.Input.fromValue(map['spotMaxPricePercentageOverLowestPrice'] as int),
      totalLocalStorageGbs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementTotalLocalStorageGb>(map['totalLocalStorageGbs']!, (value) => GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementTotalLocalStorageGb.fromMap((value as Map).cast<String, dynamic>()))),
      vcpuCounts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementVcpuCount>(map['vcpuCounts']!, (value) => GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementVcpuCount.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
