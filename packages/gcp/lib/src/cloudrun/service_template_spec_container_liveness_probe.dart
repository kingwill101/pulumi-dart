// ignore_for_file: unused_element, unnecessary_cast

import 'service_template_spec_container_liveness_probe_grpc.dart';
import 'service_template_spec_container_liveness_probe_http_get.dart';

class ServiceTemplateSpecContainerLivenessProbe {
  /// Minimum consecutive failures for the probe to be considered failed after
  /// having succeeded. Defaults to 3. Minimum value is 1.
  final int? failureThreshold;

  /// GRPC specifies an action involving a GRPC port.
  /// Structure is documented below.
  final ServiceTemplateSpecContainerLivenessProbeGrpc? grpc;

  /// HttpGet specifies the http request to perform.
  /// Structure is documented below.
  final ServiceTemplateSpecContainerLivenessProbeHttpGet? httpGet;

  /// Number of seconds after the container has started before the probe is
  /// initiated.
  /// Defaults to 0 seconds. Minimum value is 0. Maximum value is 3600.
  final int? initialDelaySeconds;

  /// How often (in seconds) to perform the probe.
  /// Default to 10 seconds. Minimum value is 1. Maximum value is 3600.
  final int? periodSeconds;

  /// Number of seconds after which the probe times out.
  /// Defaults to 1 second. Minimum value is 1. Maximum value is 3600.
  /// Must be smaller than period_seconds.
  final int? timeoutSeconds;

  /// Creates a new [ServiceTemplateSpecContainerLivenessProbe].
  /// [failureThreshold] Minimum consecutive failures for the probe to be considered failed after
  /// [grpc] GRPC specifies an action involving a GRPC port.
  /// [httpGet] HttpGet specifies the http request to perform.
  /// [initialDelaySeconds] Number of seconds after the container has started before the probe is
  /// [periodSeconds] How often (in seconds) to perform the probe.
  /// [timeoutSeconds] Number of seconds after which the probe times out.
  ServiceTemplateSpecContainerLivenessProbe({
    this.failureThreshold,
    this.grpc,
    this.httpGet,
    this.initialDelaySeconds,
    this.periodSeconds,
    this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureThreshold': ?failureThreshold,
      'grpc': ?grpc == null ? null : grpc!.toMap(),
      'httpGet': ?httpGet == null ? null : httpGet!.toMap(),
      'initialDelaySeconds': ?initialDelaySeconds,
      'periodSeconds': ?periodSeconds,
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory ServiceTemplateSpecContainerLivenessProbe.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceTemplateSpecContainerLivenessProbe(
      failureThreshold: map['failureThreshold'] == null
          ? null
          : map['failureThreshold'] as int,
      grpc: map['grpc'] == null
          ? null
          : ServiceTemplateSpecContainerLivenessProbeGrpc.fromMap(
              (map['grpc'] as Map).cast<String, dynamic>(),
            ),
      httpGet: map['httpGet'] == null
          ? null
          : ServiceTemplateSpecContainerLivenessProbeHttpGet.fromMap(
              (map['httpGet'] as Map).cast<String, dynamic>(),
            ),
      initialDelaySeconds: map['initialDelaySeconds'] == null
          ? null
          : map['initialDelaySeconds'] as int,
      periodSeconds: map['periodSeconds'] == null
          ? null
          : map['periodSeconds'] as int,
      timeoutSeconds: map['timeoutSeconds'] == null
          ? null
          : map['timeoutSeconds'] as int,
    );
  }
}
