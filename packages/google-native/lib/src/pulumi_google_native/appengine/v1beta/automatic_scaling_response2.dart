// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'cpu_utilization_response2.dart';
import 'custom_metric_response.dart';
import 'disk_utilization_response2.dart';
import 'network_utilization_response2.dart';
import 'request_utilization_response2.dart';
import 'standard_scheduler_settings_response2.dart';

/// Automatic scaling is based on request rate, response latencies, and other application metrics.
class AutomaticScalingResponse2 {
  /// The time period that the Autoscaler (https://cloud.google.com/compute/docs/autoscaler/) should wait before it starts collecting information from a new instance. This prevents the autoscaler from collecting information when the instance is initializing, during which the collected usage would not be reliable. Only applicable in the App Engine flexible environment.
  final String coolDownPeriod;

  /// Target scaling by CPU usage.
  final CpuUtilizationResponse2 cpuUtilization;

  /// Target scaling by user-provided metrics. Only applicable in the App Engine flexible environment.
  final List<CustomMetricResponse> customMetrics;

  /// Target scaling by disk usage.
  final DiskUtilizationResponse2 diskUtilization;

  /// Number of concurrent requests an automatic scaling instance can accept before the scheduler spawns a new instance.Defaults to a runtime-specific value.
  final int maxConcurrentRequests;

  /// Maximum number of idle instances that should be maintained for this version.
  final int maxIdleInstances;

  /// Maximum amount of time that a request should wait in the pending queue before starting a new instance to handle it.
  final String maxPendingLatency;

  /// Maximum number of instances that should be started to handle requests for this version.
  final int maxTotalInstances;

  /// Minimum number of idle instances that should be maintained for this version. Only applicable for the default version of a service.
  final int minIdleInstances;

  /// Minimum amount of time a request should wait in the pending queue before starting a new instance to handle it.
  final String minPendingLatency;

  /// Minimum number of running instances that should be maintained for this version.
  final int minTotalInstances;

  /// Target scaling by network usage.
  final NetworkUtilizationResponse2 networkUtilization;

  /// Target scaling by request utilization.
  final RequestUtilizationResponse2 requestUtilization;

  /// Scheduler settings for standard environment.
  final StandardSchedulerSettingsResponse2 standardSchedulerSettings;

  AutomaticScalingResponse2({
    required this.coolDownPeriod,
    required this.cpuUtilization,
    required this.customMetrics,
    required this.diskUtilization,
    required this.maxConcurrentRequests,
    required this.maxIdleInstances,
    required this.maxPendingLatency,
    required this.maxTotalInstances,
    required this.minIdleInstances,
    required this.minPendingLatency,
    required this.minTotalInstances,
    required this.networkUtilization,
    required this.requestUtilization,
    required this.standardSchedulerSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['coolDownPeriod'] = coolDownPeriod;
    map['cpuUtilization'] = cpuUtilization.toMap();
    map['customMetrics'] =
        Input.encodeList<CustomMetricResponse, Map<String, dynamic>>(
            customMetrics, (value) => value.toMap());
    map['diskUtilization'] = diskUtilization.toMap();
    map['maxConcurrentRequests'] = maxConcurrentRequests;
    map['maxIdleInstances'] = maxIdleInstances;
    map['maxPendingLatency'] = maxPendingLatency;
    map['maxTotalInstances'] = maxTotalInstances;
    map['minIdleInstances'] = minIdleInstances;
    map['minPendingLatency'] = minPendingLatency;
    map['minTotalInstances'] = minTotalInstances;
    map['networkUtilization'] = networkUtilization.toMap();
    map['requestUtilization'] = requestUtilization.toMap();
    map['standardSchedulerSettings'] = standardSchedulerSettings.toMap();
    return map;
  }

  factory AutomaticScalingResponse2.fromMap(Map<String, dynamic> map) {
    return AutomaticScalingResponse2(
      coolDownPeriod: map['coolDownPeriod'] as String,
      cpuUtilization: CpuUtilizationResponse2.fromMap(
          (map['cpuUtilization'] as Map).cast<String, dynamic>()),
      customMetrics: Input.decodeList<CustomMetricResponse>(
          map['customMetrics'],
          (value) => CustomMetricResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      diskUtilization: DiskUtilizationResponse2.fromMap(
          (map['diskUtilization'] as Map).cast<String, dynamic>()),
      maxConcurrentRequests: map['maxConcurrentRequests'] as int,
      maxIdleInstances: map['maxIdleInstances'] as int,
      maxPendingLatency: map['maxPendingLatency'] as String,
      maxTotalInstances: map['maxTotalInstances'] as int,
      minIdleInstances: map['minIdleInstances'] as int,
      minPendingLatency: map['minPendingLatency'] as String,
      minTotalInstances: map['minTotalInstances'] as int,
      networkUtilization: NetworkUtilizationResponse2.fromMap(
          (map['networkUtilization'] as Map).cast<String, dynamic>()),
      requestUtilization: RequestUtilizationResponse2.fromMap(
          (map['requestUtilization'] as Map).cast<String, dynamic>()),
      standardSchedulerSettings: StandardSchedulerSettingsResponse2.fromMap(
          (map['standardSchedulerSettings'] as Map).cast<String, dynamic>()),
    );
  }
}
