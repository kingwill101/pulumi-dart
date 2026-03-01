// ignore_for_file: unused_element, unnecessary_cast

import 'application_readiness_v2_exec.dart';
import 'application_readiness_v2_http_get.dart';
import 'application_readiness_v2_tcp_socket.dart';

class ApplicationReadinessV2 {
  /// Execute. See `exec` below.
  final ApplicationReadinessV2Exec? exec;
  /// The number of consecutive failures required before considering the container as unhealthy. Increasing this value makes the container more tolerant to transient failures.
  final int? failureThreshold;
  /// The liveness check settings of the container. See `http_get` below.
  final ApplicationReadinessV2HttpGet? httpGet;
  /// The delay of the health check.
  final int? initialDelaySeconds;
  /// The interval at which the health check is performed.
  final int? periodSeconds;
  /// The number of consecutive successes required before considering the container as healthy. Increasing this value makes the container more tolerant to transient successes during recovery.
  final int? successThreshold;
  /// The liveness check settings of the container. See `tcp_socket` below.
  final ApplicationReadinessV2TcpSocket? tcpSocket;
  /// The timeout period of the health check.
  final int? timeoutSeconds;

  /// Creates a new [ApplicationReadinessV2].
  /// [exec] Execute. See `exec` below.
  /// [failureThreshold] The number of consecutive failures required before considering the container as unhealthy. Increasing this value makes the container more tolerant to transient failures.
  /// [httpGet] The liveness check settings of the container. See `http_get` below.
  /// [initialDelaySeconds] The delay of the health check.
  /// [periodSeconds] The interval at which the health check is performed.
  /// [successThreshold] The number of consecutive successes required before considering the container as healthy. Increasing this value makes the container more tolerant to transient successes during recovery.
  /// [tcpSocket] The liveness check settings of the container. See `tcp_socket` below.
  /// [timeoutSeconds] The timeout period of the health check.
  ApplicationReadinessV2({
    this.exec,
    this.failureThreshold,
    this.httpGet,
    this.initialDelaySeconds,
    this.periodSeconds,
    this.successThreshold,
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
      'successThreshold': ?successThreshold,
      'tcpSocket': ?tcpSocket == null ? null : tcpSocket!.toMap(),
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory ApplicationReadinessV2.fromMap(Map<String, dynamic> map) {
    return ApplicationReadinessV2(
      exec: map['exec'] == null ? null : ApplicationReadinessV2Exec.fromMap((map['exec'] as Map).cast<String, dynamic>()),
      failureThreshold: map['failureThreshold'] == null ? null : map['failureThreshold'] as int,
      httpGet: map['httpGet'] == null ? null : ApplicationReadinessV2HttpGet.fromMap((map['httpGet'] as Map).cast<String, dynamic>()),
      initialDelaySeconds: map['initialDelaySeconds'] == null ? null : map['initialDelaySeconds'] as int,
      periodSeconds: map['periodSeconds'] == null ? null : map['periodSeconds'] as int,
      successThreshold: map['successThreshold'] == null ? null : map['successThreshold'] as int,
      tcpSocket: map['tcpSocket'] == null ? null : ApplicationReadinessV2TcpSocket.fromMap((map['tcpSocket'] as Map).cast<String, dynamic>()),
      timeoutSeconds: map['timeoutSeconds'] == null ? null : map['timeoutSeconds'] as int,
    );
  }
}

