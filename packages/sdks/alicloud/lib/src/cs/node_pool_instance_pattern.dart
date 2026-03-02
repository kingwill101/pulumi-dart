// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolInstancePattern {
  /// The number of vCPU cores of the instance type. Example value: 8.
  final pulumi.Input<int>? cores;
  /// The CPU architecture of the instance. Value range:
  /// - X86
  /// - ARM
  final pulumi.Input<List<String>>? cpuArchitectures;
  /// Instance specifications to be excluded. You can exclude individual specifications or entire specification families by using the wildcard character (*). For example:
  /// - ecs.c6.large: indicates that the ecs.c6.large instance type is excluded.
  /// - ecs.c6. *: indicates that the instance specification of the entire c6 specification family is excluded.
  final pulumi.Input<List<String>>? excludedInstanceTypes;
  /// Instance classification. Value range:
  /// - General-purpose: Universal.
  /// - Compute-optimized: Compute type.
  /// - Memory-optimized: Memory type.
  /// - Big data: Big data type.
  /// - Local SSDs: Local SSD type.
  /// - High Clock Speed: High frequency type.
  /// - Enhanced: Enhanced.
  /// - Shared: Shared.
  /// - ECS Bare Metal: elastic Bare Metal server.
  /// - High Performance Compute: High Performance Compute.
  final pulumi.Input<List<String>>? instanceCategories;
  /// Instance specification family level, value range:
  /// - EntryLevel: entry-level, that is, shared instance specifications. The cost is lower, but the stability of instance computing performance cannot be guaranteed. Applicable to business scenarios with low CPU usage. For more information, see Shared.
  /// - EnterpriseLevel: Enterprise level. Stable performance and exclusive resources, suitable for business scenarios that require high stability. For more information, see Instance Specification Family.
  final pulumi.Input<String> instanceFamilyLevel;
  /// Specifies the instance type family. Example values:["ecs.g8i","ecs.c8i"]
  final pulumi.Input<List<String>>? instanceTypeFamilies;
  /// The maximum number of vCPU cores of the instance type. Example value: 8. MaxCpuCores cannot exceed 4 times of MinCpuCores.
  final pulumi.Input<int>? maxCpuCores;
  /// The maximum memory of the instance type. Unit: GiB, example value: 8,MaxMemoryCores does not support more than 4 times MinMemoryCores.
  final pulumi.Input<double>? maxMemorySize;
  /// The memory size of the instance type, in GiB. Example value: 8.
  final pulumi.Input<double>? memory;
  /// The minimum number of vCPU cores of the instance type. Example value: 4. MaxCpuCores cannot exceed 4 times of MinCpuCores.
  final pulumi.Input<int>? minCpuCores;
  /// The minimum memory of the instance type. Unit: GiB, example value: 4,MaxMemoryCores does not support more than 4 times MinMemoryCores.
  final pulumi.Input<double>? minMemorySize;

  /// Creates a new [NodePoolInstancePattern].
  /// [cores] The number of vCPU cores of the instance type. Example value: 8.
  /// [cpuArchitectures] The CPU architecture of the instance. Value range:
  /// [excludedInstanceTypes] Instance specifications to be excluded. You can exclude individual specifications or entire specification families by using the wildcard character (*). For example:
  /// [instanceCategories] Instance classification. Value range:
  /// [instanceFamilyLevel] Instance specification family level, value range:
  /// [instanceTypeFamilies] Specifies the instance type family. Example values:["ecs.g8i","ecs.c8i"]
  /// [maxCpuCores] The maximum number of vCPU cores of the instance type. Example value: 8. MaxCpuCores cannot exceed 4 times of MinCpuCores.
  /// [maxMemorySize] The maximum memory of the instance type. Unit: GiB, example value: 8,MaxMemoryCores does not support more than 4 times MinMemoryCores.
  /// [memory] The memory size of the instance type, in GiB. Example value: 8.
  /// [minCpuCores] The minimum number of vCPU cores of the instance type. Example value: 4. MaxCpuCores cannot exceed 4 times of MinCpuCores.
  /// [minMemorySize] The minimum memory of the instance type. Unit: GiB, example value: 4,MaxMemoryCores does not support more than 4 times MinMemoryCores.
  NodePoolInstancePattern({
    this.cores,
    this.cpuArchitectures,
    this.excludedInstanceTypes,
    this.instanceCategories,
    required this.instanceFamilyLevel,
    this.instanceTypeFamilies,
    this.maxCpuCores,
    this.maxMemorySize,
    this.memory,
    this.minCpuCores,
    this.minMemorySize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cores': ?cores,
      'cpuArchitectures': ?cpuArchitectures,
      'excludedInstanceTypes': ?excludedInstanceTypes,
      'instanceCategories': ?instanceCategories,
      'instanceFamilyLevel': instanceFamilyLevel,
      'instanceTypeFamilies': ?instanceTypeFamilies,
      'maxCpuCores': ?maxCpuCores,
      'maxMemorySize': ?maxMemorySize,
      'memory': ?memory,
      'minCpuCores': ?minCpuCores,
      'minMemorySize': ?minMemorySize,
    };
  }

  factory NodePoolInstancePattern.fromMap(Map<String, dynamic> map) {
    return NodePoolInstancePattern(
      cores: map['cores'] == null ? null : (map['cores'] as int).input(),
      cpuArchitectures: map['cpuArchitectures'] == null ? null : ((map['cpuArchitectures'] as List).cast<String>()).input(),
      excludedInstanceTypes: map['excludedInstanceTypes'] == null ? null : ((map['excludedInstanceTypes'] as List).cast<String>()).input(),
      instanceCategories: map['instanceCategories'] == null ? null : ((map['instanceCategories'] as List).cast<String>()).input(),
      instanceFamilyLevel: (map['instanceFamilyLevel'] as String).input(),
      instanceTypeFamilies: map['instanceTypeFamilies'] == null ? null : ((map['instanceTypeFamilies'] as List).cast<String>()).input(),
      maxCpuCores: map['maxCpuCores'] == null ? null : (map['maxCpuCores'] as int).input(),
      maxMemorySize: map['maxMemorySize'] == null ? null : (map['maxMemorySize'] as double).input(),
      memory: map['memory'] == null ? null : (map['memory'] as double).input(),
      minCpuCores: map['minCpuCores'] == null ? null : (map['minCpuCores'] as int).input(),
      minMemorySize: map['minMemorySize'] == null ? null : (map['minMemorySize'] as double).input(),
    );
  }
}

