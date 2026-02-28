// ignore_for_file: unused_element, unnecessary_cast

import 'service_template_spec_container_readiness_probe_grpc.dart';
import 'service_template_spec_container_readiness_probe_http_get.dart';

class ServiceTemplateSpecContainerReadinessProbe {
  /// Minimum consecutive failures for the probe to be considered failed after
  /// having succeeded. Defaults to 3.
  final int? failureThreshold;

  /// GRPC specifies an action involving a GRPC port.
  /// Structure is documented below.
  final ServiceTemplateSpecContainerReadinessProbeGrpc? grpc;

  /// HttpGet specifies the http request to perform.
  /// Structure is documented below.
  final ServiceTemplateSpecContainerReadinessProbeHttpGet? httpGet;

  /// How often (in seconds) to perform the probe.
  /// Default to 10 seconds.
  final int? periodSeconds;

  /// Minimum consecutive successes for the probe to be considered successful after having failed.
  /// Defaults to 2.
  final int? successThreshold;

  /// Number of seconds after which the probe times out.
  /// Defaults to 1 second. Must be smaller than period_seconds.
  final int? timeoutSeconds;

  /// Creates a new [ServiceTemplateSpecContainerReadinessProbe].
  /// [failureThreshold] Minimum consecutive failures for the probe to be considered failed after
  /// [grpc] GRPC specifies an action involving a GRPC port.
  /// [httpGet] HttpGet specifies the http request to perform.
  /// [periodSeconds] How often (in seconds) to perform the probe.
  /// [successThreshold] Minimum consecutive successes for the probe to be considered successful after having failed.
  /// [timeoutSeconds] Number of seconds after which the probe times out.
  ServiceTemplateSpecContainerReadinessProbe({
    this.failureThreshold,
    this.grpc,
    this.httpGet,
    this.periodSeconds,
    this.successThreshold,
    this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final failureThresholdValue = failureThreshold;
    if (failureThresholdValue != null) {
      map['failureThreshold'] = failureThresholdValue;
    }
    final grpcValue = grpc;
    if (grpcValue != null) {
      map['grpc'] = grpcValue.toMap();
    }
    final httpGetValue = httpGet;
    if (httpGetValue != null) {
      map['httpGet'] = httpGetValue.toMap();
    }
    final periodSecondsValue = periodSeconds;
    if (periodSecondsValue != null) {
      map['periodSeconds'] = periodSecondsValue;
    }
    final successThresholdValue = successThreshold;
    if (successThresholdValue != null) {
      map['successThreshold'] = successThresholdValue;
    }
    final timeoutSecondsValue = timeoutSeconds;
    if (timeoutSecondsValue != null) {
      map['timeoutSeconds'] = timeoutSecondsValue;
    }
    return map;
  }

  factory ServiceTemplateSpecContainerReadinessProbe.fromMap(
      Map<String, dynamic> map) {
    return ServiceTemplateSpecContainerReadinessProbe(
      failureThreshold: map['failureThreshold'] == null
          ? null
          : map['failureThreshold'] as int,
      grpc: map['grpc'] == null
          ? null
          : ServiceTemplateSpecContainerReadinessProbeGrpc.fromMap(
              (map['grpc'] as Map).cast<String, dynamic>()),
      httpGet: map['httpGet'] == null
          ? null
          : ServiceTemplateSpecContainerReadinessProbeHttpGet.fromMap(
              (map['httpGet'] as Map).cast<String, dynamic>()),
      periodSeconds:
          map['periodSeconds'] == null ? null : map['periodSeconds'] as int,
      successThreshold: map['successThreshold'] == null
          ? null
          : map['successThreshold'] as int,
      timeoutSeconds:
          map['timeoutSeconds'] == null ? null : map['timeoutSeconds'] as int,
    );
  }
}
