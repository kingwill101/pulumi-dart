// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_liveness_v2_exec.dart';
import 'application_liveness_v2_http_get.dart';
import 'application_liveness_v2_tcp_socket.dart';

class ApplicationLivenessV2 {
  /// Execute. See `exec` below.
  final pulumi.Input<ApplicationLivenessV2Exec>? exec;
  /// The number of consecutive failures required before considering the container as unhealthy. Increasing this value makes the container more tolerant to transient failures.
  final pulumi.Input<int>? failureThreshold;
  /// The liveness check settings of the container. See `http_get` below.
  final pulumi.Input<ApplicationLivenessV2HttpGet>? httpGet;
  /// The delay of the health check.
  final pulumi.Input<int>? initialDelaySeconds;
  /// The interval at which the health check is performed.
  final pulumi.Input<int>? periodSeconds;
  /// The liveness check settings of the container. See `tcp_socket` below.
  final pulumi.Input<ApplicationLivenessV2TcpSocket>? tcpSocket;
  /// The timeout period of the health check.
  final pulumi.Input<int>? timeoutSeconds;

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
      'exec': ?pulumi.Input.mapOptionalInputValue<ApplicationLivenessV2Exec, Map<String, dynamic>>(exec, (value) => value.toMap()),
      'failureThreshold': ?failureThreshold,
      'httpGet': ?pulumi.Input.mapOptionalInputValue<ApplicationLivenessV2HttpGet, Map<String, dynamic>>(httpGet, (value) => value.toMap()),
      'initialDelaySeconds': ?initialDelaySeconds,
      'periodSeconds': ?periodSeconds,
      'tcpSocket': ?pulumi.Input.mapOptionalInputValue<ApplicationLivenessV2TcpSocket, Map<String, dynamic>>(tcpSocket, (value) => value.toMap()),
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory ApplicationLivenessV2.fromMap(Map<String, dynamic> map) {
    return ApplicationLivenessV2(
      exec: map['exec'] == null ? null : (ApplicationLivenessV2Exec.fromMap((map['exec']! as Map).cast<String, dynamic>())).input(),
      failureThreshold: map['failureThreshold'] == null ? null : (map['failureThreshold']! as int).input(),
      httpGet: map['httpGet'] == null ? null : (ApplicationLivenessV2HttpGet.fromMap((map['httpGet']! as Map).cast<String, dynamic>())).input(),
      initialDelaySeconds: map['initialDelaySeconds'] == null ? null : (map['initialDelaySeconds']! as int).input(),
      periodSeconds: map['periodSeconds'] == null ? null : (map['periodSeconds']! as int).input(),
      tcpSocket: map['tcpSocket'] == null ? null : (ApplicationLivenessV2TcpSocket.fromMap((map['tcpSocket']! as Map).cast<String, dynamic>())).input(),
      timeoutSeconds: map['timeoutSeconds'] == null ? null : (map['timeoutSeconds']! as int).input(),
    );
  }
}

