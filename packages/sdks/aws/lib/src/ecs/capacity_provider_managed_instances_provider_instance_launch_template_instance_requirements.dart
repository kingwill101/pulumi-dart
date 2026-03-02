// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_provider_managed_instances_provider_instance_launch_template_instance_requirements_accelerator_count.dart';
import 'capacity_provider_managed_instances_provider_instance_launch_template_instance_requirements_accelerator_total_memory_mib.dart';
import 'capacity_provider_managed_instances_provider_instance_launch_template_instance_requirements_baseline_ebs_bandwidth_mbps.dart';
import 'capacity_provider_managed_instances_provider_instance_launch_template_instance_requirements_memory_gib_per_vcpu.dart';
import 'capacity_provider_managed_instances_provider_instance_launch_template_instance_requirements_memory_mib.dart';
import 'capacity_provider_managed_instances_provider_instance_launch_template_instance_requirements_network_bandwidth_gbps.dart';
import 'capacity_provider_managed_instances_provider_instance_launch_template_instance_requirements_network_interface_count.dart';
import 'capacity_provider_managed_instances_provider_instance_launch_template_instance_requirements_total_local_storage_gb.dart';
import 'capacity_provider_managed_instances_provider_instance_launch_template_instance_requirements_vcpu_count.dart';

class CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirements {
  /// The minimum and maximum number of accelerators for the instance types. This is used when you need instances with specific numbers of GPUs or other accelerators.
  final pulumi.Input<CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsAcceleratorCount>? acceleratorCount;
  /// The accelerator manufacturers to include. You can specify `nvidia`, `amd`, `amazon-web-services`, `xilinx`, or `habana` depending on your accelerator requirements. Valid values are `amazon-web-services`, `amd`, `nvidia`, `xilinx`, `habana`.
  final pulumi.Input<List<String>>? acceleratorManufacturers;
  /// The specific accelerator names to include. For example, you can specify `a100`, `v100`, `k80`, or other specific accelerator models. Valid values are `a100`, `inferentia`, `k520`, `k80`, `m60`, `radeon-pro-v520`, `t4`, `vu9p`, `v100`, `a10g`, `h100`, `t4g`.
  final pulumi.Input<List<String>>? acceleratorNames;
  /// The minimum and maximum total accelerator memory in mebibytes (MiB). This is important for GPU workloads that require specific amounts of video memory.
  final pulumi.Input<CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsAcceleratorTotalMemoryMib>? acceleratorTotalMemoryMib;
  /// The accelerator types to include. You can specify `gpu` for graphics processing units, `fpga` for field programmable gate arrays, or `inference` for machine learning inference accelerators. Valid values are `gpu`, `fpga`, `inference`.
  final pulumi.Input<List<String>>? acceleratorTypes;
  /// The instance types to include in the selection. When specified, Amazon ECS only considers these instance types, subject to the other requirements specified. Maximum of 400 instance types. You can specify instance type patterns using wildcards (e.g., `m5.*`).
  final pulumi.Input<List<String>>? allowedInstanceTypes;
  /// Indicates whether to include bare metal instance types. Set to `included` to allow bare metal instances, `excluded` to exclude them, or `required` to use only bare metal instances. Valid values are `included`, `excluded`, `required`.
  final pulumi.Input<String>? bareMetal;
  /// The minimum and maximum baseline Amazon EBS bandwidth in megabits per second (Mbps). This is important for workloads with high storage I/O requirements.
  final pulumi.Input<CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsBaselineEbsBandwidthMbps>? baselineEbsBandwidthMbps;
  /// Indicates whether to include burstable performance instance types (T2, T3, T3a, T4g). Set to `included` to allow burstable instances, `excluded` to exclude them, or `required` to use only burstable instances. Valid values are `included`, `excluded`, `required`.
  final pulumi.Input<String>? burstablePerformance;
  /// The CPU manufacturers to include or exclude. You can specify `intel`, `amd`, or `amazon-web-services` to control which CPU types are used for your workloads. Valid values are `intel`, `amd`, `amazon-web-services`.
  final pulumi.Input<List<String>>? cpuManufacturers;
  /// The instance types to exclude from selection. Use this to prevent Amazon ECS from selecting specific instance types that may not be suitable for your workloads. Maximum of 400 instance types.
  final pulumi.Input<List<String>>? excludedInstanceTypes;
  /// The instance generations to include. You can specify `current` to use the latest generation instances, or `previous` to include previous generation instances for cost optimization. Valid values are `current`, `previous`.
  final pulumi.Input<List<String>>? instanceGenerations;
  /// Indicates whether to include instance types with local storage. Set to `included` to allow local storage, `excluded` to exclude it, or `required` to use only instances with local storage. Valid values are `included`, `excluded`, `required`.
  final pulumi.Input<String>? localStorage;
  /// The local storage types to include. You can specify `hdd` for hard disk drives, `ssd` for solid state drives, or both. Valid values are `hdd`, `ssd`.
  final pulumi.Input<List<String>>? localStorageTypes;
  /// The maximum price for Spot instances as a percentage of the optimal On-Demand price. This provides more precise cost control for Spot instance selection.
  final pulumi.Input<int>? maxSpotPriceAsPercentageOfOptimalOnDemandPrice;
  /// The minimum and maximum amount of memory per vCPU in gibibytes (GiB). This helps ensure that instance types have the appropriate memory-to-CPU ratio for your workloads.
  final pulumi.Input<CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsMemoryGibPerVcpu>? memoryGibPerVcpu;
  /// The minimum and maximum amount of memory in mebibytes (MiB) for the instance types. Amazon ECS selects instance types that have memory within this range.
  final pulumi.Input<CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsMemoryMib> memoryMib;
  /// The minimum and maximum network bandwidth in gigabits per second (Gbps). This is crucial for network-intensive workloads that require high throughput.
  final pulumi.Input<CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsNetworkBandwidthGbps>? networkBandwidthGbps;
  /// The minimum and maximum number of network interfaces for the instance types. This is useful for workloads that require multiple network interfaces.
  final pulumi.Input<CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsNetworkInterfaceCount>? networkInterfaceCount;
  /// The price protection threshold for On-Demand Instances, as a percentage higher than an identified On-Demand price. The identified On-Demand price is the price of the lowest priced current generation C, M, or R instance type with your specified attributes. When Amazon ECS selects instance types with your attributes, it will exclude instance types whose price exceeds your specified threshold.
  final pulumi.Input<int>? onDemandMaxPricePercentageOverLowestPrice;
  /// Indicates whether the instance types must support hibernation. When set to `true`, only instance types that support hibernation are selected.
  final pulumi.Input<bool>? requireHibernateSupport;
  /// The maximum price for Spot instances as a percentage over the lowest priced On-Demand instance. This helps control Spot instance costs while maintaining access to capacity.
  final pulumi.Input<int>? spotMaxPricePercentageOverLowestPrice;
  /// The minimum and maximum total local storage in gigabytes (GB) for instance types with local storage.
  final pulumi.Input<CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsTotalLocalStorageGb>? totalLocalStorageGb;
  /// The minimum and maximum number of vCPUs for the instance types. Amazon ECS selects instance types that have vCPU counts within this range.
  final pulumi.Input<CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsVcpuCount> vcpuCount;

  /// Creates a new [CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirements].
  /// [acceleratorCount] The minimum and maximum number of accelerators for the instance types. This is used when you need instances with specific numbers of GPUs or other accelerators.
  /// [acceleratorManufacturers] The accelerator manufacturers to include. You can specify `nvidia`, `amd`, `amazon-web-services`, `xilinx`, or `habana` depending on your accelerator requirements. Valid values are `amazon-web-services`, `amd`, `nvidia`, `xilinx`, `habana`.
  /// [acceleratorNames] The specific accelerator names to include. For example, you can specify `a100`, `v100`, `k80`, or other specific accelerator models. Valid values are `a100`, `inferentia`, `k520`, `k80`, `m60`, `radeon-pro-v520`, `t4`, `vu9p`, `v100`, `a10g`, `h100`, `t4g`.
  /// [acceleratorTotalMemoryMib] The minimum and maximum total accelerator memory in mebibytes (MiB). This is important for GPU workloads that require specific amounts of video memory.
  /// [acceleratorTypes] The accelerator types to include. You can specify `gpu` for graphics processing units, `fpga` for field programmable gate arrays, or `inference` for machine learning inference accelerators. Valid values are `gpu`, `fpga`, `inference`.
  /// [allowedInstanceTypes] The instance types to include in the selection. When specified, Amazon ECS only considers these instance types, subject to the other requirements specified. Maximum of 400 instance types. You can specify instance type patterns using wildcards (e.g., `m5.*`).
  /// [bareMetal] Indicates whether to include bare metal instance types. Set to `included` to allow bare metal instances, `excluded` to exclude them, or `required` to use only bare metal instances. Valid values are `included`, `excluded`, `required`.
  /// [baselineEbsBandwidthMbps] The minimum and maximum baseline Amazon EBS bandwidth in megabits per second (Mbps). This is important for workloads with high storage I/O requirements.
  /// [burstablePerformance] Indicates whether to include burstable performance instance types (T2, T3, T3a, T4g). Set to `included` to allow burstable instances, `excluded` to exclude them, or `required` to use only burstable instances. Valid values are `included`, `excluded`, `required`.
  /// [cpuManufacturers] The CPU manufacturers to include or exclude. You can specify `intel`, `amd`, or `amazon-web-services` to control which CPU types are used for your workloads. Valid values are `intel`, `amd`, `amazon-web-services`.
  /// [excludedInstanceTypes] The instance types to exclude from selection. Use this to prevent Amazon ECS from selecting specific instance types that may not be suitable for your workloads. Maximum of 400 instance types.
  /// [instanceGenerations] The instance generations to include. You can specify `current` to use the latest generation instances, or `previous` to include previous generation instances for cost optimization. Valid values are `current`, `previous`.
  /// [localStorage] Indicates whether to include instance types with local storage. Set to `included` to allow local storage, `excluded` to exclude it, or `required` to use only instances with local storage. Valid values are `included`, `excluded`, `required`.
  /// [localStorageTypes] The local storage types to include. You can specify `hdd` for hard disk drives, `ssd` for solid state drives, or both. Valid values are `hdd`, `ssd`.
  /// [maxSpotPriceAsPercentageOfOptimalOnDemandPrice] The maximum price for Spot instances as a percentage of the optimal On-Demand price. This provides more precise cost control for Spot instance selection.
  /// [memoryGibPerVcpu] The minimum and maximum amount of memory per vCPU in gibibytes (GiB). This helps ensure that instance types have the appropriate memory-to-CPU ratio for your workloads.
  /// [memoryMib] The minimum and maximum amount of memory in mebibytes (MiB) for the instance types. Amazon ECS selects instance types that have memory within this range.
  /// [networkBandwidthGbps] The minimum and maximum network bandwidth in gigabits per second (Gbps). This is crucial for network-intensive workloads that require high throughput.
  /// [networkInterfaceCount] The minimum and maximum number of network interfaces for the instance types. This is useful for workloads that require multiple network interfaces.
  /// [onDemandMaxPricePercentageOverLowestPrice] The price protection threshold for On-Demand Instances, as a percentage higher than an identified On-Demand price. The identified On-Demand price is the price of the lowest priced current generation C, M, or R instance type with your specified attributes. When Amazon ECS selects instance types with your attributes, it will exclude instance types whose price exceeds your specified threshold.
  /// [requireHibernateSupport] Indicates whether the instance types must support hibernation. When set to `true`, only instance types that support hibernation are selected.
  /// [spotMaxPricePercentageOverLowestPrice] The maximum price for Spot instances as a percentage over the lowest priced On-Demand instance. This helps control Spot instance costs while maintaining access to capacity.
  /// [totalLocalStorageGb] The minimum and maximum total local storage in gigabytes (GB) for instance types with local storage.
  /// [vcpuCount] The minimum and maximum number of vCPUs for the instance types. Amazon ECS selects instance types that have vCPU counts within this range.
  CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirements({
    this.acceleratorCount,
    this.acceleratorManufacturers,
    this.acceleratorNames,
    this.acceleratorTotalMemoryMib,
    this.acceleratorTypes,
    this.allowedInstanceTypes,
    this.bareMetal,
    this.baselineEbsBandwidthMbps,
    this.burstablePerformance,
    this.cpuManufacturers,
    this.excludedInstanceTypes,
    this.instanceGenerations,
    this.localStorage,
    this.localStorageTypes,
    this.maxSpotPriceAsPercentageOfOptimalOnDemandPrice,
    this.memoryGibPerVcpu,
    required this.memoryMib,
    this.networkBandwidthGbps,
    this.networkInterfaceCount,
    this.onDemandMaxPricePercentageOverLowestPrice,
    this.requireHibernateSupport,
    this.spotMaxPricePercentageOverLowestPrice,
    this.totalLocalStorageGb,
    required this.vcpuCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorCount': ?pulumi.Input.mapOptionalInputValue<CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsAcceleratorCount, Map<String, dynamic>>(acceleratorCount, (value) => value.toMap()),
      'acceleratorManufacturers': ?acceleratorManufacturers,
      'acceleratorNames': ?acceleratorNames,
      'acceleratorTotalMemoryMib': ?pulumi.Input.mapOptionalInputValue<CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsAcceleratorTotalMemoryMib, Map<String, dynamic>>(acceleratorTotalMemoryMib, (value) => value.toMap()),
      'acceleratorTypes': ?acceleratorTypes,
      'allowedInstanceTypes': ?allowedInstanceTypes,
      'bareMetal': ?bareMetal,
      'baselineEbsBandwidthMbps': ?pulumi.Input.mapOptionalInputValue<CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsBaselineEbsBandwidthMbps, Map<String, dynamic>>(baselineEbsBandwidthMbps, (value) => value.toMap()),
      'burstablePerformance': ?burstablePerformance,
      'cpuManufacturers': ?cpuManufacturers,
      'excludedInstanceTypes': ?excludedInstanceTypes,
      'instanceGenerations': ?instanceGenerations,
      'localStorage': ?localStorage,
      'localStorageTypes': ?localStorageTypes,
      'maxSpotPriceAsPercentageOfOptimalOnDemandPrice': ?maxSpotPriceAsPercentageOfOptimalOnDemandPrice,
      'memoryGibPerVcpu': ?pulumi.Input.mapOptionalInputValue<CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsMemoryGibPerVcpu, Map<String, dynamic>>(memoryGibPerVcpu, (value) => value.toMap()),
      'memoryMib': pulumi.Input.mapInputValue<CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsMemoryMib, Map<String, dynamic>>(memoryMib, (value) => value.toMap()),
      'networkBandwidthGbps': ?pulumi.Input.mapOptionalInputValue<CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsNetworkBandwidthGbps, Map<String, dynamic>>(networkBandwidthGbps, (value) => value.toMap()),
      'networkInterfaceCount': ?pulumi.Input.mapOptionalInputValue<CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsNetworkInterfaceCount, Map<String, dynamic>>(networkInterfaceCount, (value) => value.toMap()),
      'onDemandMaxPricePercentageOverLowestPrice': ?onDemandMaxPricePercentageOverLowestPrice,
      'requireHibernateSupport': ?requireHibernateSupport,
      'spotMaxPricePercentageOverLowestPrice': ?spotMaxPricePercentageOverLowestPrice,
      'totalLocalStorageGb': ?pulumi.Input.mapOptionalInputValue<CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsTotalLocalStorageGb, Map<String, dynamic>>(totalLocalStorageGb, (value) => value.toMap()),
      'vcpuCount': pulumi.Input.mapInputValue<CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsVcpuCount, Map<String, dynamic>>(vcpuCount, (value) => value.toMap()),
    };
  }

  factory CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirements.fromMap(Map<String, dynamic> map) {
    return CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirements(
      acceleratorCount: map['acceleratorCount'] == null ? null : (CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsAcceleratorCount.fromMap((map['acceleratorCount'] as Map).cast<String, dynamic>())).input(),
      acceleratorManufacturers: map['acceleratorManufacturers'] == null ? null : ((map['acceleratorManufacturers'] as List).cast<String>()).input(),
      acceleratorNames: map['acceleratorNames'] == null ? null : ((map['acceleratorNames'] as List).cast<String>()).input(),
      acceleratorTotalMemoryMib: map['acceleratorTotalMemoryMib'] == null ? null : (CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsAcceleratorTotalMemoryMib.fromMap((map['acceleratorTotalMemoryMib'] as Map).cast<String, dynamic>())).input(),
      acceleratorTypes: map['acceleratorTypes'] == null ? null : ((map['acceleratorTypes'] as List).cast<String>()).input(),
      allowedInstanceTypes: map['allowedInstanceTypes'] == null ? null : ((map['allowedInstanceTypes'] as List).cast<String>()).input(),
      bareMetal: map['bareMetal'] == null ? null : (map['bareMetal'] as String).input(),
      baselineEbsBandwidthMbps: map['baselineEbsBandwidthMbps'] == null ? null : (CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsBaselineEbsBandwidthMbps.fromMap((map['baselineEbsBandwidthMbps'] as Map).cast<String, dynamic>())).input(),
      burstablePerformance: map['burstablePerformance'] == null ? null : (map['burstablePerformance'] as String).input(),
      cpuManufacturers: map['cpuManufacturers'] == null ? null : ((map['cpuManufacturers'] as List).cast<String>()).input(),
      excludedInstanceTypes: map['excludedInstanceTypes'] == null ? null : ((map['excludedInstanceTypes'] as List).cast<String>()).input(),
      instanceGenerations: map['instanceGenerations'] == null ? null : ((map['instanceGenerations'] as List).cast<String>()).input(),
      localStorage: map['localStorage'] == null ? null : (map['localStorage'] as String).input(),
      localStorageTypes: map['localStorageTypes'] == null ? null : ((map['localStorageTypes'] as List).cast<String>()).input(),
      maxSpotPriceAsPercentageOfOptimalOnDemandPrice: map['maxSpotPriceAsPercentageOfOptimalOnDemandPrice'] == null ? null : (map['maxSpotPriceAsPercentageOfOptimalOnDemandPrice'] as int).input(),
      memoryGibPerVcpu: map['memoryGibPerVcpu'] == null ? null : (CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsMemoryGibPerVcpu.fromMap((map['memoryGibPerVcpu'] as Map).cast<String, dynamic>())).input(),
      memoryMib: (CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsMemoryMib.fromMap((map['memoryMib'] as Map).cast<String, dynamic>())).input(),
      networkBandwidthGbps: map['networkBandwidthGbps'] == null ? null : (CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsNetworkBandwidthGbps.fromMap((map['networkBandwidthGbps'] as Map).cast<String, dynamic>())).input(),
      networkInterfaceCount: map['networkInterfaceCount'] == null ? null : (CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsNetworkInterfaceCount.fromMap((map['networkInterfaceCount'] as Map).cast<String, dynamic>())).input(),
      onDemandMaxPricePercentageOverLowestPrice: map['onDemandMaxPricePercentageOverLowestPrice'] == null ? null : (map['onDemandMaxPricePercentageOverLowestPrice'] as int).input(),
      requireHibernateSupport: map['requireHibernateSupport'] == null ? null : (map['requireHibernateSupport'] as bool).input(),
      spotMaxPricePercentageOverLowestPrice: map['spotMaxPricePercentageOverLowestPrice'] == null ? null : (map['spotMaxPricePercentageOverLowestPrice'] as int).input(),
      totalLocalStorageGb: map['totalLocalStorageGb'] == null ? null : (CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsTotalLocalStorageGb.fromMap((map['totalLocalStorageGb'] as Map).cast<String, dynamic>())).input(),
      vcpuCount: (CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsVcpuCount.fromMap((map['vcpuCount'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

