// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cpu_utilization_response_appengine_v1beta.dart';
import 'custom_metric_response.dart';
import 'disk_utilization_response_appengine_v1beta.dart';
import 'network_utilization_response_appengine_v1beta.dart';
import 'request_utilization_response_appengine_v1beta.dart';
import 'standard_scheduler_settings_response_appengine_v1beta.dart';

/// Automatic scaling is based on request rate, response latencies, and other application metrics.
class AutomaticScalingResponseAppengineV1beta {
  /// The time period that the Autoscaler (https://cloud.google.com/compute/docs/autoscaler/) should wait before it starts collecting information from a new instance. This prevents the autoscaler from collecting information when the instance is initializing, during which the collected usage would not be reliable. Only applicable in the App Engine flexible environment.
  final String coolDownPeriod;

  /// Target scaling by CPU usage.
  final CpuUtilizationResponseAppengineV1beta cpuUtilization;

  /// Target scaling by user-provided metrics. Only applicable in the App Engine flexible environment.
  final List<CustomMetricResponse> customMetrics;

  /// Target scaling by disk usage.
  final DiskUtilizationResponseAppengineV1beta diskUtilization;

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
  final NetworkUtilizationResponseAppengineV1beta networkUtilization;

  /// Target scaling by request utilization.
  final RequestUtilizationResponseAppengineV1beta requestUtilization;

  /// Scheduler settings for standard environment.
  final StandardSchedulerSettingsResponseAppengineV1beta
  standardSchedulerSettings;

  /// Creates a new [AutomaticScalingResponseAppengineV1beta].
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
  AutomaticScalingResponseAppengineV1beta({
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
    return <String, dynamic>{
      'coolDownPeriod': coolDownPeriod,
      'cpuUtilization': cpuUtilization.toMap(),
      'customMetrics':
          pulumi.Input.encodeList<CustomMetricResponse, Map<String, dynamic>>(
            customMetrics,
            (value) => value.toMap(),
          ),
      'diskUtilization': diskUtilization.toMap(),
      'maxConcurrentRequests': maxConcurrentRequests,
      'maxIdleInstances': maxIdleInstances,
      'maxPendingLatency': maxPendingLatency,
      'maxTotalInstances': maxTotalInstances,
      'minIdleInstances': minIdleInstances,
      'minPendingLatency': minPendingLatency,
      'minTotalInstances': minTotalInstances,
      'networkUtilization': networkUtilization.toMap(),
      'requestUtilization': requestUtilization.toMap(),
      'standardSchedulerSettings': standardSchedulerSettings.toMap(),
    };
  }

  factory AutomaticScalingResponseAppengineV1beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return AutomaticScalingResponseAppengineV1beta(
      coolDownPeriod: map['coolDownPeriod'] as String,
      cpuUtilization: CpuUtilizationResponseAppengineV1beta.fromMap(
        (map['cpuUtilization'] as Map).cast<String, dynamic>(),
      ),
      customMetrics: pulumi.Input.decodeList<CustomMetricResponse>(
        map['customMetrics'],
        (value) => CustomMetricResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      diskUtilization: DiskUtilizationResponseAppengineV1beta.fromMap(
        (map['diskUtilization'] as Map).cast<String, dynamic>(),
      ),
      maxConcurrentRequests: map['maxConcurrentRequests'] as int,
      maxIdleInstances: map['maxIdleInstances'] as int,
      maxPendingLatency: map['maxPendingLatency'] as String,
      maxTotalInstances: map['maxTotalInstances'] as int,
      minIdleInstances: map['minIdleInstances'] as int,
      minPendingLatency: map['minPendingLatency'] as String,
      minTotalInstances: map['minTotalInstances'] as int,
      networkUtilization: NetworkUtilizationResponseAppengineV1beta.fromMap(
        (map['networkUtilization'] as Map).cast<String, dynamic>(),
      ),
      requestUtilization: RequestUtilizationResponseAppengineV1beta.fromMap(
        (map['requestUtilization'] as Map).cast<String, dynamic>(),
      ),
      standardSchedulerSettings:
          StandardSchedulerSettingsResponseAppengineV1beta.fromMap(
            (map['standardSchedulerSettings'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
