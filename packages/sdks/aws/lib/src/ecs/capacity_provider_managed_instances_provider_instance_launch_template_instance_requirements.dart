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
  /// Minimum and maximum number of accelerators for the instance types. This is used when you need instances with specific numbers of GPUs or other accelerators. Detailed below.
  final pulumi.Input<CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsAcceleratorCount?>? acceleratorCount;
  /// Accelerator manufacturers to include. You can specify `nvidia`, `amd`, `amazon-web-services`, `xilinx`, or `habana` depending on your accelerator requirements. Valid values are `amazon-web-services`, `amd`, `nvidia`, `xilinx`, `habana`.
  final pulumi.Input<List<String>?>? acceleratorManufacturers;
  /// Specific accelerator names to include. For example, you can specify `a100`, `v100`, `k80`, or other specific accelerator models. Valid values are `a100`, `inferentia`, `k520`, `k80`, `m60`, `radeon-pro-v520`, `t4`, `vu9p`, `v100`, `a10g`, `h100`, `t4g`.
  final pulumi.Input<List<String>?>? acceleratorNames;
  /// Minimum and maximum total accelerator memory in mebibytes (MiB). This is important for GPU workloads that require specific amounts of video memory. Detailed below.
  final pulumi.Input<CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsAcceleratorTotalMemoryMib?>? acceleratorTotalMemoryMib;
  /// Accelerator types to include. You can specify `gpu` for GPUs, `fpga` for field programmable gate arrays, or `inference` for machine learning inference accelerators. Valid values are `gpu`, `fpga`, `inference`.
  final pulumi.Input<List<String>?>? acceleratorTypes;
  /// Instance types to include in the selection. When specified, Amazon ECS only considers these instance types, subject to the other requirements specified. Maximum of 400 instance types. You can specify instance type patterns using wildcards (e.g., `m5.*`).
  final pulumi.Input<List<String>?>? allowedInstanceTypes;
  /// Whether to include bare metal instance types. Set to `included` to allow bare metal instances, `excluded` to exclude them, or `required` to use only bare metal instances. Valid values are `included`, `excluded`, `required`.
  final pulumi.Input<String?>? bareMetal;
  /// Minimum and maximum baseline Amazon EBS bandwidth in megabits per second (Mbps). This is important for workloads with high storage I/O requirements. Detailed below.
  final pulumi.Input<CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsBaselineEbsBandwidthMbps?>? baselineEbsBandwidthMbps;
  /// Whether to include burstable performance instance types (T2, T3, T3a, T4g). Set to `included` to allow burstable instances, `excluded` to exclude them, or `required` to use only burstable instances. Valid values are `included`, `excluded`, `required`.
  final pulumi.Input<String?>? burstablePerformance;
  /// CPU manufacturers to include or exclude. You can specify `intel`, `amd`, or `amazon-web-services` to control which CPU types are used for your workloads. Valid values are `intel`, `amd`, `amazon-web-services`.
  final pulumi.Input<List<String>?>? cpuManufacturers;
  /// Instance types to exclude from selection. Use this to prevent Amazon ECS from selecting specific instance types that may not be suitable for your workloads. Maximum of 400 instance types.
  final pulumi.Input<List<String>?>? excludedInstanceTypes;
  /// Instance generations to include. You can specify `current` to use the latest generation instances, or `previous` to include previous generation instances for cost optimization. Valid values are `current`, `previous`.
  final pulumi.Input<List<String>?>? instanceGenerations;
  /// Whether to include instance types with local storage. Set to `included` to allow local storage, `excluded` to exclude it, or `required` to use only instances with local storage. Valid values are `included`, `excluded`, `required`.
  final pulumi.Input<String?>? localStorage;
  /// Local storage types to include. You can specify `hdd` for hard disk drives, `ssd` for solid state drives, or both. Valid values are `hdd`, `ssd`.
  final pulumi.Input<List<String>?>? localStorageTypes;
  /// Maximum price for Spot instances as a percentage of the optimal On-Demand price. This provides more precise cost control for Spot instance selection.
  final pulumi.Input<int?>? maxSpotPriceAsPercentageOfOptimalOnDemandPrice;
  /// Minimum and maximum amount of memory per vCPU in gibibytes (GiB). This helps ensure that instance types have the appropriate memory-to-CPU ratio for your workloads. Detailed below.
  final pulumi.Input<CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsMemoryGibPerVcpu?>? memoryGibPerVcpu;
  /// Minimum and maximum amount of memory in mebibytes (MiB) for the instance types. Amazon ECS selects instance types that have memory within this range. Detailed below.
  final pulumi.Input<CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsMemoryMib> memoryMib;
  /// Minimum and maximum network bandwidth in gigabits per second (Gbps). This is crucial for network-intensive workloads that require high throughput. Detailed below.
  final pulumi.Input<CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsNetworkBandwidthGbps?>? networkBandwidthGbps;
  /// Minimum and maximum number of network interfaces for the instance types. This is useful for workloads that require multiple network interfaces. Detailed below.
  final pulumi.Input<CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsNetworkInterfaceCount?>? networkInterfaceCount;
  /// Price protection threshold for On-Demand Instances, as a percentage higher than an identified On-Demand price. The identified On-Demand price is the price of the lowest priced current generation C, M, or R instance type with your specified attributes. When Amazon ECS selects instance types with your attributes, it will exclude instance types whose price exceeds your specified threshold.
  final pulumi.Input<int?>? onDemandMaxPricePercentageOverLowestPrice;
  /// Whether the instance types must support hibernation. When set to `true`, only instance types that support hibernation are selected.
  final pulumi.Input<bool?>? requireHibernateSupport;
  /// Maximum price for Spot instances as a percentage over the lowest priced On-Demand instance. This helps control Spot instance costs while maintaining access to capacity.
  final pulumi.Input<int?>? spotMaxPricePercentageOverLowestPrice;
  /// Minimum and maximum total local storage in gigabytes (GB) for instance types with local storage. Detailed below.
  final pulumi.Input<CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsTotalLocalStorageGb?>? totalLocalStorageGb;
  /// Minimum and maximum number of vCPUs for the instance types. Amazon ECS selects instance types that have vCPU counts within this range. Detailed below.
  final pulumi.Input<CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsVcpuCount> vcpuCount;

  /// Creates a new [CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirements].
  /// [acceleratorCount] Minimum and maximum number of accelerators for the instance types. This is used when you need instances with specific numbers of GPUs or other accelerators. Detailed below.
  /// [acceleratorManufacturers] Accelerator manufacturers to include. You can specify `nvidia`, `amd`, `amazon-web-services`, `xilinx`, or `habana` depending on your accelerator requirements. Valid values are `amazon-web-services`, `amd`, `nvidia`, `xilinx`, `habana`.
  /// [acceleratorNames] Specific accelerator names to include. For example, you can specify `a100`, `v100`, `k80`, or other specific accelerator models. Valid values are `a100`, `inferentia`, `k520`, `k80`, `m60`, `radeon-pro-v520`, `t4`, `vu9p`, `v100`, `a10g`, `h100`, `t4g`.
  /// [acceleratorTotalMemoryMib] Minimum and maximum total accelerator memory in mebibytes (MiB). This is important for GPU workloads that require specific amounts of video memory. Detailed below.
  /// [acceleratorTypes] Accelerator types to include. You can specify `gpu` for GPUs, `fpga` for field programmable gate arrays, or `inference` for machine learning inference accelerators. Valid values are `gpu`, `fpga`, `inference`.
  /// [allowedInstanceTypes] Instance types to include in the selection. When specified, Amazon ECS only considers these instance types, subject to the other requirements specified. Maximum of 400 instance types. You can specify instance type patterns using wildcards (e.g., `m5.*`).
  /// [bareMetal] Whether to include bare metal instance types. Set to `included` to allow bare metal instances, `excluded` to exclude them, or `required` to use only bare metal instances. Valid values are `included`, `excluded`, `required`.
  /// [baselineEbsBandwidthMbps] Minimum and maximum baseline Amazon EBS bandwidth in megabits per second (Mbps). This is important for workloads with high storage I/O requirements. Detailed below.
  /// [burstablePerformance] Whether to include burstable performance instance types (T2, T3, T3a, T4g). Set to `included` to allow burstable instances, `excluded` to exclude them, or `required` to use only burstable instances. Valid values are `included`, `excluded`, `required`.
  /// [cpuManufacturers] CPU manufacturers to include or exclude. You can specify `intel`, `amd`, or `amazon-web-services` to control which CPU types are used for your workloads. Valid values are `intel`, `amd`, `amazon-web-services`.
  /// [excludedInstanceTypes] Instance types to exclude from selection. Use this to prevent Amazon ECS from selecting specific instance types that may not be suitable for your workloads. Maximum of 400 instance types.
  /// [instanceGenerations] Instance generations to include. You can specify `current` to use the latest generation instances, or `previous` to include previous generation instances for cost optimization. Valid values are `current`, `previous`.
  /// [localStorage] Whether to include instance types with local storage. Set to `included` to allow local storage, `excluded` to exclude it, or `required` to use only instances with local storage. Valid values are `included`, `excluded`, `required`.
  /// [localStorageTypes] Local storage types to include. You can specify `hdd` for hard disk drives, `ssd` for solid state drives, or both. Valid values are `hdd`, `ssd`.
  /// [maxSpotPriceAsPercentageOfOptimalOnDemandPrice] Maximum price for Spot instances as a percentage of the optimal On-Demand price. This provides more precise cost control for Spot instance selection.
  /// [memoryGibPerVcpu] Minimum and maximum amount of memory per vCPU in gibibytes (GiB). This helps ensure that instance types have the appropriate memory-to-CPU ratio for your workloads. Detailed below.
  /// [memoryMib] Minimum and maximum amount of memory in mebibytes (MiB) for the instance types. Amazon ECS selects instance types that have memory within this range. Detailed below.
  /// [networkBandwidthGbps] Minimum and maximum network bandwidth in gigabits per second (Gbps). This is crucial for network-intensive workloads that require high throughput. Detailed below.
  /// [networkInterfaceCount] Minimum and maximum number of network interfaces for the instance types. This is useful for workloads that require multiple network interfaces. Detailed below.
  /// [onDemandMaxPricePercentageOverLowestPrice] Price protection threshold for On-Demand Instances, as a percentage higher than an identified On-Demand price. The identified On-Demand price is the price of the lowest priced current generation C, M, or R instance type with your specified attributes. When Amazon ECS selects instance types with your attributes, it will exclude instance types whose price exceeds your specified threshold.
  /// [requireHibernateSupport] Whether the instance types must support hibernation. When set to `true`, only instance types that support hibernation are selected.
  /// [spotMaxPricePercentageOverLowestPrice] Maximum price for Spot instances as a percentage over the lowest priced On-Demand instance. This helps control Spot instance costs while maintaining access to capacity.
  /// [totalLocalStorageGb] Minimum and maximum total local storage in gigabytes (GB) for instance types with local storage. Detailed below.
  /// [vcpuCount] Minimum and maximum number of vCPUs for the instance types. Amazon ECS selects instance types that have vCPU counts within this range. Detailed below.
  const CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirements({
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
      acceleratorCount: (() { final guardedValue = map['acceleratorCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsAcceleratorCount.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      acceleratorManufacturers: (() { final guardedValue = map['acceleratorManufacturers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      acceleratorNames: (() { final guardedValue = map['acceleratorNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      acceleratorTotalMemoryMib: (() { final guardedValue = map['acceleratorTotalMemoryMib']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsAcceleratorTotalMemoryMib.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      acceleratorTypes: (() { final guardedValue = map['acceleratorTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedInstanceTypes: (() { final guardedValue = map['allowedInstanceTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      bareMetal: (() { final guardedValue = map['bareMetal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      baselineEbsBandwidthMbps: (() { final guardedValue = map['baselineEbsBandwidthMbps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsBaselineEbsBandwidthMbps.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      burstablePerformance: (() { final guardedValue = map['burstablePerformance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cpuManufacturers: (() { final guardedValue = map['cpuManufacturers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      excludedInstanceTypes: (() { final guardedValue = map['excludedInstanceTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      instanceGenerations: (() { final guardedValue = map['instanceGenerations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      localStorage: (() { final guardedValue = map['localStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localStorageTypes: (() { final guardedValue = map['localStorageTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      maxSpotPriceAsPercentageOfOptimalOnDemandPrice: (() { final guardedValue = map['maxSpotPriceAsPercentageOfOptimalOnDemandPrice']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      memoryGibPerVcpu: (() { final guardedValue = map['memoryGibPerVcpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsMemoryGibPerVcpu.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      memoryMib: pulumi.Input.fromValue(CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsMemoryMib.fromMap((map['memoryMib']! as Map).cast<String, dynamic>())),
      networkBandwidthGbps: (() { final guardedValue = map['networkBandwidthGbps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsNetworkBandwidthGbps.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkInterfaceCount: (() { final guardedValue = map['networkInterfaceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsNetworkInterfaceCount.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      onDemandMaxPricePercentageOverLowestPrice: (() { final guardedValue = map['onDemandMaxPricePercentageOverLowestPrice']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      requireHibernateSupport: (() { final guardedValue = map['requireHibernateSupport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      spotMaxPricePercentageOverLowestPrice: (() { final guardedValue = map['spotMaxPricePercentageOverLowestPrice']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      totalLocalStorageGb: (() { final guardedValue = map['totalLocalStorageGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsTotalLocalStorageGb.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vcpuCount: pulumi.Input.fromValue(CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsVcpuCount.fromMap((map['vcpuCount']! as Map).cast<String, dynamic>())),
    );
  }
}
