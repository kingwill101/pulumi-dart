// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'session_probe_http_get.dart';
import 'session_probe_tcp_socket.dart';

/// Session probe configuration.
class SessionProbe {
  /// Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1. Maximum value is 10.
  final pulumi.Input<int>? failureThreshold;
  /// HTTPGet specifies the http request to perform.
  final pulumi.Input<SessionProbeHttpGet>? httpGet;
  /// Number of seconds after the container has started before liveness probes are initiated. Minimum value is 1. Maximum value is 60.
  final pulumi.Input<int>? initialDelaySeconds;
  /// How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value is 240.
  final pulumi.Input<int>? periodSeconds;
  /// Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1. Maximum value is 10.
  final pulumi.Input<int>? successThreshold;
  /// TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported.
  final pulumi.Input<SessionProbeTcpSocket>? tcpSocket;
  /// Optional duration in seconds the pod needs to terminate gracefully upon probe failure. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. If this value is nil, the pod's terminationGracePeriodSeconds will be used. Otherwise, this value overrides the value provided by the pod spec. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). This is an alpha field and requires enabling ProbeTerminationGracePeriod feature gate. Maximum value is 3600 seconds (1 hour)
  final pulumi.Input<double>? terminationGracePeriodSeconds;
  /// Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 240.
  final pulumi.Input<int>? timeoutSeconds;
  /// Denotes the type of probe. Can be Liveness or Startup, Readiness probe is not supported in sessions. Type must be unique for each probe within the context of a list of probes (SessionProbes).
  final pulumi.Input<String>? type;

  /// Creates a new [SessionProbe].
  /// [failureThreshold] Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1. Maximum value is 10.
  /// [httpGet] HTTPGet specifies the http request to perform.
  /// [initialDelaySeconds] Number of seconds after the container has started before liveness probes are initiated. Minimum value is 1. Maximum value is 60.
  /// [periodSeconds] How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value is 240.
  /// [successThreshold] Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1. Maximum value is 10.
  /// [tcpSocket] TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported.
  /// [terminationGracePeriodSeconds] Optional duration in seconds the pod needs to terminate gracefully upon probe failure. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. If this value is nil, the pod's terminationGracePeriodSeconds will be used. Otherwise, this value overrides the value provided by the pod spec. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). This is an alpha field and requires enabling ProbeTerminationGracePeriod feature gate. Maximum value is 3600 seconds (1 hour)
  /// [timeoutSeconds] Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 240.
  /// [type] Denotes the type of probe. Can be Liveness or Startup, Readiness probe is not supported in sessions. Type must be unique for each probe within the context of a list of probes (SessionProbes).
  SessionProbe({
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
      'httpGet': ?pulumi.Input.mapOptionalInputValue<SessionProbeHttpGet, Map<String, dynamic>>(httpGet, (value) => value.toMap()),
      'initialDelaySeconds': ?initialDelaySeconds,
      'periodSeconds': ?periodSeconds,
      'successThreshold': ?successThreshold,
      'tcpSocket': ?pulumi.Input.mapOptionalInputValue<SessionProbeTcpSocket, Map<String, dynamic>>(tcpSocket, (value) => value.toMap()),
      'terminationGracePeriodSeconds': ?terminationGracePeriodSeconds,
      'timeoutSeconds': ?timeoutSeconds,
      'type': ?type,
    };
  }

  factory SessionProbe.fromMap(Map<String, dynamic> map) {
    return SessionProbe(
      failureThreshold: map['failureThreshold'] == null ? null : (map['failureThreshold']! as int).input(),
      httpGet: map['httpGet'] == null ? null : (SessionProbeHttpGet.fromMap((map['httpGet']! as Map).cast<String, dynamic>())).input(),
      initialDelaySeconds: map['initialDelaySeconds'] == null ? null : (map['initialDelaySeconds']! as int).input(),
      periodSeconds: map['periodSeconds'] == null ? null : (map['periodSeconds']! as int).input(),
      successThreshold: map['successThreshold'] == null ? null : (map['successThreshold']! as int).input(),
      tcpSocket: map['tcpSocket'] == null ? null : (SessionProbeTcpSocket.fromMap((map['tcpSocket']! as Map).cast<String, dynamic>())).input(),
      terminationGracePeriodSeconds: map['terminationGracePeriodSeconds'] == null ? null : (map['terminationGracePeriodSeconds']! as double).input(),
      timeoutSeconds: map['timeoutSeconds'] == null ? null : (map['timeoutSeconds']! as int).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

