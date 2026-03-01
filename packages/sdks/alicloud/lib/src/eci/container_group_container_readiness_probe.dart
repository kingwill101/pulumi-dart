// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_group_container_readiness_probe_exec.dart';
import 'container_group_container_readiness_probe_http_get.dart';
import 'container_group_container_readiness_probe_tcp_socket.dart';

class ContainerGroupContainerReadinessProbe {
  /// Health check using command line method. See `exec` below.
  final List<ContainerGroupContainerReadinessProbeExec>? execs;
  /// Threshold for the number of checks that are determined to have failed since the last successful check (must be consecutive failures), default is 3.
  final int? failureThreshold;
  /// Health check using HTTP request method. See `http_get` below.
  ///
  /// > **NOTE:** When you configure `readiness_probe`, you can select only one of the `exec`, `tcp_socket`, `http_get`.
  final List<ContainerGroupContainerReadinessProbeHttpGet>? httpGets;
  /// Check the time to start execution, calculated from the completion of container startup.
  final int? initialDelaySeconds;
  /// Buffer time for the program to handle operations before closing.
  final int? periodSeconds;
  /// The check count threshold for re-identifying successful checks since the last failed check (must be consecutive successes), default is 1. Current must be 1.
  final int? successThreshold;
  /// Health check using TCP socket method. See `tcp_socket` below.
  final List<ContainerGroupContainerReadinessProbeTcpSocket>? tcpSockets;
  /// Check the timeout, the default is 1 second, the minimum is 1 second.
  final int? timeoutSeconds;

  /// Creates a new [ContainerGroupContainerReadinessProbe].
  /// [execs] Health check using command line method. See `exec` below.
  /// [failureThreshold] Threshold for the number of checks that are determined to have failed since the last successful check (must be consecutive failures), default is 3.
  /// [httpGets] Health check using HTTP request method. See `http_get` below.
  /// [initialDelaySeconds] Check the time to start execution, calculated from the completion of container startup.
  /// [periodSeconds] Buffer time for the program to handle operations before closing.
  /// [successThreshold] The check count threshold for re-identifying successful checks since the last failed check (must be consecutive successes), default is 1. Current must be 1.
  /// [tcpSockets] Health check using TCP socket method. See `tcp_socket` below.
  /// [timeoutSeconds] Check the timeout, the default is 1 second, the minimum is 1 second.
  ContainerGroupContainerReadinessProbe({
    this.execs,
    this.failureThreshold,
    this.httpGets,
    this.initialDelaySeconds,
    this.periodSeconds,
    this.successThreshold,
    this.tcpSockets,
    this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'execs': ?execs == null ? null : pulumi.Input.encodeList<ContainerGroupContainerReadinessProbeExec, Map<String, dynamic>>(execs!, (value) => value.toMap()),
      'failureThreshold': ?failureThreshold,
      'httpGets': ?httpGets == null ? null : pulumi.Input.encodeList<ContainerGroupContainerReadinessProbeHttpGet, Map<String, dynamic>>(httpGets!, (value) => value.toMap()),
      'initialDelaySeconds': ?initialDelaySeconds,
      'periodSeconds': ?periodSeconds,
      'successThreshold': ?successThreshold,
      'tcpSockets': ?tcpSockets == null ? null : pulumi.Input.encodeList<ContainerGroupContainerReadinessProbeTcpSocket, Map<String, dynamic>>(tcpSockets!, (value) => value.toMap()),
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory ContainerGroupContainerReadinessProbe.fromMap(Map<String, dynamic> map) {
    return ContainerGroupContainerReadinessProbe(
      execs: map['execs'] == null ? null : pulumi.Input.decodeList<ContainerGroupContainerReadinessProbeExec>(map['execs'], (value) => ContainerGroupContainerReadinessProbeExec.fromMap((value as Map).cast<String, dynamic>())),
      failureThreshold: map['failureThreshold'] == null ? null : map['failureThreshold'] as int,
      httpGets: map['httpGets'] == null ? null : pulumi.Input.decodeList<ContainerGroupContainerReadinessProbeHttpGet>(map['httpGets'], (value) => ContainerGroupContainerReadinessProbeHttpGet.fromMap((value as Map).cast<String, dynamic>())),
      initialDelaySeconds: map['initialDelaySeconds'] == null ? null : map['initialDelaySeconds'] as int,
      periodSeconds: map['periodSeconds'] == null ? null : map['periodSeconds'] as int,
      successThreshold: map['successThreshold'] == null ? null : map['successThreshold'] as int,
      tcpSockets: map['tcpSockets'] == null ? null : pulumi.Input.decodeList<ContainerGroupContainerReadinessProbeTcpSocket>(map['tcpSockets'], (value) => ContainerGroupContainerReadinessProbeTcpSocket.fromMap((value as Map).cast<String, dynamic>())),
      timeoutSeconds: map['timeoutSeconds'] == null ? null : map['timeoutSeconds'] as int,
    );
  }
}

