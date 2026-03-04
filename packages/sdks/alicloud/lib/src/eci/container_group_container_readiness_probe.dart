// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_group_container_readiness_probe_exec.dart';
import 'container_group_container_readiness_probe_http_get.dart';
import 'container_group_container_readiness_probe_tcp_socket.dart';

class ContainerGroupContainerReadinessProbe {
  /// Health check using command line method. See `exec` below.
  final pulumi.Input<List<ContainerGroupContainerReadinessProbeExec>>? execs;

  /// Threshold for the number of checks that are determined to have failed since the last successful check (must be consecutive failures), default is 3.
  final pulumi.Input<int>? failureThreshold;

  /// Health check using HTTP request method. See `http_get` below.
  ///
  /// &gt; **NOTE:** When you configure `readiness_probe`, you can select only one of the `exec`, `tcp_socket`, `http_get`.
  final pulumi.Input<List<ContainerGroupContainerReadinessProbeHttpGet>>?
  httpGets;

  /// Check the time to start execution, calculated from the completion of container startup.
  final pulumi.Input<int>? initialDelaySeconds;

  /// Buffer time for the program to handle operations before closing.
  final pulumi.Input<int>? periodSeconds;

  /// The check count threshold for re-identifying successful checks since the last failed check (must be consecutive successes), default is 1. Current must be 1.
  final pulumi.Input<int>? successThreshold;

  /// Health check using TCP socket method. See `tcp_socket` below.
  final pulumi.Input<List<ContainerGroupContainerReadinessProbeTcpSocket>>?
  tcpSockets;

  /// Check the timeout, the default is 1 second, the minimum is 1 second.
  final pulumi.Input<int>? timeoutSeconds;

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
      'execs':
          ?pulumi.Input.mapOptionalInputValue<
            List<ContainerGroupContainerReadinessProbeExec>,
            List<Map<String, dynamic>>
          >(
            execs,
            (value) =>
                pulumi.Input.encodeList<
                  ContainerGroupContainerReadinessProbeExec,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'failureThreshold': ?failureThreshold,
      'httpGets':
          ?pulumi.Input.mapOptionalInputValue<
            List<ContainerGroupContainerReadinessProbeHttpGet>,
            List<Map<String, dynamic>>
          >(
            httpGets,
            (value) =>
                pulumi.Input.encodeList<
                  ContainerGroupContainerReadinessProbeHttpGet,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'initialDelaySeconds': ?initialDelaySeconds,
      'periodSeconds': ?periodSeconds,
      'successThreshold': ?successThreshold,
      'tcpSockets':
          ?pulumi.Input.mapOptionalInputValue<
            List<ContainerGroupContainerReadinessProbeTcpSocket>,
            List<Map<String, dynamic>>
          >(
            tcpSockets,
            (value) =>
                pulumi.Input.encodeList<
                  ContainerGroupContainerReadinessProbeTcpSocket,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory ContainerGroupContainerReadinessProbe.fromMap(
    Map<String, dynamic> map,
  ) {
    return ContainerGroupContainerReadinessProbe(
      execs: (() {
        final guardedValue = map['execs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ContainerGroupContainerReadinessProbeExec>(
            guardedValue,
            (value) => ContainerGroupContainerReadinessProbeExec.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      failureThreshold: (() {
        final guardedValue = map['failureThreshold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      httpGets: (() {
        final guardedValue = map['httpGets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ContainerGroupContainerReadinessProbeHttpGet>(
            guardedValue,
            (value) => ContainerGroupContainerReadinessProbeHttpGet.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      initialDelaySeconds: (() {
        final guardedValue = map['initialDelaySeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      periodSeconds: (() {
        final guardedValue = map['periodSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      successThreshold: (() {
        final guardedValue = map['successThreshold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      tcpSockets: (() {
        final guardedValue = map['tcpSockets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi
              .Input.decodeList<ContainerGroupContainerReadinessProbeTcpSocket>(
            guardedValue,
            (value) => ContainerGroupContainerReadinessProbeTcpSocket.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      timeoutSeconds: (() {
        final guardedValue = map['timeoutSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
