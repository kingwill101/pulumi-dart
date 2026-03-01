// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_template_container_liveness_probe_grpc.dart';
import 'get_service_template_container_liveness_probe_http_get.dart';
import 'get_service_template_container_liveness_probe_tcp_socket.dart';

class GetServiceTemplateContainerLivenessProbe {
  /// Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
  final int failureThreshold;

  /// GRPC specifies an action involving a GRPC port.
  final List<GetServiceTemplateContainerLivenessProbeGrpc> grpcs;

  /// HTTPGet specifies the http request to perform.
  final List<GetServiceTemplateContainerLivenessProbeHttpGet> httpGets;

  /// Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  final int initialDelaySeconds;

  /// How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeoutSeconds
  final int periodSeconds;

  /// TCPSocketAction describes an action based on opening a socket
  final List<GetServiceTemplateContainerLivenessProbeTcpSocket> tcpSockets;

  /// Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than periodSeconds. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  final int timeoutSeconds;

  /// Creates a new [GetServiceTemplateContainerLivenessProbe].
  /// [failureThreshold] Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
  /// [grpcs] GRPC specifies an action involving a GRPC port.
  /// [httpGets] HTTPGet specifies the http request to perform.
  /// [initialDelaySeconds] Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  /// [periodSeconds] How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeoutSeconds
  /// [tcpSockets] TCPSocketAction describes an action based on opening a socket
  /// [timeoutSeconds] Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than periodSeconds. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  GetServiceTemplateContainerLivenessProbe({
    required this.failureThreshold,
    required this.grpcs,
    required this.httpGets,
    required this.initialDelaySeconds,
    required this.periodSeconds,
    required this.tcpSockets,
    required this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureThreshold': failureThreshold,
      'grpcs':
          pulumi.Input.encodeList<
            GetServiceTemplateContainerLivenessProbeGrpc,
            Map<String, dynamic>
          >(grpcs, (value) => value.toMap()),
      'httpGets':
          pulumi.Input.encodeList<
            GetServiceTemplateContainerLivenessProbeHttpGet,
            Map<String, dynamic>
          >(httpGets, (value) => value.toMap()),
      'initialDelaySeconds': initialDelaySeconds,
      'periodSeconds': periodSeconds,
      'tcpSockets':
          pulumi.Input.encodeList<
            GetServiceTemplateContainerLivenessProbeTcpSocket,
            Map<String, dynamic>
          >(tcpSockets, (value) => value.toMap()),
      'timeoutSeconds': timeoutSeconds,
    };
  }

  factory GetServiceTemplateContainerLivenessProbe.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetServiceTemplateContainerLivenessProbe(
      failureThreshold: map['failureThreshold'] as int,
      grpcs:
          pulumi.Input.decodeList<GetServiceTemplateContainerLivenessProbeGrpc>(
            map['grpcs'],
            (value) => GetServiceTemplateContainerLivenessProbeGrpc.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      httpGets:
          pulumi.Input.decodeList<
            GetServiceTemplateContainerLivenessProbeHttpGet
          >(
            map['httpGets'],
            (value) => GetServiceTemplateContainerLivenessProbeHttpGet.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      initialDelaySeconds: map['initialDelaySeconds'] as int,
      periodSeconds: map['periodSeconds'] as int,
      tcpSockets:
          pulumi.Input.decodeList<
            GetServiceTemplateContainerLivenessProbeTcpSocket
          >(
            map['tcpSockets'],
            (value) =>
                GetServiceTemplateContainerLivenessProbeTcpSocket.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      timeoutSeconds: map['timeoutSeconds'] as int,
    );
  }
}
