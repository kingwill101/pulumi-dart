// ignore_for_file: unused_element, unnecessary_cast


class GetScalingConfigurationsConfigurationInstancePatternInfo {
  /// Architecture N of instance type N. Valid values: X86, Heterogeneous, BareMetal, Arm, SuperComputeCluster.
  final List<String> architectures;
  /// Specifies whether to include burstable instance types.  Valid values: Exclude, Include, Required.
  final String burstablePerformance;
  /// The number of vCPUs that are specified for an instance type in instancePatternInfo.
  final int cores;
  /// Instance type N that you want to exclude. You can use wildcard characters, such as an asterisk (*), to exclude an instance type or an instance family.
  final List<String> excludedInstanceTypes;
  /// The instance family level in instancePatternInfo.
  final String instanceFamilyLevel;
  /// The maximum hourly price for a pay-as-you-go instance or a preemptible instance in instancePatternInfo.
  final double maxPrice;
  /// The memory size that is specified for an instance type in instancePatternInfo.
  final double memory;

  /// Creates a new [GetScalingConfigurationsConfigurationInstancePatternInfo].
  /// [architectures] Architecture N of instance type N. Valid values: X86, Heterogeneous, BareMetal, Arm, SuperComputeCluster.
  /// [burstablePerformance] Specifies whether to include burstable instance types.  Valid values: Exclude, Include, Required.
  /// [cores] The number of vCPUs that are specified for an instance type in instancePatternInfo.
  /// [excludedInstanceTypes] Instance type N that you want to exclude. You can use wildcard characters, such as an asterisk (*), to exclude an instance type or an instance family.
  /// [instanceFamilyLevel] The instance family level in instancePatternInfo.
  /// [maxPrice] The maximum hourly price for a pay-as-you-go instance or a preemptible instance in instancePatternInfo.
  /// [memory] The memory size that is specified for an instance type in instancePatternInfo.
  GetScalingConfigurationsConfigurationInstancePatternInfo({
    required this.architectures,
    required this.burstablePerformance,
    required this.cores,
    required this.excludedInstanceTypes,
    required this.instanceFamilyLevel,
    required this.maxPrice,
    required this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architectures': architectures,
      'burstablePerformance': burstablePerformance,
      'cores': cores,
      'excludedInstanceTypes': excludedInstanceTypes,
      'instanceFamilyLevel': instanceFamilyLevel,
      'maxPrice': maxPrice,
      'memory': memory,
    };
  }

  factory GetScalingConfigurationsConfigurationInstancePatternInfo.fromMap(Map<String, dynamic> map) {
    return GetScalingConfigurationsConfigurationInstancePatternInfo(
      architectures: (map['architectures'] as List).cast<String>(),
      burstablePerformance: map['burstablePerformance'] as String,
      cores: map['cores'] as int,
      excludedInstanceTypes: (map['excludedInstanceTypes'] as List).cast<String>(),
      instanceFamilyLevel: map['instanceFamilyLevel'] as String,
      maxPrice: map['maxPrice'] as double,
      memory: map['memory'] as double,
    );
  }
}

