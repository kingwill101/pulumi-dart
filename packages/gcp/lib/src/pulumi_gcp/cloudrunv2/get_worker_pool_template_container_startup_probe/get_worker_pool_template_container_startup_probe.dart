// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_worker_pool_template_container_startup_probe_grpc/get_worker_pool_template_container_startup_probe_grpc.dart';
import '../get_worker_pool_template_container_startup_probe_http_get/get_worker_pool_template_container_startup_probe_http_get.dart';
import '../get_worker_pool_template_container_startup_probe_tcp_socket/get_worker_pool_template_container_startup_probe_tcp_socket.dart';

class GetWorkerPoolTemplateContainerStartupProbe {
  /// Optional. Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
  final int failureThreshold;

  /// Optional. GRPC specifies an action involving a gRPC port. Exactly one of httpGet, tcpSocket, or grpc must be specified.
  final List<GetWorkerPoolTemplateContainerStartupProbeGrpc> grpcs;

  /// Optional. HTTPGet specifies the http request to perform. Exactly one of httpGet, tcpSocket, or grpc must be specified.
  final List<GetWorkerPoolTemplateContainerStartupProbeHttpGet> httpGets;

  /// Optional. Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240.
  final int initialDelaySeconds;

  /// Optional. How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeout_seconds.
  final int periodSeconds;

  /// Optional. TCPSocket specifies an action involving a TCP port. Exactly one of httpGet, tcpSocket, or grpc must be specified.
  final List<GetWorkerPoolTemplateContainerStartupProbeTcpSocket> tcpSockets;

  /// Optional. Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than period_seconds.
  final int timeoutSeconds;

  GetWorkerPoolTemplateContainerStartupProbe({
    required this.failureThreshold,
    required this.grpcs,
    required this.httpGets,
    required this.initialDelaySeconds,
    required this.periodSeconds,
    required this.tcpSockets,
    required this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['failureThreshold'] = failureThreshold;
    map['grpcs'] = Input.encodeList<
        GetWorkerPoolTemplateContainerStartupProbeGrpc,
        Map<String, dynamic>>(grpcs, (value) => value.toMap());
    map['httpGets'] = Input.encodeList<
        GetWorkerPoolTemplateContainerStartupProbeHttpGet,
        Map<String, dynamic>>(httpGets, (value) => value.toMap());
    map['initialDelaySeconds'] = initialDelaySeconds;
    map['periodSeconds'] = periodSeconds;
    map['tcpSockets'] = Input.encodeList<
        GetWorkerPoolTemplateContainerStartupProbeTcpSocket,
        Map<String, dynamic>>(tcpSockets, (value) => value.toMap());
    map['timeoutSeconds'] = timeoutSeconds;
    return map;
  }

  factory GetWorkerPoolTemplateContainerStartupProbe.fromMap(
      Map<String, dynamic> map) {
    return GetWorkerPoolTemplateContainerStartupProbe(
      failureThreshold: map['failureThreshold'] as int,
      grpcs: Input.decodeList<GetWorkerPoolTemplateContainerStartupProbeGrpc>(
          map['grpcs'],
          (value) => GetWorkerPoolTemplateContainerStartupProbeGrpc.fromMap(
              (value as Map).cast<String, dynamic>())),
      httpGets:
          Input.decodeList<GetWorkerPoolTemplateContainerStartupProbeHttpGet>(
              map['httpGets'],
              (value) =>
                  GetWorkerPoolTemplateContainerStartupProbeHttpGet.fromMap(
                      (value as Map).cast<String, dynamic>())),
      initialDelaySeconds: map['initialDelaySeconds'] as int,
      periodSeconds: map['periodSeconds'] as int,
      tcpSockets:
          Input.decodeList<GetWorkerPoolTemplateContainerStartupProbeTcpSocket>(
              map['tcpSockets'],
              (value) =>
                  GetWorkerPoolTemplateContainerStartupProbeTcpSocket.fromMap(
                      (value as Map).cast<String, dynamic>())),
      timeoutSeconds: map['timeoutSeconds'] as int,
    );
  }
}
