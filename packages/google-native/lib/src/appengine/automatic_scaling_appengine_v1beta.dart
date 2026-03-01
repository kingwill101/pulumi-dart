// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cpu_utilization_appengine_v1beta.dart';
import 'custom_metric.dart';
import 'disk_utilization_appengine_v1beta.dart';
import 'network_utilization_appengine_v1beta.dart';
import 'request_utilization_appengine_v1beta.dart';
import 'standard_scheduler_settings_appengine_v1beta.dart';

/// Automatic scaling is based on request rate, response latencies, and other application metrics.
class AutomaticScalingAppengineV1beta {
  /// The time period that the Autoscaler (https://cloud.google.com/compute/docs/autoscaler/) should wait before it starts collecting information from a new instance. This prevents the autoscaler from collecting information when the instance is initializing, during which the collected usage would not be reliable. Only applicable in the App Engine flexible environment.
  final String? coolDownPeriod;

  /// Target scaling by CPU usage.
  final CpuUtilizationAppengineV1beta? cpuUtilization;

  /// Target scaling by user-provided metrics. Only applicable in the App Engine flexible environment.
  final List<CustomMetric>? customMetrics;

  /// Target scaling by disk usage.
  final DiskUtilizationAppengineV1beta? diskUtilization;

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
  final NetworkUtilizationAppengineV1beta? networkUtilization;

  /// Target scaling by request utilization.
  final RequestUtilizationAppengineV1beta? requestUtilization;

  /// Scheduler settings for standard environment.
  final StandardSchedulerSettingsAppengineV1beta? standardSchedulerSettings;

  /// Creates a new [AutomaticScalingAppengineV1beta].
  /// [coolDownPeriod] The time period that the Autoscaler (https://cloud.google.com/compute/docs/autoscaler/) should wait before it starts collecting information from a new instance. This prevents the autoscaler from collecting information when the instance is initializing, during which the collected usage would not be reliable. Only applicable in the App Engine flexible environment.
  /// [cpuUtilization] Target scaling by CPU usage.
  /// [customMetrics] Target scaling by user-provided metrics. Only applicable in the App Engine flexible environment.
  /// [diskUtilization] Target scaling by disk usage.
  /// [maxConcurrentRequests] Number of concurrent requests an automatic scaling instance can accept before the scheduler spawns a new instance.Defaults to a runtime-specific value.
  /// [maxIdleInstances] Maximum number of idle instances that should be maintained for this version.
  /// [maxPendingLatency] Maximum amount of time that a request should wait in the pending queue before starting a new instance to handle it.
  /// [maxTotalInstances] Maximum number of instances that should be started to handle requests for this version.
  /// [minIdleInstances] Minimum number of idle instances that should be maintained for this version. Only applicable for the default version of a service.
  /// [minPendingLatency] Minimum amount of time a request should wait in the pending queue before starting a new instance to handle it.
  /// [minTotalInstances] Minimum number of running instances that should be maintained for this version.
  /// [networkUtilization] Target scaling by network usage.
  /// [requestUtilization] Target scaling by request utilization.
  /// [standardSchedulerSettings] Scheduler settings for standard environment.
  AutomaticScalingAppengineV1beta({
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
    return <String, dynamic>{
      'coolDownPeriod': ?coolDownPeriod,
      'cpuUtilization': ?cpuUtilization == null
          ? null
          : cpuUtilization!.toMap(),
      'customMetrics': ?customMetrics == null
          ? null
          : pulumi.Input.encodeList<CustomMetric, Map<String, dynamic>>(
              customMetrics!,
              (value) => value.toMap(),
            ),
      'diskUtilization': ?diskUtilization == null
          ? null
          : diskUtilization!.toMap(),
      'maxConcurrentRequests': ?maxConcurrentRequests,
      'maxIdleInstances': ?maxIdleInstances,
      'maxPendingLatency': ?maxPendingLatency,
      'maxTotalInstances': ?maxTotalInstances,
      'minIdleInstances': ?minIdleInstances,
      'minPendingLatency': ?minPendingLatency,
      'minTotalInstances': ?minTotalInstances,
      'networkUtilization': ?networkUtilization == null
          ? null
          : networkUtilization!.toMap(),
      'requestUtilization': ?requestUtilization == null
          ? null
          : requestUtilization!.toMap(),
      'standardSchedulerSettings': ?standardSchedulerSettings == null
          ? null
          : standardSchedulerSettings!.toMap(),
    };
  }

  factory AutomaticScalingAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return AutomaticScalingAppengineV1beta(
      coolDownPeriod: map['coolDownPeriod'] == null
          ? null
          : map['coolDownPeriod'] as String,
      cpuUtilization: map['cpuUtilization'] == null
          ? null
          : CpuUtilizationAppengineV1beta.fromMap(
              (map['cpuUtilization'] as Map).cast<String, dynamic>(),
            ),
      customMetrics: map['customMetrics'] == null
          ? null
          : pulumi.Input.decodeList<CustomMetric>(
              map['customMetrics'],
              (value) =>
                  CustomMetric.fromMap((value as Map).cast<String, dynamic>()),
            ),
      diskUtilization: map['diskUtilization'] == null
          ? null
          : DiskUtilizationAppengineV1beta.fromMap(
              (map['diskUtilization'] as Map).cast<String, dynamic>(),
            ),
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
          : NetworkUtilizationAppengineV1beta.fromMap(
              (map['networkUtilization'] as Map).cast<String, dynamic>(),
            ),
      requestUtilization: map['requestUtilization'] == null
          ? null
          : RequestUtilizationAppengineV1beta.fromMap(
              (map['requestUtilization'] as Map).cast<String, dynamic>(),
            ),
      standardSchedulerSettings: map['standardSchedulerSettings'] == null
          ? null
          : StandardSchedulerSettingsAppengineV1beta.fromMap(
              (map['standardSchedulerSettings'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
