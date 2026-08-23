// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'session_probe_response_http_get.dart';
import 'session_probe_response_tcp_socket.dart';

/// Session probe configuration.
class SessionProbeResponse {
  /// Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1. Maximum value is 10.
  final pulumi.Input<int>? failureThreshold;
  /// HTTPGet specifies the http request to perform.
  final pulumi.Input<SessionProbeResponseHttpGet>? httpGet;
  /// Number of seconds after the container has started before liveness probes are initiated. Minimum value is 1. Maximum value is 60.
  final pulumi.Input<int>? initialDelaySeconds;
  /// How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value is 240.
  final pulumi.Input<int>? periodSeconds;
  /// Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1. Maximum value is 10.
  final pulumi.Input<int>? successThreshold;
  /// TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported.
  final pulumi.Input<SessionProbeResponseTcpSocket>? tcpSocket;
  /// Optional duration in seconds the pod needs to terminate gracefully upon probe failure. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. If this value is nil, the pod's terminationGracePeriodSeconds will be used. Otherwise, this value overrides the value provided by the pod spec. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). This is an alpha field and requires enabling ProbeTerminationGracePeriod feature gate. Maximum value is 3600 seconds (1 hour)
  final pulumi.Input<double>? terminationGracePeriodSeconds;
  /// Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 240.
  final pulumi.Input<int>? timeoutSeconds;
  /// Denotes the type of probe. Can be Liveness or Startup, Readiness probe is not supported in sessions. Type must be unique for each probe within the context of a list of probes (SessionProbes).
  final pulumi.Input<String>? type;

  /// Creates a new [SessionProbeResponse].
  /// [failureThreshold] Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1. Maximum value is 10.
  /// [httpGet] HTTPGet specifies the http request to perform.
  /// [initialDelaySeconds] Number of seconds after the container has started before liveness probes are initiated. Minimum value is 1. Maximum value is 60.
  /// [periodSeconds] How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value is 240.
  /// [successThreshold] Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1. Maximum value is 10.
  /// [tcpSocket] TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported.
  /// [terminationGracePeriodSeconds] Optional duration in seconds the pod needs to terminate gracefully upon probe failure. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. If this value is nil, the pod's terminationGracePeriodSeconds will be used. Otherwise, this value overrides the value provided by the pod spec. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). This is an alpha field and requires enabling ProbeTerminationGracePeriod feature gate. Maximum value is 3600 seconds (1 hour)
  /// [timeoutSeconds] Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 240.
  /// [type] Denotes the type of probe. Can be Liveness or Startup, Readiness probe is not supported in sessions. Type must be unique for each probe within the context of a list of probes (SessionProbes).
  const SessionProbeResponse({
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
      'httpGet': ?pulumi.Input.mapOptionalInputValue<SessionProbeResponseHttpGet, Map<String, dynamic>>(httpGet, (value) => value.toMap()),
      'initialDelaySeconds': ?initialDelaySeconds,
      'periodSeconds': ?periodSeconds,
      'successThreshold': ?successThreshold,
      'tcpSocket': ?pulumi.Input.mapOptionalInputValue<SessionProbeResponseTcpSocket, Map<String, dynamic>>(tcpSocket, (value) => value.toMap()),
      'terminationGracePeriodSeconds': ?terminationGracePeriodSeconds,
      'timeoutSeconds': ?timeoutSeconds,
      'type': ?type,
    };
  }

  factory SessionProbeResponse.fromMap(Map<String, dynamic> map) {
    return SessionProbeResponse(
      failureThreshold: (() { final guardedValue = map['failureThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      httpGet: (() { final guardedValue = map['httpGet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SessionProbeResponseHttpGet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      initialDelaySeconds: (() { final guardedValue = map['initialDelaySeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      periodSeconds: (() { final guardedValue = map['periodSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      successThreshold: (() { final guardedValue = map['successThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tcpSocket: (() { final guardedValue = map['tcpSocket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SessionProbeResponseTcpSocket.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      terminationGracePeriodSeconds: (() { final guardedValue = map['terminationGracePeriodSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      timeoutSeconds: (() { final guardedValue = map['timeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
