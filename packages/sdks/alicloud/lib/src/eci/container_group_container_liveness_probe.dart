// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_group_container_liveness_probe_exec.dart';
import 'container_group_container_liveness_probe_http_get.dart';
import 'container_group_container_liveness_probe_tcp_socket.dart';

class ContainerGroupContainerLivenessProbe {
  /// Health check using command line method. See `exec` below.
  final pulumi.Input<List<ContainerGroupContainerLivenessProbeExec>>? execs;
  /// Threshold for the number of checks that are determined to have failed since the last successful check (must be consecutive failures), default is 3.
  final pulumi.Input<int>? failureThreshold;
  /// Health check using HTTP request method. See `http_get` below.
  ///
  /// > **NOTE:** When you configure `readiness_probe`, you can select only one of the `exec`, `tcp_socket`, `http_get`.
  final pulumi.Input<List<ContainerGroupContainerLivenessProbeHttpGet>>? httpGets;
  /// Check the time to start execution, calculated from the completion of container startup.
  final pulumi.Input<int>? initialDelaySeconds;
  /// Buffer time for the program to handle operations before closing.
  final pulumi.Input<int>? periodSeconds;
  /// The check count threshold for re-identifying successful checks since the last failed check (must be consecutive successes), default is 1. Current must be 1.
  final pulumi.Input<int>? successThreshold;
  /// Health check using TCP socket method. See `tcp_socket` below.
  final pulumi.Input<List<ContainerGroupContainerLivenessProbeTcpSocket>>? tcpSockets;
  /// Check the timeout, the default is 1 second, the minimum is 1 second.
  final pulumi.Input<int>? timeoutSeconds;

  /// Creates a new [ContainerGroupContainerLivenessProbe].
  /// [execs] Health check using command line method. See `exec` below.
  /// [failureThreshold] Threshold for the number of checks that are determined to have failed since the last successful check (must be consecutive failures), default is 3.
  /// [httpGets] Health check using HTTP request method. See `http_get` below.
  /// [initialDelaySeconds] Check the time to start execution, calculated from the completion of container startup.
  /// [periodSeconds] Buffer time for the program to handle operations before closing.
  /// [successThreshold] The check count threshold for re-identifying successful checks since the last failed check (must be consecutive successes), default is 1. Current must be 1.
  /// [tcpSockets] Health check using TCP socket method. See `tcp_socket` below.
  /// [timeoutSeconds] Check the timeout, the default is 1 second, the minimum is 1 second.
  ContainerGroupContainerLivenessProbe({
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
      'execs': ?pulumi.Input.mapOptionalInputValue<List<ContainerGroupContainerLivenessProbeExec>, List<Map<String, dynamic>>>(execs, (value) => pulumi.Input.encodeList<ContainerGroupContainerLivenessProbeExec, Map<String, dynamic>>(value, (value) => value.toMap())),
      'failureThreshold': ?failureThreshold,
      'httpGets': ?pulumi.Input.mapOptionalInputValue<List<ContainerGroupContainerLivenessProbeHttpGet>, List<Map<String, dynamic>>>(httpGets, (value) => pulumi.Input.encodeList<ContainerGroupContainerLivenessProbeHttpGet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'initialDelaySeconds': ?initialDelaySeconds,
      'periodSeconds': ?periodSeconds,
      'successThreshold': ?successThreshold,
      'tcpSockets': ?pulumi.Input.mapOptionalInputValue<List<ContainerGroupContainerLivenessProbeTcpSocket>, List<Map<String, dynamic>>>(tcpSockets, (value) => pulumi.Input.encodeList<ContainerGroupContainerLivenessProbeTcpSocket, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory ContainerGroupContainerLivenessProbe.fromMap(Map<String, dynamic> map) {
    return ContainerGroupContainerLivenessProbe(
      execs: map['execs'] == null ? null : (pulumi.Input.decodeList<ContainerGroupContainerLivenessProbeExec>(map['execs']!, (value) => ContainerGroupContainerLivenessProbeExec.fromMap((value as Map).cast<String, dynamic>()))).input(),
      failureThreshold: map['failureThreshold'] == null ? null : (map['failureThreshold']! as int).input(),
      httpGets: map['httpGets'] == null ? null : (pulumi.Input.decodeList<ContainerGroupContainerLivenessProbeHttpGet>(map['httpGets']!, (value) => ContainerGroupContainerLivenessProbeHttpGet.fromMap((value as Map).cast<String, dynamic>()))).input(),
      initialDelaySeconds: map['initialDelaySeconds'] == null ? null : (map['initialDelaySeconds']! as int).input(),
      periodSeconds: map['periodSeconds'] == null ? null : (map['periodSeconds']! as int).input(),
      successThreshold: map['successThreshold'] == null ? null : (map['successThreshold']! as int).input(),
      tcpSockets: map['tcpSockets'] == null ? null : (pulumi.Input.decodeList<ContainerGroupContainerLivenessProbeTcpSocket>(map['tcpSockets']!, (value) => ContainerGroupContainerLivenessProbeTcpSocket.fromMap((value as Map).cast<String, dynamic>()))).input(),
      timeoutSeconds: map['timeoutSeconds'] == null ? null : (map['timeoutSeconds']! as int).input(),
    );
  }
}

