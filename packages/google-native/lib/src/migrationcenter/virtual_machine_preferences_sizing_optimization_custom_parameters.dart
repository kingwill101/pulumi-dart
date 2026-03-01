// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_machine_preferences_sizing_optimization_custom_parameters_aggregation_method.dart';

/// Custom data to use for sizing optimizations.
class VirtualMachinePreferencesSizingOptimizationCustomParameters {
  /// Optional. Type of statistical aggregation of a resource utilization data, on which to base the sizing metrics.
  final VirtualMachinePreferencesSizingOptimizationCustomParametersAggregationMethod?
  aggregationMethod;

  /// Optional. Desired percentage of CPU usage. Must be in the interval [1, 100] (or 0 for default value).
  final int? cpuUsagePercentage;

  /// Optional. Desired percentage of memory usage. Must be in the interval [1, 100] (or 0 for default value).
  final int? memoryUsagePercentage;

  /// Optional. Desired increase factor of storage, relative to currently used storage. Must be in the interval [1.0, 2.0] (or 0 for default value).
  final double? storageMultiplier;

  /// Creates a new [VirtualMachinePreferencesSizingOptimizationCustomParameters].
  /// [aggregationMethod] Optional. Type of statistical aggregation of a resource utilization data, on which to base the sizing metrics.
  /// [cpuUsagePercentage] Optional. Desired percentage of CPU usage. Must be in the interval [1, 100] (or 0 for default value).
  /// [memoryUsagePercentage] Optional. Desired percentage of memory usage. Must be in the interval [1, 100] (or 0 for default value).
  /// [storageMultiplier] Optional. Desired increase factor of storage, relative to currently used storage. Must be in the interval [1.0, 2.0] (or 0 for default value).
  VirtualMachinePreferencesSizingOptimizationCustomParameters({
    this.aggregationMethod,
    this.cpuUsagePercentage,
    this.memoryUsagePercentage,
    this.storageMultiplier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationMethod': ?aggregationMethod == null
          ? null
          : aggregationMethod!.value,
      'cpuUsagePercentage': ?cpuUsagePercentage,
      'memoryUsagePercentage': ?memoryUsagePercentage,
      'storageMultiplier': ?storageMultiplier,
    };
  }

  factory VirtualMachinePreferencesSizingOptimizationCustomParameters.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualMachinePreferencesSizingOptimizationCustomParameters(
      aggregationMethod: map['aggregationMethod'] == null
          ? null
          : VirtualMachinePreferencesSizingOptimizationCustomParametersAggregationMethod.fromValue(
              map['aggregationMethod'] as String,
            ),
      cpuUsagePercentage: map['cpuUsagePercentage'] == null
          ? null
          : map['cpuUsagePercentage'] as int,
      memoryUsagePercentage: map['memoryUsagePercentage'] == null
          ? null
          : map['memoryUsagePercentage'] as int,
      storageMultiplier: map['storageMultiplier'] == null
          ? null
          : map['storageMultiplier'] as double,
    );
  }
}
