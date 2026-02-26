// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_run_v2_grpcaction_response.dart';
import 'google_cloud_run_v2_httpget_action_response.dart';
import 'google_cloud_run_v2_tcpsocket_action_response.dart';

/// Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.
class GoogleCloudRunV2ProbeResponse {
  /// Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
  final int failureThreshold;

  /// GRPC specifies an action involving a gRPC port. Exactly one of httpGet, tcpSocket, or grpc must be specified.
  final GoogleCloudRunV2GRPCActionResponse grpc;

  /// HTTPGet specifies the http request to perform. Exactly one of httpGet, tcpSocket, or grpc must be specified.
  final GoogleCloudRunV2HTTPGetActionResponse httpGet;

  /// Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240.
  final int initialDelaySeconds;

  /// How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeout_seconds.
  final int periodSeconds;

  /// TCPSocket specifies an action involving a TCP port. Exactly one of httpGet, tcpSocket, or grpc must be specified.
  final GoogleCloudRunV2TCPSocketActionResponse tcpSocket;

  /// Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than period_seconds.
  final int timeoutSeconds;

  GoogleCloudRunV2ProbeResponse({
    required this.failureThreshold,
    required this.grpc,
    required this.httpGet,
    required this.initialDelaySeconds,
    required this.periodSeconds,
    required this.tcpSocket,
    required this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['failureThreshold'] = failureThreshold;
    map['grpc'] = grpc.toMap();
    map['httpGet'] = httpGet.toMap();
    map['initialDelaySeconds'] = initialDelaySeconds;
    map['periodSeconds'] = periodSeconds;
    map['tcpSocket'] = tcpSocket.toMap();
    map['timeoutSeconds'] = timeoutSeconds;
    return map;
  }

  factory GoogleCloudRunV2ProbeResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2ProbeResponse(
      failureThreshold: map['failureThreshold'] as int,
      grpc: GoogleCloudRunV2GRPCActionResponse.fromMap(
          (map['grpc'] as Map).cast<String, dynamic>()),
      httpGet: GoogleCloudRunV2HTTPGetActionResponse.fromMap(
          (map['httpGet'] as Map).cast<String, dynamic>()),
      initialDelaySeconds: map['initialDelaySeconds'] as int,
      periodSeconds: map['periodSeconds'] as int,
      tcpSocket: GoogleCloudRunV2TCPSocketActionResponse.fromMap(
          (map['tcpSocket'] as Map).cast<String, dynamic>()),
      timeoutSeconds: map['timeoutSeconds'] as int,
    );
  }
}
