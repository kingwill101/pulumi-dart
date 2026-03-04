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

  factory ScalingConfigurationInstancePatternInfo.fromMap(
    Map<String, dynamic> map,
  ) {
    return ScalingConfigurationInstancePatternInfo(
      architectures: (() {
        final guardedValue = map['architectures'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      burstablePerformance: (() {
        final guardedValue = map['burstablePerformance'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cores: (() {
        final guardedValue = map['cores'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      cpuArchitectures: (() {
        final guardedValue = map['cpuArchitectures'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      excludedInstanceTypes: (() {
        final guardedValue = map['excludedInstanceTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      gpuSpecs: (() {
        final guardedValue = map['gpuSpecs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      instanceCategories: (() {
        final guardedValue = map['instanceCategories'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      instanceFamilyLevel: (() {
        final guardedValue = map['instanceFamilyLevel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceTypeFamilies: (() {
        final guardedValue = map['instanceTypeFamilies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      maxPrice: (() {
        final guardedValue = map['maxPrice'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      maximumCpuCoreCount: (() {
        final guardedValue = map['maximumCpuCoreCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      maximumGpuAmount: (() {
        final guardedValue = map['maximumGpuAmount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      maximumMemorySize: (() {
        final guardedValue = map['maximumMemorySize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      memory: (() {
        final guardedValue = map['memory'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      minimumBaselineCredit: (() {
        final guardedValue = map['minimumBaselineCredit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minimumCpuCoreCount: (() {
        final guardedValue = map['minimumCpuCoreCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minimumEniIpv6AddressQuantity: (() {
        final guardedValue = map['minimumEniIpv6AddressQuantity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minimumEniPrivateIpAddressQuantity: (() {
        final guardedValue = map['minimumEniPrivateIpAddressQuantity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minimumEniQuantity: (() {
        final guardedValue = map['minimumEniQuantity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minimumGpuAmount: (() {
        final guardedValue = map['minimumGpuAmount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minimumInitialCredit: (() {
        final guardedValue = map['minimumInitialCredit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minimumMemorySize: (() {
        final guardedValue = map['minimumMemorySize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      physicalProcessorModels: (() {
        final guardedValue = map['physicalProcessorModels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
