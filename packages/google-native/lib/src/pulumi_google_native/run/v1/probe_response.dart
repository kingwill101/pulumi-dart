// ignore_for_file: unused_element, unnecessary_cast

import 'exec_action_response.dart';
import 'grpcaction_response.dart';
import 'httpget_action_response.dart';
import 'tcpsocket_action_response.dart';

/// Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.
class ProbeResponse {
  /// Not supported by Cloud Run.
  final ExecActionResponse exec;

  /// Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
  final int failureThreshold;

  /// GRPCAction specifies an action involving a GRPC port.
  final GRPCActionResponse grpc;

  /// HTTPGet specifies the http request to perform.
  final HTTPGetActionResponse httpGet;

  /// Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240.
  final int initialDelaySeconds;

  /// How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeout_seconds.
  final int periodSeconds;

  /// Minimum consecutive successes for the probe to be considered successful after having failed. Must be 1 if set.
  final int successThreshold;

  /// TCPSocket specifies an action involving a TCP port.
  final TCPSocketActionResponse tcpSocket;

  /// Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than period_seconds; if period_seconds is not set, must be less or equal than 10.
  final int timeoutSeconds;

  ProbeResponse({
    required this.exec,
    required this.failureThreshold,
    required this.grpc,
    required this.httpGet,
    required this.initialDelaySeconds,
    required this.periodSeconds,
    required this.successThreshold,
    required this.tcpSocket,
    required this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exec'] = exec.toMap();
    map['failureThreshold'] = failureThreshold;
    map['grpc'] = grpc.toMap();
    map['httpGet'] = httpGet.toMap();
    map['initialDelaySeconds'] = initialDelaySeconds;
    map['periodSeconds'] = periodSeconds;
    map['successThreshold'] = successThreshold;
    map['tcpSocket'] = tcpSocket.toMap();
    map['timeoutSeconds'] = timeoutSeconds;
    return map;
  }

  factory ProbeResponse.fromMap(Map<String, dynamic> map) {
    return ProbeResponse(
      exec: ExecActionResponse.fromMap(
          (map['exec'] as Map).cast<String, dynamic>()),
      failureThreshold: map['failureThreshold'] as int,
      grpc: GRPCActionResponse.fromMap(
          (map['grpc'] as Map).cast<String, dynamic>()),
      httpGet: HTTPGetActionResponse.fromMap(
          (map['httpGet'] as Map).cast<String, dynamic>()),
      initialDelaySeconds: map['initialDelaySeconds'] as int,
      periodSeconds: map['periodSeconds'] as int,
      successThreshold: map['successThreshold'] as int,
      tcpSocket: TCPSocketActionResponse.fromMap(
          (map['tcpSocket'] as Map).cast<String, dynamic>()),
      timeoutSeconds: map['timeoutSeconds'] as int,
    );
  }
}
