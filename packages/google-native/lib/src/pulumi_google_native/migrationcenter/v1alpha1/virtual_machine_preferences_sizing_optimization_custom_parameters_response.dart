// ignore_for_file: unused_element, unnecessary_cast

/// Custom data to use for sizing optimizations.
class VirtualMachinePreferencesSizingOptimizationCustomParametersResponse {
  /// Optional. Type of statistical aggregation of a resource utilization data, on which to base the sizing metrics.
  final String aggregationMethod;

  /// Optional. Desired percentage of CPU usage. Must be in the interval [1, 100] (or 0 for default value).
  final int cpuUsagePercentage;

  /// Optional. Desired percentage of memory usage. Must be in the interval [1, 100] (or 0 for default value).
  final int memoryUsagePercentage;

  /// Optional. Desired increase factor of storage, relative to currently used storage. Must be in the interval [1.0, 2.0] (or 0 for default value).
  final double storageMultiplier;

  VirtualMachinePreferencesSizingOptimizationCustomParametersResponse({
    required this.aggregationMethod,
    required this.cpuUsagePercentage,
    required this.memoryUsagePercentage,
    required this.storageMultiplier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['aggregationMethod'] = aggregationMethod;
    map['cpuUsagePercentage'] = cpuUsagePercentage;
    map['memoryUsagePercentage'] = memoryUsagePercentage;
    map['storageMultiplier'] = storageMultiplier;
    return map;
  }

  factory VirtualMachinePreferencesSizingOptimizationCustomParametersResponse.fromMap(
      Map<String, dynamic> map) {
    return VirtualMachinePreferencesSizingOptimizationCustomParametersResponse(
      aggregationMethod: map['aggregationMethod'] as String,
      cpuUsagePercentage: map['cpuUsagePercentage'] as int,
      memoryUsagePercentage: map['memoryUsagePercentage'] as int,
      storageMultiplier: map['storageMultiplier'] as double,
    );
  }
}
