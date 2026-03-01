// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_run_v2_grpcaction.dart';
import 'google_cloud_run_v2_httpget_action.dart';
import 'google_cloud_run_v2_tcpsocket_action.dart';

/// Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.
class GoogleCloudRunV2Probe {
  /// Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
  final int? failureThreshold;

  /// GRPC specifies an action involving a gRPC port. Exactly one of httpGet, tcpSocket, or grpc must be specified.
  final GoogleCloudRunV2GRPCAction? grpc;

  /// HTTPGet specifies the http request to perform. Exactly one of httpGet, tcpSocket, or grpc must be specified.
  final GoogleCloudRunV2HTTPGetAction? httpGet;

  /// Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240.
  final int? initialDelaySeconds;

  /// How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeout_seconds.
  final int? periodSeconds;

  /// TCPSocket specifies an action involving a TCP port. Exactly one of httpGet, tcpSocket, or grpc must be specified.
  final GoogleCloudRunV2TCPSocketAction? tcpSocket;

  /// Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than period_seconds.
  final int? timeoutSeconds;

  /// Creates a new [GoogleCloudRunV2Probe].
  /// [failureThreshold] Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
  /// [grpc] GRPC specifies an action involving a gRPC port. Exactly one of httpGet, tcpSocket, or grpc must be specified.
  /// [httpGet] HTTPGet specifies the http request to perform. Exactly one of httpGet, tcpSocket, or grpc must be specified.
  /// [initialDelaySeconds] Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240.
  /// [periodSeconds] How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeout_seconds.
  /// [tcpSocket] TCPSocket specifies an action involving a TCP port. Exactly one of httpGet, tcpSocket, or grpc must be specified.
  /// [timeoutSeconds] Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than period_seconds.
  GoogleCloudRunV2Probe({
    this.failureThreshold,
    this.grpc,
    this.httpGet,
    this.initialDelaySeconds,
    this.periodSeconds,
    this.tcpSocket,
    this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureThreshold': ?failureThreshold,
      'grpc': ?grpc == null ? null : grpc!.toMap(),
      'httpGet': ?httpGet == null ? null : httpGet!.toMap(),
      'initialDelaySeconds': ?initialDelaySeconds,
      'periodSeconds': ?periodSeconds,
      'tcpSocket': ?tcpSocket == null ? null : tcpSocket!.toMap(),
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory GoogleCloudRunV2Probe.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2Probe(
      failureThreshold: map['failureThreshold'] == null
          ? null
          : map['failureThreshold'] as int,
      grpc: map['grpc'] == null
          ? null
          : GoogleCloudRunV2GRPCAction.fromMap(
              (map['grpc'] as Map).cast<String, dynamic>(),
            ),
      httpGet: map['httpGet'] == null
          ? null
          : GoogleCloudRunV2HTTPGetAction.fromMap(
              (map['httpGet'] as Map).cast<String, dynamic>(),
            ),
      initialDelaySeconds: map['initialDelaySeconds'] == null
          ? null
          : map['initialDelaySeconds'] as int,
      periodSeconds: map['periodSeconds'] == null
          ? null
          : map['periodSeconds'] as int,
      tcpSocket: map['tcpSocket'] == null
          ? null
          : GoogleCloudRunV2TCPSocketAction.fromMap(
              (map['tcpSocket'] as Map).cast<String, dynamic>(),
            ),
      timeoutSeconds: map['timeoutSeconds'] == null
          ? null
          : map['timeoutSeconds'] as int,
    );
  }
}
