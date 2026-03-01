// ignore_for_file: unused_element, unnecessary_cast

import 'container_app_probe_response_http_get.dart';
import 'container_app_probe_response_tcp_socket.dart';

/// Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.
class ContainerAppProbeResponse {
  /// Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1. Maximum value is 10.
  final int? failureThreshold;
  /// HTTPGet specifies the http request to perform.
  final ContainerAppProbeResponseHttpGet? httpGet;
  /// Number of seconds after the container has started before liveness probes are initiated. Minimum value is 1. Maximum value is 60.
  final int? initialDelaySeconds;
  /// How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value is 240.
  final int? periodSeconds;
  /// Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1. Maximum value is 10.
  final int? successThreshold;
  /// TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported.
  final ContainerAppProbeResponseTcpSocket? tcpSocket;
  /// Optional duration in seconds the pod needs to terminate gracefully upon probe failure. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. If this value is nil, the pod's terminationGracePeriodSeconds will be used. Otherwise, this value overrides the value provided by the pod spec. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). This is an alpha field and requires enabling ProbeTerminationGracePeriod feature gate. Maximum value is 3600 seconds (1 hour)
  final double? terminationGracePeriodSeconds;
  /// Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 240.
  final int? timeoutSeconds;
  /// The type of probe.
  final String? type;

  /// Creates a new [ContainerAppProbeResponse].
  /// [failureThreshold] Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1. Maximum value is 10.
  /// [httpGet] HTTPGet specifies the http request to perform.
  /// [initialDelaySeconds] Number of seconds after the container has started before liveness probes are initiated. Minimum value is 1. Maximum value is 60.
  /// [periodSeconds] How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value is 240.
  /// [successThreshold] Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1. Maximum value is 10.
  /// [tcpSocket] TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported.
  /// [terminationGracePeriodSeconds] Optional duration in seconds the pod needs to terminate gracefully upon probe failure. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. If this value is nil, the pod's terminationGracePeriodSeconds will be used. Otherwise, this value overrides the value provided by the pod spec. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). This is an alpha field and requires enabling ProbeTerminationGracePeriod feature gate. Maximum value is 3600 seconds (1 hour)
  /// [timeoutSeconds] Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 240.
  /// [type] The type of probe.
  ContainerAppProbeResponse({
    this.failureThreshold,
    this.httpGet,
    this.initialDelaySeconds,
    this.periodSeconds,
    this.successThreshold,
    this.tcpSocket,
    this.terminationGracePeriodSeconds,
    this.timeoutSeconds,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureThreshold': ?failureThreshold,
      'httpGet': ?httpGet == null ? null : httpGet!.toMap(),
      'initialDelaySeconds': ?initialDelaySeconds,
      'periodSeconds': ?periodSeconds,
      'successThreshold': ?successThreshold,
      'tcpSocket': ?tcpSocket == null ? null : tcpSocket!.toMap(),
      'terminationGracePeriodSeconds': ?terminationGracePeriodSeconds,
      'timeoutSeconds': ?timeoutSeconds,
      'type': ?type,
    };
  }

  factory ContainerAppProbeResponse.fromMap(Map<String, dynamic> map) {
    return ContainerAppProbeResponse(
      failureThreshold: map['failureThreshold'] == null ? null : map['failureThreshold'] as int,
      httpGet: map['httpGet'] == null ? null : ContainerAppProbeResponseHttpGet.fromMap((map['httpGet'] as Map).cast<String, dynamic>()),
      initialDelaySeconds: map['initialDelaySeconds'] == null ? null : map['initialDelaySeconds'] as int,
      periodSeconds: map['periodSeconds'] == null ? null : map['periodSeconds'] as int,
      successThreshold: map['successThreshold'] == null ? null : map['successThreshold'] as int,
      tcpSocket: map['tcpSocket'] == null ? null : ContainerAppProbeResponseTcpSocket.fromMap((map['tcpSocket'] as Map).cast<String, dynamic>()),
      terminationGracePeriodSeconds: map['terminationGracePeriodSeconds'] == null ? null : map['terminationGracePeriodSeconds'] as double,
      timeoutSeconds: map['timeoutSeconds'] == null ? null : map['timeoutSeconds'] as int,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

