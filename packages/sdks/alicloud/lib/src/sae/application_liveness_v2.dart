// ignore_for_file: unused_element, unnecessary_cast

import 'application_liveness_v2_exec.dart';
import 'application_liveness_v2_http_get.dart';
import 'application_liveness_v2_tcp_socket.dart';

class ApplicationLivenessV2 {
  /// Execute. See `exec` below.
  final ApplicationLivenessV2Exec? exec;
  /// The number of consecutive failures required before considering the container as unhealthy. Increasing this value makes the container more tolerant to transient failures.
  final int? failureThreshold;
  /// The liveness check settings of the container. See `http_get` below.
  final ApplicationLivenessV2HttpGet? httpGet;
  /// The delay of the health check.
  final int? initialDelaySeconds;
  /// The interval at which the health check is performed.
  final int? periodSeconds;
  /// The liveness check settings of the container. See `tcp_socket` below.
  final ApplicationLivenessV2TcpSocket? tcpSocket;
  /// The timeout period of the health check.
  final int? timeoutSeconds;

  /// Creates a new [ApplicationLivenessV2].
  /// [exec] Execute. See `exec` below.
  /// [failureThreshold] The number of consecutive failures required before considering the container as unhealthy. Increasing this value makes the container more tolerant to transient failures.
  /// [httpGet] The liveness check settings of the container. See `http_get` below.
  /// [initialDelaySeconds] The delay of the health check.
  /// [periodSeconds] The interval at which the health check is performed.
  /// [tcpSocket] The liveness check settings of the container. See `tcp_socket` below.
  /// [timeoutSeconds] The timeout period of the health check.
  ApplicationLivenessV2({
    this.exec,
    this.failureThreshold,
    this.httpGet,
    this.initialDelaySeconds,
    this.periodSeconds,
    this.tcpSocket,
    this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exec': ?exec == null ? null : exec!.toMap(),
      'failureThreshold': ?failureThreshold,
      'httpGet': ?httpGet == null ? null : httpGet!.toMap(),
      'initialDelaySeconds': ?initialDelaySeconds,
      'periodSeconds': ?periodSeconds,
      'tcpSocket': ?tcpSocket == null ? null : tcpSocket!.toMap(),
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory ApplicationLivenessV2.fromMap(Map<String, dynamic> map) {
    return ApplicationLivenessV2(
      exec: map['exec'] == null ? null : ApplicationLivenessV2Exec.fromMap((map['exec'] as Map).cast<String, dynamic>()),
      failureThreshold: map['failureThreshold'] == null ? null : map['failureThreshold'] as int,
      httpGet: map['httpGet'] == null ? null : ApplicationLivenessV2HttpGet.fromMap((map['httpGet'] as Map).cast<String, dynamic>()),
      initialDelaySeconds: map['initialDelaySeconds'] == null ? null : map['initialDelaySeconds'] as int,
      periodSeconds: map['periodSeconds'] == null ? null : map['periodSeconds'] as int,
      tcpSocket: map['tcpSocket'] == null ? null : ApplicationLivenessV2TcpSocket.fromMap((map['tcpSocket'] as Map).cast<String, dynamic>()),
      timeoutSeconds: map['timeoutSeconds'] == null ? null : map['timeoutSeconds'] as int,
    );
  }
}

