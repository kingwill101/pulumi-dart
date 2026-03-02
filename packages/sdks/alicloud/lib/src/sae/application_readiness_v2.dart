// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_readiness_v2_exec.dart';
import 'application_readiness_v2_http_get.dart';
import 'application_readiness_v2_tcp_socket.dart';

class ApplicationReadinessV2 {
  /// Execute. See `exec` below.
  final pulumi.Input<ApplicationReadinessV2Exec>? exec;
  /// The number of consecutive failures required before considering the container as unhealthy. Increasing this value makes the container more tolerant to transient failures.
  final pulumi.Input<int>? failureThreshold;
  /// The liveness check settings of the container. See `http_get` below.
  final pulumi.Input<ApplicationReadinessV2HttpGet>? httpGet;
  /// The delay of the health check.
  final pulumi.Input<int>? initialDelaySeconds;
  /// The interval at which the health check is performed.
  final pulumi.Input<int>? periodSeconds;
  /// The number of consecutive successes required before considering the container as healthy. Increasing this value makes the container more tolerant to transient successes during recovery.
  final pulumi.Input<int>? successThreshold;
  /// The liveness check settings of the container. See `tcp_socket` below.
  final pulumi.Input<ApplicationReadinessV2TcpSocket>? tcpSocket;
  /// The timeout period of the health check.
  final pulumi.Input<int>? timeoutSeconds;

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
      'exec': ?pulumi.Input.mapOptionalInputValue<ApplicationReadinessV2Exec, Map<String, dynamic>>(exec, (value) => value.toMap()),
      'failureThreshold': ?failureThreshold,
      'httpGet': ?pulumi.Input.mapOptionalInputValue<ApplicationReadinessV2HttpGet, Map<String, dynamic>>(httpGet, (value) => value.toMap()),
      'initialDelaySeconds': ?initialDelaySeconds,
      'periodSeconds': ?periodSeconds,
      'successThreshold': ?successThreshold,
      'tcpSocket': ?pulumi.Input.mapOptionalInputValue<ApplicationReadinessV2TcpSocket, Map<String, dynamic>>(tcpSocket, (value) => value.toMap()),
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory ApplicationReadinessV2.fromMap(Map<String, dynamic> map) {
    return ApplicationReadinessV2(
      exec: map['exec'] == null ? null : (ApplicationReadinessV2Exec.fromMap((map['exec'] as Map).cast<String, dynamic>())).input(),
      failureThreshold: map['failureThreshold'] == null ? null : (map['failureThreshold'] as int).input(),
      httpGet: map['httpGet'] == null ? null : (ApplicationReadinessV2HttpGet.fromMap((map['httpGet'] as Map).cast<String, dynamic>())).input(),
      initialDelaySeconds: map['initialDelaySeconds'] == null ? null : (map['initialDelaySeconds'] as int).input(),
      periodSeconds: map['periodSeconds'] == null ? null : (map['periodSeconds'] as int).input(),
      successThreshold: map['successThreshold'] == null ? null : (map['successThreshold'] as int).input(),
      tcpSocket: map['tcpSocket'] == null ? null : (ApplicationReadinessV2TcpSocket.fromMap((map['tcpSocket'] as Map).cast<String, dynamic>())).input(),
      timeoutSeconds: map['timeoutSeconds'] == null ? null : (map['timeoutSeconds'] as int).input(),
    );
  }
}

