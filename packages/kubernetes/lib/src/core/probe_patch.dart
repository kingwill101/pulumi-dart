// ignore_for_file: unused_element, unnecessary_cast

import 'exec_action_patch.dart';
import 'grpcaction_patch.dart';
import 'httpget_action_patch.dart';
import 'tcpsocket_action_patch.dart';

/// Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.
class ProbePatch {
  /// Exec specifies a command to execute in the container.
  final ExecActionPatch? exec;
  /// Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
  final int? failureThreshold;
  /// GRPC specifies a GRPC HealthCheckRequest.
  final GRPCActionPatch? grpc;
  /// HTTPGet specifies an HTTP GET request to perform.
  final HTTPGetActionPatch? httpGet;
  /// Number of seconds after the container has started before liveness probes are initiated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  final int? initialDelaySeconds;
  /// How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1.
  final int? periodSeconds;
  /// Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1.
  final int? successThreshold;
  /// TCPSocket specifies a connection to a TCP port.
  final TCPSocketActionPatch? tcpSocket;
  /// Optional duration in seconds the pod needs to terminate gracefully upon probe failure. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. If this value is nil, the pod's terminationGracePeriodSeconds will be used. Otherwise, this value overrides the value provided by the pod spec. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). This is a beta field and requires enabling ProbeTerminationGracePeriod feature gate. Minimum value is 1. spec.terminationGracePeriodSeconds is used if unset.
  final int? terminationGracePeriodSeconds;
  /// Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  final int? timeoutSeconds;

  /// Creates a new [ProbePatch].
  /// [exec] Exec specifies a command to execute in the container.
  /// [failureThreshold] Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
  /// [grpc] GRPC specifies a GRPC HealthCheckRequest.
  /// [httpGet] HTTPGet specifies an HTTP GET request to perform.
  /// [initialDelaySeconds] Number of seconds after the container has started before liveness probes are initiated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  /// [periodSeconds] How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1.
  /// [successThreshold] Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1.
  /// [tcpSocket] TCPSocket specifies a connection to a TCP port.
  /// [terminationGracePeriodSeconds] Optional duration in seconds the pod needs to terminate gracefully upon probe failure. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. If this value is nil, the pod's terminationGracePeriodSeconds will be used. Otherwise, this value overrides the value provided by the pod spec. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). This is a beta field and requires enabling ProbeTerminationGracePeriod feature gate. Minimum value is 1. spec.terminationGracePeriodSeconds is used if unset.
  /// [timeoutSeconds] Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  ProbePatch({
    this.exec,
    this.failureThreshold,
    this.grpc,
    this.httpGet,
    this.initialDelaySeconds,
    this.periodSeconds,
    this.successThreshold,
    this.tcpSocket,
    this.terminationGracePeriodSeconds,
    this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exec': ?exec == null ? null : exec!.toMap(),
      'failureThreshold': ?failureThreshold,
      'grpc': ?grpc == null ? null : grpc!.toMap(),
      'httpGet': ?httpGet == null ? null : httpGet!.toMap(),
      'initialDelaySeconds': ?initialDelaySeconds,
      'periodSeconds': ?periodSeconds,
      'successThreshold': ?successThreshold,
      'tcpSocket': ?tcpSocket == null ? null : tcpSocket!.toMap(),
      'terminationGracePeriodSeconds': ?terminationGracePeriodSeconds,
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory ProbePatch.fromMap(Map<String, dynamic> map) {
    return ProbePatch(
      exec: map['exec'] == null ? null : ExecActionPatch.fromMap((map['exec'] as Map).cast<String, dynamic>()),
      failureThreshold: map['failureThreshold'] == null ? null : map['failureThreshold'] as int,
      grpc: map['grpc'] == null ? null : GRPCActionPatch.fromMap((map['grpc'] as Map).cast<String, dynamic>()),
      httpGet: map['httpGet'] == null ? null : HTTPGetActionPatch.fromMap((map['httpGet'] as Map).cast<String, dynamic>()),
      initialDelaySeconds: map['initialDelaySeconds'] == null ? null : map['initialDelaySeconds'] as int,
      periodSeconds: map['periodSeconds'] == null ? null : map['periodSeconds'] as int,
      successThreshold: map['successThreshold'] == null ? null : map['successThreshold'] as int,
      tcpSocket: map['tcpSocket'] == null ? null : TCPSocketActionPatch.fromMap((map['tcpSocket'] as Map).cast<String, dynamic>()),
      terminationGracePeriodSeconds: map['terminationGracePeriodSeconds'] == null ? null : map['terminationGracePeriodSeconds'] as int,
      timeoutSeconds: map['timeoutSeconds'] == null ? null : map['timeoutSeconds'] as int,
    );
  }
}

