// ignore_for_file: unused_element, unnecessary_cast

import 'exec_action.dart';
import 'grpcaction.dart';
import 'httpget_action.dart';
import 'tcpsocket_action.dart';

/// Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.
class Probe {
  /// Not supported by Cloud Run.
  final ExecAction? exec;

  /// Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
  final int? failureThreshold;

  /// GRPCAction specifies an action involving a GRPC port.
  final GRPCAction? grpc;

  /// HTTPGet specifies the http request to perform.
  final HTTPGetAction? httpGet;

  /// Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240.
  final int? initialDelaySeconds;

  /// How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeout_seconds.
  final int? periodSeconds;

  /// Minimum consecutive successes for the probe to be considered successful after having failed. Must be 1 if set.
  final int? successThreshold;

  /// TCPSocket specifies an action involving a TCP port.
  final TCPSocketAction? tcpSocket;

  /// Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than period_seconds; if period_seconds is not set, must be less or equal than 10.
  final int? timeoutSeconds;

  /// Creates a new [Probe].
  /// [exec] Not supported by Cloud Run.
  /// [failureThreshold] Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
  /// [grpc] GRPCAction specifies an action involving a GRPC port.
  /// [httpGet] HTTPGet specifies the http request to perform.
  /// [initialDelaySeconds] Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240.
  /// [periodSeconds] How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeout_seconds.
  /// [successThreshold] Minimum consecutive successes for the probe to be considered successful after having failed. Must be 1 if set.
  /// [tcpSocket] TCPSocket specifies an action involving a TCP port.
  /// [timeoutSeconds] Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than period_seconds; if period_seconds is not set, must be less or equal than 10.
  Probe({
    this.exec,
    this.failureThreshold,
    this.grpc,
    this.httpGet,
    this.initialDelaySeconds,
    this.periodSeconds,
    this.successThreshold,
    this.tcpSocket,
    this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final execValue = exec;
    if (execValue != null) {
      map['exec'] = execValue.toMap();
    }
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
    final initialDelaySecondsValue = initialDelaySeconds;
    if (initialDelaySecondsValue != null) {
      map['initialDelaySeconds'] = initialDelaySecondsValue;
    }
    final periodSecondsValue = periodSeconds;
    if (periodSecondsValue != null) {
      map['periodSeconds'] = periodSecondsValue;
    }
    final successThresholdValue = successThreshold;
    if (successThresholdValue != null) {
      map['successThreshold'] = successThresholdValue;
    }
    final tcpSocketValue = tcpSocket;
    if (tcpSocketValue != null) {
      map['tcpSocket'] = tcpSocketValue.toMap();
    }
    final timeoutSecondsValue = timeoutSeconds;
    if (timeoutSecondsValue != null) {
      map['timeoutSeconds'] = timeoutSecondsValue;
    }
    return map;
  }

  factory Probe.fromMap(Map<String, dynamic> map) {
    return Probe(
      exec: map['exec'] == null
          ? null
          : ExecAction.fromMap((map['exec'] as Map).cast<String, dynamic>()),
      failureThreshold: map['failureThreshold'] == null
          ? null
          : map['failureThreshold'] as int,
      grpc: map['grpc'] == null
          ? null
          : GRPCAction.fromMap((map['grpc'] as Map).cast<String, dynamic>()),
      httpGet: map['httpGet'] == null
          ? null
          : HTTPGetAction.fromMap(
              (map['httpGet'] as Map).cast<String, dynamic>()),
      initialDelaySeconds: map['initialDelaySeconds'] == null
          ? null
          : map['initialDelaySeconds'] as int,
      periodSeconds:
          map['periodSeconds'] == null ? null : map['periodSeconds'] as int,
      successThreshold: map['successThreshold'] == null
          ? null
          : map['successThreshold'] as int,
      tcpSocket: map['tcpSocket'] == null
          ? null
          : TCPSocketAction.fromMap(
              (map['tcpSocket'] as Map).cast<String, dynamic>()),
      timeoutSeconds:
          map['timeoutSeconds'] == null ? null : map['timeoutSeconds'] as int,
    );
  }
}
