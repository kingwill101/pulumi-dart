// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetScalingConfigurationsConfigurationInstancePatternInfo {
  /// Architecture N of instance type N. Valid values: X86, Heterogeneous, BareMetal, Arm, SuperComputeCluster.
  final pulumi.Input<List<String>> architectures;
  /// Specifies whether to include burstable instance types.  Valid values: Exclude, Include, Required.
  final pulumi.Input<String> burstablePerformance;
  /// The number of vCPUs that are specified for an instance type in instancePatternInfo.
  final pulumi.Input<int> cores;
  /// Instance type N that you want to exclude. You can use wildcard characters, such as an asterisk (*), to exclude an instance type or an instance family.
  final pulumi.Input<List<String>> excludedInstanceTypes;
  /// The instance family level in instancePatternInfo.
  final pulumi.Input<String> instanceFamilyLevel;
  /// The maximum hourly price for a pay-as-you-go instance or a preemptible instance in instancePatternInfo.
  final pulumi.Input<double> maxPrice;
  /// The memory size that is specified for an instance type in instancePatternInfo.
  final pulumi.Input<double> memory;

  /// Creates a new [GetScalingConfigurationsConfigurationInstancePatternInfo].
  /// [architectures] Architecture N of instance type N. Valid values: X86, Heterogeneous, BareMetal, Arm, SuperComputeCluster.
  /// [burstablePerformance] Specifies whether to include burstable instance types.  Valid values: Exclude, Include, Required.
  /// [cores] The number of vCPUs that are specified for an instance type in instancePatternInfo.
  /// [excludedInstanceTypes] Instance type N that you want to exclude. You can use wildcard characters, such as an asterisk (*), to exclude an instance type or an instance family.
  /// [instanceFamilyLevel] The instance family level in instancePatternInfo.
  /// [maxPrice] The maximum hourly price for a pay-as-you-go instance or a preemptible instance in instancePatternInfo.
  /// [memory] The memory size that is specified for an instance type in instancePatternInfo.
  const GetScalingConfigurationsConfigurationInstancePatternInfo({
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
      architectures: pulumi.Input.fromValue((map['architectures'] as List).cast<String>()),
      burstablePerformance: pulumi.Input.fromValue(map['burstablePerformance'] as String),
      cores: pulumi.Input.fromValue(map['cores'] as int),
      excludedInstanceTypes: pulumi.Input.fromValue((map['excludedInstanceTypes'] as List).cast<String>()),
      instanceFamilyLevel: pulumi.Input.fromValue(map['instanceFamilyLevel'] as String),
      maxPrice: pulumi.Input.fromValue(map['maxPrice'] as double),
      memory: pulumi.Input.fromValue(map['memory'] as double),
    );
  }
}

