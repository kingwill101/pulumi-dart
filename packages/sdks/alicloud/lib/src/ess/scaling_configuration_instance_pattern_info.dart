// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScalingConfigurationInstancePatternInfo {
  /// Architecture N of instance type N. Valid values: X86, Heterogeneous, BareMetal, Arm, SuperComputeCluster.
  final pulumi.Input<List<String>>? architectures;
  /// Specifies whether to include burstable instance types.  Valid values: Exclude, Include, Required.
  final pulumi.Input<String>? burstablePerformance;
  /// The number of vCPUs that are specified for an instance type in instancePatternInfo.
  final pulumi.Input<int>? cores;
  /// CPU architecture N of the instance types. Valid values: x86,Arm.
  final pulumi.Input<List<String>>? cpuArchitectures;
  /// Instance type N that you want to exclude. You can use wildcard characters, such as an asterisk (*), to exclude an instance type or an instance family.
  final pulumi.Input<List<String>>? excludedInstanceTypes;
  /// The GPU model.
  final pulumi.Input<List<String>>? gpuSpecs;
  /// Category N of the instances type. Valid values: General-purpose, Compute-optimized, Memory-optimized, Big data, Local SSDs, Enhanced, Shared, Compute-optimized with GPU, Visual Compute-optimized, Heterogeneous Service, Compute-optimized with FPGA, Compute-optimized with NPU, ECS Bare Metal, High Performance Compute.
  final pulumi.Input<List<String>>? instanceCategories;
  /// The instance family level in instancePatternInfo.
  final pulumi.Input<String>? instanceFamilyLevel;
  /// Instance family N that is queried. Valid values of N: 1 to 10.
  final pulumi.Input<List<String>>? instanceTypeFamilies;
  /// The maximum hourly price for a pay-as-you-go instance or a preemptible instance in instancePatternInfo.
  final pulumi.Input<double>? maxPrice;
  /// The maximum number of vCPUs per instance type.
  final pulumi.Input<int>? maximumCpuCoreCount;
  /// The maximum number of GPUs per instance. The value must be a positive integer.
  final pulumi.Input<int>? maximumGpuAmount;
  /// The maximum memory size per instance. Unit: GiB.
  final pulumi.Input<double>? maximumMemorySize;
  /// The memory size that is specified for an instance type in instancePatternInfo.
  final pulumi.Input<double>? memory;
  /// The minimum baseline vCPU computing performance (overall baseline performance of all vCPUs) per t5 or t6 burstable instance.
  final pulumi.Input<int>? minimumBaselineCredit;
  /// The minimum number of vCPUs per instance type.
  final pulumi.Input<int>? minimumCpuCoreCount;
  /// The minimum number of IPv6 addresses per ENI.
  final pulumi.Input<int>? minimumEniIpv6AddressQuantity;
  /// The minimum number of IPv4 addresses per ENI.
  final pulumi.Input<int>? minimumEniPrivateIpAddressQuantity;
  /// The minimum number of elastic network interfaces (ENIs) per instance.
  final pulumi.Input<int>? minimumEniQuantity;
  /// The minimum number of GPUs per instance. The value must be a positive integer.
  final pulumi.Input<int>? minimumGpuAmount;
  /// The initial vCPU credits per t5 or t6 burstable instance.
  final pulumi.Input<int>? minimumInitialCredit;
  /// The minimum memory size per instance. Unit: GiB.
  final pulumi.Input<double>? minimumMemorySize;
  /// Processor model N of the ECS instances. Valid values of N: 1 to 10.
  final pulumi.Input<List<String>>? physicalProcessorModels;

  /// Creates a new [ScalingConfigurationInstancePatternInfo].
  /// [architectures] Architecture N of instance type N. Valid values: X86, Heterogeneous, BareMetal, Arm, SuperComputeCluster.
  /// [burstablePerformance] Specifies whether to include burstable instance types.  Valid values: Exclude, Include, Required.
  /// [cores] The number of vCPUs that are specified for an instance type in instancePatternInfo.
  /// [cpuArchitectures] CPU architecture N of the instance types. Valid values: x86,Arm.
  /// [excludedInstanceTypes] Instance type N that you want to exclude. You can use wildcard characters, such as an asterisk (*), to exclude an instance type or an instance family.
  /// [gpuSpecs] The GPU model.
  /// [instanceCategories] Category N of the instances type. Valid values: General-purpose, Compute-optimized, Memory-optimized, Big data, Local SSDs, Enhanced, Shared, Compute-optimized with GPU, Visual Compute-optimized, Heterogeneous Service, Compute-optimized with FPGA, Compute-optimized with NPU, ECS Bare Metal, High Performance Compute.
  /// [instanceFamilyLevel] The instance family level in instancePatternInfo.
  /// [instanceTypeFamilies] Instance family N that is queried. Valid values of N: 1 to 10.
  /// [maxPrice] The maximum hourly price for a pay-as-you-go instance or a preemptible instance in instancePatternInfo.
  /// [maximumCpuCoreCount] The maximum number of vCPUs per instance type.
  /// [maximumGpuAmount] The maximum number of GPUs per instance. The value must be a positive integer.
  /// [maximumMemorySize] The maximum memory size per instance. Unit: GiB.
  /// [memory] The memory size that is specified for an instance type in instancePatternInfo.
  /// [minimumBaselineCredit] The minimum baseline vCPU computing performance (overall baseline performance of all vCPUs) per t5 or t6 burstable instance.
  /// [minimumCpuCoreCount] The minimum number of vCPUs per instance type.
  /// [minimumEniIpv6AddressQuantity] The minimum number of IPv6 addresses per ENI.
  /// [minimumEniPrivateIpAddressQuantity] The minimum number of IPv4 addresses per ENI.
  /// [minimumEniQuantity] The minimum number of elastic network interfaces (ENIs) per instance.
  /// [minimumGpuAmount] The minimum number of GPUs per instance. The value must be a positive integer.
  /// [minimumInitialCredit] The initial vCPU credits per t5 or t6 burstable instance.
  /// [minimumMemorySize] The minimum memory size per instance. Unit: GiB.
  /// [physicalProcessorModels] Processor model N of the ECS instances. Valid values of N: 1 to 10.
  ScalingConfigurationInstancePatternInfo({
    this.architectures,
    this.burstablePerformance,
    this.cores,
    this.cpuArchitectures,
    this.excludedInstanceTypes,
    this.gpuSpecs,
    this.instanceCategories,
    this.instanceFamilyLevel,
    this.instanceTypeFamilies,
    this.maxPrice,
    this.maximumCpuCoreCount,
    this.maximumGpuAmount,
    this.maximumMemorySize,
    this.memory,
    this.minimumBaselineCredit,
    this.minimumCpuCoreCount,
    this.minimumEniIpv6AddressQuantity,
    this.minimumEniPrivateIpAddressQuantity,
    this.minimumEniQuantity,
    this.minimumGpuAmount,
    this.minimumInitialCredit,
    this.minimumMemorySize,
    this.physicalProcessorModels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architectures': ?architectures,
      'burstablePerformance': ?burstablePerformance,
      'cores': ?cores,
      'cpuArchitectures': ?cpuArchitectures,
      'excludedInstanceTypes': ?excludedInstanceTypes,
      'gpuSpecs': ?gpuSpecs,
      'instanceCategories': ?instanceCategories,
      'instanceFamilyLevel': ?instanceFamilyLevel,
      'instanceTypeFamilies': ?instanceTypeFamilies,
      'maxPrice': ?maxPrice,
      'maximumCpuCoreCount': ?maximumCpuCoreCount,
      'maximumGpuAmount': ?maximumGpuAmount,
      'maximumMemorySize': ?maximumMemorySize,
      'memory': ?memory,
      'minimumBaselineCredit': ?minimumBaselineCredit,
      'minimumCpuCoreCount': ?minimumCpuCoreCount,
      'minimumEniIpv6AddressQuantity': ?minimumEniIpv6AddressQuantity,
      'minimumEniPrivateIpAddressQuantity': ?minimumEniPrivateIpAddressQuantity,
      'minimumEniQuantity': ?minimumEniQuantity,
      'minimumGpuAmount': ?minimumGpuAmount,
      'minimumInitialCredit': ?minimumInitialCredit,
      'minimumMemorySize': ?minimumMemorySize,
      'physicalProcessorModels': ?physicalProcessorModels,
    };
  }

  factory ScalingConfigurationInstancePatternInfo.fromMap(Map<String, dynamic> map) {
    return ScalingConfigurationInstancePatternInfo(
      architectures: map['architectures'] == null ? null : ((map['architectures'] as List).cast<String>()).input(),
      burstablePerformance: map['burstablePerformance'] == null ? null : (map['burstablePerformance'] as String).input(),
      cores: map['cores'] == null ? null : (map['cores'] as int).input(),
      cpuArchitectures: map['cpuArchitectures'] == null ? null : ((map['cpuArchitectures'] as List).cast<String>()).input(),
      excludedInstanceTypes: map['excludedInstanceTypes'] == null ? null : ((map['excludedInstanceTypes'] as List).cast<String>()).input(),
      gpuSpecs: map['gpuSpecs'] == null ? null : ((map['gpuSpecs'] as List).cast<String>()).input(),
      instanceCategories: map['instanceCategories'] == null ? null : ((map['instanceCategories'] as List).cast<String>()).input(),
      instanceFamilyLevel: map['instanceFamilyLevel'] == null ? null : (map['instanceFamilyLevel'] as String).input(),
      instanceTypeFamilies: map['instanceTypeFamilies'] == null ? null : ((map['instanceTypeFamilies'] as List).cast<String>()).input(),
      maxPrice: map['maxPrice'] == null ? null : (map['maxPrice'] as double).input(),
      maximumCpuCoreCount: map['maximumCpuCoreCount'] == null ? null : (map['maximumCpuCoreCount'] as int).input(),
      maximumGpuAmount: map['maximumGpuAmount'] == null ? null : (map['maximumGpuAmount'] as int).input(),
      maximumMemorySize: map['maximumMemorySize'] == null ? null : (map['maximumMemorySize'] as double).input(),
      memory: map['memory'] == null ? null : (map['memory'] as double).input(),
      minimumBaselineCredit: map['minimumBaselineCredit'] == null ? null : (map['minimumBaselineCredit'] as int).input(),
      minimumCpuCoreCount: map['minimumCpuCoreCount'] == null ? null : (map['minimumCpuCoreCount'] as int).input(),
      minimumEniIpv6AddressQuantity: map['minimumEniIpv6AddressQuantity'] == null ? null : (map['minimumEniIpv6AddressQuantity'] as int).input(),
      minimumEniPrivateIpAddressQuantity: map['minimumEniPrivateIpAddressQuantity'] == null ? null : (map['minimumEniPrivateIpAddressQuantity'] as int).input(),
      minimumEniQuantity: map['minimumEniQuantity'] == null ? null : (map['minimumEniQuantity'] as int).input(),
      minimumGpuAmount: map['minimumGpuAmount'] == null ? null : (map['minimumGpuAmount'] as int).input(),
      minimumInitialCredit: map['minimumInitialCredit'] == null ? null : (map['minimumInitialCredit'] as int).input(),
      minimumMemorySize: map['minimumMemorySize'] == null ? null : (map['minimumMemorySize'] as double).input(),
      physicalProcessorModels: map['physicalProcessorModels'] == null ? null : ((map['physicalProcessorModels'] as List).cast<String>()).input(),
    );
  }
}

