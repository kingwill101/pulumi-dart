// ignore_for_file: unused_element, unnecessary_cast

import 'flexible_app_version_automatic_scaling_cpu_utilization.dart';
import 'flexible_app_version_automatic_scaling_disk_utilization.dart';
import 'flexible_app_version_automatic_scaling_network_utilization.dart';
import 'flexible_app_version_automatic_scaling_request_utilization.dart';

class FlexibleAppVersionAutomaticScaling {
  /// The time period that the Autoscaler should wait before it starts collecting information from a new instance.
  /// This prevents the autoscaler from collecting information when the instance is initializing,
  /// during which the collected usage would not be reliable. Default: 120s
  final String? coolDownPeriod;

  /// Target scaling by CPU usage.
  /// Structure is documented below.
  final FlexibleAppVersionAutomaticScalingCpuUtilization cpuUtilization;

  /// Target scaling by disk usage.
  /// Structure is documented below.
  final FlexibleAppVersionAutomaticScalingDiskUtilization? diskUtilization;

  /// Number of concurrent requests an automatic scaling instance can accept before the scheduler spawns a new instance.
  /// Defaults to a runtime-specific value.
  final int? maxConcurrentRequests;

  /// Maximum number of idle instances that should be maintained for this version.
  final int? maxIdleInstances;

  /// Maximum amount of time that a request should wait in the pending queue before starting a new instance to handle it.
  final String? maxPendingLatency;

  /// Maximum number of instances that should be started to handle requests for this version. Default: 20
  final int? maxTotalInstances;

  /// Minimum number of idle instances that should be maintained for this version. Only applicable for the default version of a service.
  final int? minIdleInstances;

  /// Minimum amount of time a request should wait in the pending queue before starting a new instance to handle it.
  final String? minPendingLatency;

  /// Minimum number of running instances that should be maintained for this version. Default: 2
  final int? minTotalInstances;

  /// Target scaling by network usage.
  /// Structure is documented below.
  final FlexibleAppVersionAutomaticScalingNetworkUtilization?
      networkUtilization;

  /// Target scaling by request utilization.
  /// Structure is documented below.
  final FlexibleAppVersionAutomaticScalingRequestUtilization?
      requestUtilization;

  /// Creates a new [FlexibleAppVersionAutomaticScaling].
  /// [coolDownPeriod] The time period that the Autoscaler should wait before it starts collecting information from a new instance.
  /// [cpuUtilization] Target scaling by CPU usage.
  /// [diskUtilization] Target scaling by disk usage.
  /// [maxConcurrentRequests] Number of concurrent requests an automatic scaling instance can accept before the scheduler spawns a new instance.
  /// [maxIdleInstances] Maximum number of idle instances that should be maintained for this version.
  /// [maxPendingLatency] Maximum amount of time that a request should wait in the pending queue before starting a new instance to handle it.
  /// [maxTotalInstances] Maximum number of instances that should be started to handle requests for this version. Default: 20
  /// [minIdleInstances] Minimum number of idle instances that should be maintained for this version. Only applicable for the default version of a service.
  /// [minPendingLatency] Minimum amount of time a request should wait in the pending queue before starting a new instance to handle it.
  /// [minTotalInstances] Minimum number of running instances that should be maintained for this version. Default: 2
  /// [networkUtilization] Target scaling by network usage.
  /// [requestUtilization] Target scaling by request utilization.
  FlexibleAppVersionAutomaticScaling({
    this.coolDownPeriod,
    required this.cpuUtilization,
    this.diskUtilization,
    this.maxConcurrentRequests,
    this.maxIdleInstances,
    this.maxPendingLatency,
    this.maxTotalInstances,
    this.minIdleInstances,
    this.minPendingLatency,
    this.minTotalInstances,
    this.networkUtilization,
    this.requestUtilization,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final coolDownPeriodValue = coolDownPeriod;
    if (coolDownPeriodValue != null) {
      map['coolDownPeriod'] = coolDownPeriodValue;
    }
    map['cpuUtilization'] = cpuUtilization.toMap();
    final diskUtilizationValue = diskUtilization;
    if (diskUtilizationValue != null) {
      map['diskUtilization'] = diskUtilizationValue.toMap();
    }
    final maxConcurrentRequestsValue = maxConcurrentRequests;
    if (maxConcurrentRequestsValue != null) {
      map['maxConcurrentRequests'] = maxConcurrentRequestsValue;
    }
    final maxIdleInstancesValue = maxIdleInstances;
    if (maxIdleInstancesValue != null) {
      map['maxIdleInstances'] = maxIdleInstancesValue;
    }
    final maxPendingLatencyValue = maxPendingLatency;
    if (maxPendingLatencyValue != null) {
      map['maxPendingLatency'] = maxPendingLatencyValue;
    }
    final maxTotalInstancesValue = maxTotalInstances;
    if (maxTotalInstancesValue != null) {
      map['maxTotalInstances'] = maxTotalInstancesValue;
    }
    final minIdleInstancesValue = minIdleInstances;
    if (minIdleInstancesValue != null) {
      map['minIdleInstances'] = minIdleInstancesValue;
    }
    final minPendingLatencyValue = minPendingLatency;
    if (minPendingLatencyValue != null) {
      map['minPendingLatency'] = minPendingLatencyValue;
    }
    final minTotalInstancesValue = minTotalInstances;
    if (minTotalInstancesValue != null) {
      map['minTotalInstances'] = minTotalInstancesValue;
    }
    final networkUtilizationValue = networkUtilization;
    if (networkUtilizationValue != null) {
      map['networkUtilization'] = networkUtilizationValue.toMap();
    }
    final requestUtilizationValue = requestUtilization;
    if (requestUtilizationValue != null) {
      map['requestUtilization'] = requestUtilizationValue.toMap();
    }
    return map;
  }

  factory FlexibleAppVersionAutomaticScaling.fromMap(Map<String, dynamic> map) {
    return FlexibleAppVersionAutomaticScaling(
      coolDownPeriod: map['coolDownPeriod'] == null
          ? null
          : map['coolDownPeriod'] as String,
      cpuUtilization: FlexibleAppVersionAutomaticScalingCpuUtilization.fromMap(
          (map['cpuUtilization'] as Map).cast<String, dynamic>()),
      diskUtilization: map['diskUtilization'] == null
          ? null
          : FlexibleAppVersionAutomaticScalingDiskUtilization.fromMap(
              (map['diskUtilization'] as Map).cast<String, dynamic>()),
      maxConcurrentRequests: map['maxConcurrentRequests'] == null
          ? null
          : map['maxConcurrentRequests'] as int,
      maxIdleInstances: map['maxIdleInstances'] == null
          ? null
          : map['maxIdleInstances'] as int,
      maxPendingLatency: map['maxPendingLatency'] == null
          ? null
          : map['maxPendingLatency'] as String,
      maxTotalInstances: map['maxTotalInstances'] == null
          ? null
          : map['maxTotalInstances'] as int,
      minIdleInstances: map['minIdleInstances'] == null
          ? null
          : map['minIdleInstances'] as int,
      minPendingLatency: map['minPendingLatency'] == null
          ? null
          : map['minPendingLatency'] as String,
      minTotalInstances: map['minTotalInstances'] == null
          ? null
          : map['minTotalInstances'] as int,
      networkUtilization: map['networkUtilization'] == null
          ? null
          : FlexibleAppVersionAutomaticScalingNetworkUtilization.fromMap(
              (map['networkUtilization'] as Map).cast<String, dynamic>()),
      requestUtilization: map['requestUtilization'] == null
          ? null
          : FlexibleAppVersionAutomaticScalingRequestUtilization.fromMap(
              (map['requestUtilization'] as Map).cast<String, dynamic>()),
    );
  }
}
