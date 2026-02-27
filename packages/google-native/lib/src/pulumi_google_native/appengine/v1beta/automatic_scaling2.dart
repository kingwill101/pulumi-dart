// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'cpu_utilization2.dart';
import 'custom_metric.dart';
import 'disk_utilization2.dart';
import 'network_utilization2.dart';
import 'request_utilization2.dart';
import 'standard_scheduler_settings2.dart';

/// Automatic scaling is based on request rate, response latencies, and other application metrics.
class AutomaticScaling2 {
  /// The time period that the Autoscaler (https://cloud.google.com/compute/docs/autoscaler/) should wait before it starts collecting information from a new instance. This prevents the autoscaler from collecting information when the instance is initializing, during which the collected usage would not be reliable. Only applicable in the App Engine flexible environment.
  final String? coolDownPeriod;

  /// Target scaling by CPU usage.
  final CpuUtilization2? cpuUtilization;

  /// Target scaling by user-provided metrics. Only applicable in the App Engine flexible environment.
  final List<CustomMetric>? customMetrics;

  /// Target scaling by disk usage.
  final DiskUtilization2? diskUtilization;

  /// Number of concurrent requests an automatic scaling instance can accept before the scheduler spawns a new instance.Defaults to a runtime-specific value.
  final int? maxConcurrentRequests;

  /// Maximum number of idle instances that should be maintained for this version.
  final int? maxIdleInstances;

  /// Maximum amount of time that a request should wait in the pending queue before starting a new instance to handle it.
  final String? maxPendingLatency;

  /// Maximum number of instances that should be started to handle requests for this version.
  final int? maxTotalInstances;

  /// Minimum number of idle instances that should be maintained for this version. Only applicable for the default version of a service.
  final int? minIdleInstances;

  /// Minimum amount of time a request should wait in the pending queue before starting a new instance to handle it.
  final String? minPendingLatency;

  /// Minimum number of running instances that should be maintained for this version.
  final int? minTotalInstances;

  /// Target scaling by network usage.
  final NetworkUtilization2? networkUtilization;

  /// Target scaling by request utilization.
  final RequestUtilization2? requestUtilization;

  /// Scheduler settings for standard environment.
  final StandardSchedulerSettings2? standardSchedulerSettings;

  AutomaticScaling2({
    this.coolDownPeriod,
    this.cpuUtilization,
    this.customMetrics,
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
    this.standardSchedulerSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final coolDownPeriodValue = coolDownPeriod;
    if (coolDownPeriodValue != null) {
      map['coolDownPeriod'] = coolDownPeriodValue;
    }
    final cpuUtilizationValue = cpuUtilization;
    if (cpuUtilizationValue != null) {
      map['cpuUtilization'] = cpuUtilizationValue.toMap();
    }
    final customMetricsValue = customMetrics;
    if (customMetricsValue != null) {
      map['customMetrics'] =
          Input.encodeList<CustomMetric, Map<String, dynamic>>(
              customMetricsValue, (value) => value.toMap());
    }
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
    final standardSchedulerSettingsValue = standardSchedulerSettings;
    if (standardSchedulerSettingsValue != null) {
      map['standardSchedulerSettings'] = standardSchedulerSettingsValue.toMap();
    }
    return map;
  }

  factory AutomaticScaling2.fromMap(Map<String, dynamic> map) {
    return AutomaticScaling2(
      coolDownPeriod: map['coolDownPeriod'] == null
          ? null
          : map['coolDownPeriod'] as String,
      cpuUtilization: map['cpuUtilization'] == null
          ? null
          : CpuUtilization2.fromMap(
              (map['cpuUtilization'] as Map).cast<String, dynamic>()),
      customMetrics: map['customMetrics'] == null
          ? null
          : Input.decodeList<CustomMetric>(
              map['customMetrics'],
              (value) =>
                  CustomMetric.fromMap((value as Map).cast<String, dynamic>())),
      diskUtilization: map['diskUtilization'] == null
          ? null
          : DiskUtilization2.fromMap(
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
          : NetworkUtilization2.fromMap(
              (map['networkUtilization'] as Map).cast<String, dynamic>()),
      requestUtilization: map['requestUtilization'] == null
          ? null
          : RequestUtilization2.fromMap(
              (map['requestUtilization'] as Map).cast<String, dynamic>()),
      standardSchedulerSettings: map['standardSchedulerSettings'] == null
          ? null
          : StandardSchedulerSettings2.fromMap(
              (map['standardSchedulerSettings'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
