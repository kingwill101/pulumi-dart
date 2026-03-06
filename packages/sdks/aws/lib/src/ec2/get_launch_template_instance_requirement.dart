// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_launch_template_instance_requirement_accelerator_count.dart';
import 'get_launch_template_instance_requirement_accelerator_total_memory_mib.dart';
import 'get_launch_template_instance_requirement_baseline_ebs_bandwidth_mbp.dart';
import 'get_launch_template_instance_requirement_memory_gib_per_vcpus.dart';
import 'get_launch_template_instance_requirement_memory_mib.dart';
import 'get_launch_template_instance_requirement_network_bandwidth_gbp.dart';
import 'get_launch_template_instance_requirement_network_interface_count.dart';
import 'get_launch_template_instance_requirement_total_local_storage_gb.dart';
import 'get_launch_template_instance_requirement_vcpu_count.dart';

class GetLaunchTemplateInstanceRequirement {
  final pulumi.Input<List<GetLaunchTemplateInstanceRequirementAcceleratorCount>> acceleratorCounts;
  final pulumi.Input<List<String>> acceleratorManufacturers;
  final pulumi.Input<List<String>> acceleratorNames;
  final pulumi.Input<List<GetLaunchTemplateInstanceRequirementAcceleratorTotalMemoryMib>> acceleratorTotalMemoryMibs;
  final pulumi.Input<List<String>> acceleratorTypes;
  final pulumi.Input<List<String>> allowedInstanceTypes;
  final pulumi.Input<String> bareMetal;
  final pulumi.Input<List<GetLaunchTemplateInstanceRequirementBaselineEbsBandwidthMbp>> baselineEbsBandwidthMbps;
  final pulumi.Input<String> burstablePerformance;
  final pulumi.Input<List<String>> cpuManufacturers;
  final pulumi.Input<List<String>> excludedInstanceTypes;
  final pulumi.Input<List<String>> instanceGenerations;
  final pulumi.Input<String> localStorage;
  final pulumi.Input<List<String>> localStorageTypes;
  final pulumi.Input<int> maxSpotPriceAsPercentageOfOptimalOnDemandPrice;
  final pulumi.Input<List<GetLaunchTemplateInstanceRequirementMemoryGibPerVcpus>> memoryGibPerVcpus;
  final pulumi.Input<List<GetLaunchTemplateInstanceRequirementMemoryMib>> memoryMibs;
  final pulumi.Input<List<GetLaunchTemplateInstanceRequirementNetworkBandwidthGbp>> networkBandwidthGbps;
  final pulumi.Input<List<GetLaunchTemplateInstanceRequirementNetworkInterfaceCount>> networkInterfaceCounts;
  final pulumi.Input<int> onDemandMaxPricePercentageOverLowestPrice;
  final pulumi.Input<bool> requireHibernateSupport;
  final pulumi.Input<int> spotMaxPricePercentageOverLowestPrice;
  final pulumi.Input<List<GetLaunchTemplateInstanceRequirementTotalLocalStorageGb>> totalLocalStorageGbs;
  final pulumi.Input<List<GetLaunchTemplateInstanceRequirementVcpuCount>> vcpuCounts;

  /// Creates a new [GetLaunchTemplateInstanceRequirement].
  /// [acceleratorCounts] Required.
  /// [acceleratorManufacturers] Required.
  /// [acceleratorNames] Required.
  /// [acceleratorTotalMemoryMibs] Required.
  /// [acceleratorTypes] Required.
  /// [allowedInstanceTypes] Required.
  /// [bareMetal] Required.
  /// [baselineEbsBandwidthMbps] Required.
  /// [burstablePerformance] Required.
  /// [cpuManufacturers] Required.
  /// [excludedInstanceTypes] Required.
  /// [instanceGenerations] Required.
  /// [localStorage] Required.
  /// [localStorageTypes] Required.
  /// [maxSpotPriceAsPercentageOfOptimalOnDemandPrice] Required.
  /// [memoryGibPerVcpus] Required.
  /// [memoryMibs] Required.
  /// [networkBandwidthGbps] Required.
  /// [networkInterfaceCounts] Required.
  /// [onDemandMaxPricePercentageOverLowestPrice] Required.
  /// [requireHibernateSupport] Required.
  /// [spotMaxPricePercentageOverLowestPrice] Required.
  /// [totalLocalStorageGbs] Required.
  /// [vcpuCounts] Required.
  const GetLaunchTemplateInstanceRequirement({
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
      'acceleratorCounts': pulumi.Input.mapInputValue<List<GetLaunchTemplateInstanceRequirementAcceleratorCount>, List<Map<String, dynamic>>>(acceleratorCounts, (value) => pulumi.Input.encodeList<GetLaunchTemplateInstanceRequirementAcceleratorCount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'acceleratorManufacturers': acceleratorManufacturers,
      'acceleratorNames': acceleratorNames,
      'acceleratorTotalMemoryMibs': pulumi.Input.mapInputValue<List<GetLaunchTemplateInstanceRequirementAcceleratorTotalMemoryMib>, List<Map<String, dynamic>>>(acceleratorTotalMemoryMibs, (value) => pulumi.Input.encodeList<GetLaunchTemplateInstanceRequirementAcceleratorTotalMemoryMib, Map<String, dynamic>>(value, (value) => value.toMap())),
      'acceleratorTypes': acceleratorTypes,
      'allowedInstanceTypes': allowedInstanceTypes,
      'bareMetal': bareMetal,
      'baselineEbsBandwidthMbps': pulumi.Input.mapInputValue<List<GetLaunchTemplateInstanceRequirementBaselineEbsBandwidthMbp>, List<Map<String, dynamic>>>(baselineEbsBandwidthMbps, (value) => pulumi.Input.encodeList<GetLaunchTemplateInstanceRequirementBaselineEbsBandwidthMbp, Map<String, dynamic>>(value, (value) => value.toMap())),
      'burstablePerformance': burstablePerformance,
      'cpuManufacturers': cpuManufacturers,
      'excludedInstanceTypes': excludedInstanceTypes,
      'instanceGenerations': instanceGenerations,
      'localStorage': localStorage,
      'localStorageTypes': localStorageTypes,
      'maxSpotPriceAsPercentageOfOptimalOnDemandPrice': maxSpotPriceAsPercentageOfOptimalOnDemandPrice,
      'memoryGibPerVcpus': pulumi.Input.mapInputValue<List<GetLaunchTemplateInstanceRequirementMemoryGibPerVcpus>, List<Map<String, dynamic>>>(memoryGibPerVcpus, (value) => pulumi.Input.encodeList<GetLaunchTemplateInstanceRequirementMemoryGibPerVcpus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'memoryMibs': pulumi.Input.mapInputValue<List<GetLaunchTemplateInstanceRequirementMemoryMib>, List<Map<String, dynamic>>>(memoryMibs, (value) => pulumi.Input.encodeList<GetLaunchTemplateInstanceRequirementMemoryMib, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkBandwidthGbps': pulumi.Input.mapInputValue<List<GetLaunchTemplateInstanceRequirementNetworkBandwidthGbp>, List<Map<String, dynamic>>>(networkBandwidthGbps, (value) => pulumi.Input.encodeList<GetLaunchTemplateInstanceRequirementNetworkBandwidthGbp, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkInterfaceCounts': pulumi.Input.mapInputValue<List<GetLaunchTemplateInstanceRequirementNetworkInterfaceCount>, List<Map<String, dynamic>>>(networkInterfaceCounts, (value) => pulumi.Input.encodeList<GetLaunchTemplateInstanceRequirementNetworkInterfaceCount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'onDemandMaxPricePercentageOverLowestPrice': onDemandMaxPricePercentageOverLowestPrice,
      'requireHibernateSupport': requireHibernateSupport,
      'spotMaxPricePercentageOverLowestPrice': spotMaxPricePercentageOverLowestPrice,
      'totalLocalStorageGbs': pulumi.Input.mapInputValue<List<GetLaunchTemplateInstanceRequirementTotalLocalStorageGb>, List<Map<String, dynamic>>>(totalLocalStorageGbs, (value) => pulumi.Input.encodeList<GetLaunchTemplateInstanceRequirementTotalLocalStorageGb, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vcpuCounts': pulumi.Input.mapInputValue<List<GetLaunchTemplateInstanceRequirementVcpuCount>, List<Map<String, dynamic>>>(vcpuCounts, (value) => pulumi.Input.encodeList<GetLaunchTemplateInstanceRequirementVcpuCount, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetLaunchTemplateInstanceRequirement.fromMap(Map<String, dynamic> map) {
    return GetLaunchTemplateInstanceRequirement(
      acceleratorCounts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLaunchTemplateInstanceRequirementAcceleratorCount>(map['acceleratorCounts']!, (value) => GetLaunchTemplateInstanceRequirementAcceleratorCount.fromMap((value as Map).cast<String, dynamic>()))),
      acceleratorManufacturers: pulumi.Input.fromValue((map['acceleratorManufacturers'] as List).cast<String>()),
      acceleratorNames: pulumi.Input.fromValue((map['acceleratorNames'] as List).cast<String>()),
      acceleratorTotalMemoryMibs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLaunchTemplateInstanceRequirementAcceleratorTotalMemoryMib>(map['acceleratorTotalMemoryMibs']!, (value) => GetLaunchTemplateInstanceRequirementAcceleratorTotalMemoryMib.fromMap((value as Map).cast<String, dynamic>()))),
      acceleratorTypes: pulumi.Input.fromValue((map['acceleratorTypes'] as List).cast<String>()),
      allowedInstanceTypes: pulumi.Input.fromValue((map['allowedInstanceTypes'] as List).cast<String>()),
      bareMetal: pulumi.Input.fromValue(map['bareMetal'] as String),
      baselineEbsBandwidthMbps: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLaunchTemplateInstanceRequirementBaselineEbsBandwidthMbp>(map['baselineEbsBandwidthMbps']!, (value) => GetLaunchTemplateInstanceRequirementBaselineEbsBandwidthMbp.fromMap((value as Map).cast<String, dynamic>()))),
      burstablePerformance: pulumi.Input.fromValue(map['burstablePerformance'] as String),
      cpuManufacturers: pulumi.Input.fromValue((map['cpuManufacturers'] as List).cast<String>()),
      excludedInstanceTypes: pulumi.Input.fromValue((map['excludedInstanceTypes'] as List).cast<String>()),
      instanceGenerations: pulumi.Input.fromValue((map['instanceGenerations'] as List).cast<String>()),
      localStorage: pulumi.Input.fromValue(map['localStorage'] as String),
      localStorageTypes: pulumi.Input.fromValue((map['localStorageTypes'] as List).cast<String>()),
      maxSpotPriceAsPercentageOfOptimalOnDemandPrice: pulumi.Input.fromValue(map['maxSpotPriceAsPercentageOfOptimalOnDemandPrice'] as int),
      memoryGibPerVcpus: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLaunchTemplateInstanceRequirementMemoryGibPerVcpus>(map['memoryGibPerVcpus']!, (value) => GetLaunchTemplateInstanceRequirementMemoryGibPerVcpus.fromMap((value as Map).cast<String, dynamic>()))),
      memoryMibs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLaunchTemplateInstanceRequirementMemoryMib>(map['memoryMibs']!, (value) => GetLaunchTemplateInstanceRequirementMemoryMib.fromMap((value as Map).cast<String, dynamic>()))),
      networkBandwidthGbps: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLaunchTemplateInstanceRequirementNetworkBandwidthGbp>(map['networkBandwidthGbps']!, (value) => GetLaunchTemplateInstanceRequirementNetworkBandwidthGbp.fromMap((value as Map).cast<String, dynamic>()))),
      networkInterfaceCounts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLaunchTemplateInstanceRequirementNetworkInterfaceCount>(map['networkInterfaceCounts']!, (value) => GetLaunchTemplateInstanceRequirementNetworkInterfaceCount.fromMap((value as Map).cast<String, dynamic>()))),
      onDemandMaxPricePercentageOverLowestPrice: pulumi.Input.fromValue(map['onDemandMaxPricePercentageOverLowestPrice'] as int),
      requireHibernateSupport: pulumi.Input.fromValue(map['requireHibernateSupport'] as bool),
      spotMaxPricePercentageOverLowestPrice: pulumi.Input.fromValue(map['spotMaxPricePercentageOverLowestPrice'] as int),
      totalLocalStorageGbs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLaunchTemplateInstanceRequirementTotalLocalStorageGb>(map['totalLocalStorageGbs']!, (value) => GetLaunchTemplateInstanceRequirementTotalLocalStorageGb.fromMap((value as Map).cast<String, dynamic>()))),
      vcpuCounts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLaunchTemplateInstanceRequirementVcpuCount>(map['vcpuCounts']!, (value) => GetLaunchTemplateInstanceRequirementVcpuCount.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

