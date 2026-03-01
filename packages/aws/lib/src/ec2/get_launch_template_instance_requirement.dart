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
  final List<GetLaunchTemplateInstanceRequirementAcceleratorCount>
  acceleratorCounts;
  final List<String> acceleratorManufacturers;
  final List<String> acceleratorNames;
  final List<GetLaunchTemplateInstanceRequirementAcceleratorTotalMemoryMib>
  acceleratorTotalMemoryMibs;
  final List<String> acceleratorTypes;
  final List<String> allowedInstanceTypes;
  final String bareMetal;
  final List<GetLaunchTemplateInstanceRequirementBaselineEbsBandwidthMbp>
  baselineEbsBandwidthMbps;
  final String burstablePerformance;
  final List<String> cpuManufacturers;
  final List<String> excludedInstanceTypes;
  final List<String> instanceGenerations;
  final String localStorage;
  final List<String> localStorageTypes;
  final int maxSpotPriceAsPercentageOfOptimalOnDemandPrice;
  final List<GetLaunchTemplateInstanceRequirementMemoryGibPerVcpus>
  memoryGibPerVcpus;
  final List<GetLaunchTemplateInstanceRequirementMemoryMib> memoryMibs;
  final List<GetLaunchTemplateInstanceRequirementNetworkBandwidthGbp>
  networkBandwidthGbps;
  final List<GetLaunchTemplateInstanceRequirementNetworkInterfaceCount>
  networkInterfaceCounts;
  final int onDemandMaxPricePercentageOverLowestPrice;
  final bool requireHibernateSupport;
  final int spotMaxPricePercentageOverLowestPrice;
  final List<GetLaunchTemplateInstanceRequirementTotalLocalStorageGb>
  totalLocalStorageGbs;
  final List<GetLaunchTemplateInstanceRequirementVcpuCount> vcpuCounts;

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
  GetLaunchTemplateInstanceRequirement({
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
      'acceleratorCounts':
          pulumi.Input.encodeList<
            GetLaunchTemplateInstanceRequirementAcceleratorCount,
            Map<String, dynamic>
          >(acceleratorCounts, (value) => value.toMap()),
      'acceleratorManufacturers': acceleratorManufacturers,
      'acceleratorNames': acceleratorNames,
      'acceleratorTotalMemoryMibs':
          pulumi.Input.encodeList<
            GetLaunchTemplateInstanceRequirementAcceleratorTotalMemoryMib,
            Map<String, dynamic>
          >(acceleratorTotalMemoryMibs, (value) => value.toMap()),
      'acceleratorTypes': acceleratorTypes,
      'allowedInstanceTypes': allowedInstanceTypes,
      'bareMetal': bareMetal,
      'baselineEbsBandwidthMbps':
          pulumi.Input.encodeList<
            GetLaunchTemplateInstanceRequirementBaselineEbsBandwidthMbp,
            Map<String, dynamic>
          >(baselineEbsBandwidthMbps, (value) => value.toMap()),
      'burstablePerformance': burstablePerformance,
      'cpuManufacturers': cpuManufacturers,
      'excludedInstanceTypes': excludedInstanceTypes,
      'instanceGenerations': instanceGenerations,
      'localStorage': localStorage,
      'localStorageTypes': localStorageTypes,
      'maxSpotPriceAsPercentageOfOptimalOnDemandPrice':
          maxSpotPriceAsPercentageOfOptimalOnDemandPrice,
      'memoryGibPerVcpus':
          pulumi.Input.encodeList<
            GetLaunchTemplateInstanceRequirementMemoryGibPerVcpus,
            Map<String, dynamic>
          >(memoryGibPerVcpus, (value) => value.toMap()),
      'memoryMibs':
          pulumi.Input.encodeList<
            GetLaunchTemplateInstanceRequirementMemoryMib,
            Map<String, dynamic>
          >(memoryMibs, (value) => value.toMap()),
      'networkBandwidthGbps':
          pulumi.Input.encodeList<
            GetLaunchTemplateInstanceRequirementNetworkBandwidthGbp,
            Map<String, dynamic>
          >(networkBandwidthGbps, (value) => value.toMap()),
      'networkInterfaceCounts':
          pulumi.Input.encodeList<
            GetLaunchTemplateInstanceRequirementNetworkInterfaceCount,
            Map<String, dynamic>
          >(networkInterfaceCounts, (value) => value.toMap()),
      'onDemandMaxPricePercentageOverLowestPrice':
          onDemandMaxPricePercentageOverLowestPrice,
      'requireHibernateSupport': requireHibernateSupport,
      'spotMaxPricePercentageOverLowestPrice':
          spotMaxPricePercentageOverLowestPrice,
      'totalLocalStorageGbs':
          pulumi.Input.encodeList<
            GetLaunchTemplateInstanceRequirementTotalLocalStorageGb,
            Map<String, dynamic>
          >(totalLocalStorageGbs, (value) => value.toMap()),
      'vcpuCounts':
          pulumi.Input.encodeList<
            GetLaunchTemplateInstanceRequirementVcpuCount,
            Map<String, dynamic>
          >(vcpuCounts, (value) => value.toMap()),
    };
  }

  factory GetLaunchTemplateInstanceRequirement.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetLaunchTemplateInstanceRequirement(
      acceleratorCounts:
          pulumi.Input.decodeList<
            GetLaunchTemplateInstanceRequirementAcceleratorCount
          >(
            map['acceleratorCounts'],
            (value) =>
                GetLaunchTemplateInstanceRequirementAcceleratorCount.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      acceleratorManufacturers: (map['acceleratorManufacturers'] as List)
          .cast<String>(),
      acceleratorNames: (map['acceleratorNames'] as List).cast<String>(),
      acceleratorTotalMemoryMibs:
          pulumi.Input.decodeList<
            GetLaunchTemplateInstanceRequirementAcceleratorTotalMemoryMib
          >(
            map['acceleratorTotalMemoryMibs'],
            (value) =>
                GetLaunchTemplateInstanceRequirementAcceleratorTotalMemoryMib.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      acceleratorTypes: (map['acceleratorTypes'] as List).cast<String>(),
      allowedInstanceTypes: (map['allowedInstanceTypes'] as List)
          .cast<String>(),
      bareMetal: map['bareMetal'] as String,
      baselineEbsBandwidthMbps:
          pulumi.Input.decodeList<
            GetLaunchTemplateInstanceRequirementBaselineEbsBandwidthMbp
          >(
            map['baselineEbsBandwidthMbps'],
            (value) =>
                GetLaunchTemplateInstanceRequirementBaselineEbsBandwidthMbp.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      burstablePerformance: map['burstablePerformance'] as String,
      cpuManufacturers: (map['cpuManufacturers'] as List).cast<String>(),
      excludedInstanceTypes: (map['excludedInstanceTypes'] as List)
          .cast<String>(),
      instanceGenerations: (map['instanceGenerations'] as List).cast<String>(),
      localStorage: map['localStorage'] as String,
      localStorageTypes: (map['localStorageTypes'] as List).cast<String>(),
      maxSpotPriceAsPercentageOfOptimalOnDemandPrice:
          map['maxSpotPriceAsPercentageOfOptimalOnDemandPrice'] as int,
      memoryGibPerVcpus:
          pulumi.Input.decodeList<
            GetLaunchTemplateInstanceRequirementMemoryGibPerVcpus
          >(
            map['memoryGibPerVcpus'],
            (value) =>
                GetLaunchTemplateInstanceRequirementMemoryGibPerVcpus.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      memoryMibs:
          pulumi
              .Input.decodeList<GetLaunchTemplateInstanceRequirementMemoryMib>(
            map['memoryMibs'],
            (value) => GetLaunchTemplateInstanceRequirementMemoryMib.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      networkBandwidthGbps:
          pulumi.Input.decodeList<
            GetLaunchTemplateInstanceRequirementNetworkBandwidthGbp
          >(
            map['networkBandwidthGbps'],
            (value) =>
                GetLaunchTemplateInstanceRequirementNetworkBandwidthGbp.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      networkInterfaceCounts:
          pulumi.Input.decodeList<
            GetLaunchTemplateInstanceRequirementNetworkInterfaceCount
          >(
            map['networkInterfaceCounts'],
            (value) =>
                GetLaunchTemplateInstanceRequirementNetworkInterfaceCount.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      onDemandMaxPricePercentageOverLowestPrice:
          map['onDemandMaxPricePercentageOverLowestPrice'] as int,
      requireHibernateSupport: map['requireHibernateSupport'] as bool,
      spotMaxPricePercentageOverLowestPrice:
          map['spotMaxPricePercentageOverLowestPrice'] as int,
      totalLocalStorageGbs:
          pulumi.Input.decodeList<
            GetLaunchTemplateInstanceRequirementTotalLocalStorageGb
          >(
            map['totalLocalStorageGbs'],
            (value) =>
                GetLaunchTemplateInstanceRequirementTotalLocalStorageGb.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      vcpuCounts:
          pulumi
              .Input.decodeList<GetLaunchTemplateInstanceRequirementVcpuCount>(
            map['vcpuCounts'],
            (value) => GetLaunchTemplateInstanceRequirementVcpuCount.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
