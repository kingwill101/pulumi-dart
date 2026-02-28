// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_template_spec_container_startup_probe_grpc.dart';
import 'get_service_template_spec_container_startup_probe_http_get.dart';
import 'get_service_template_spec_container_startup_probe_tcp_socket.dart';

class GetServiceTemplateSpecContainerStartupProbe {
  /// Minimum consecutive failures for the probe to be considered failed after
  /// having succeeded. Defaults to 3. Minimum value is 1.
  final int failureThreshold;

  /// GRPC specifies an action involving a GRPC port.
  final List<GetServiceTemplateSpecContainerStartupProbeGrpc> grpcs;

  /// HttpGet specifies the http request to perform.
  final List<GetServiceTemplateSpecContainerStartupProbeHttpGet> httpGets;

  /// Number of seconds after the container has started before the probe is
  /// initiated.
  /// Defaults to 0 seconds. Minimum value is 0. Maximum value is 240.
  final int initialDelaySeconds;

  /// How often (in seconds) to perform the probe.
  /// Default to 10 seconds. Minimum value is 1. Maximum value is 240.
  final int periodSeconds;

  /// TcpSocket specifies an action involving a TCP port.
  final List<GetServiceTemplateSpecContainerStartupProbeTcpSocket> tcpSockets;

  /// Number of seconds after which the probe times out.
  /// Defaults to 1 second. Minimum value is 1. Maximum value is 3600.
  /// Must be smaller than periodSeconds.
  final int timeoutSeconds;

  /// Creates a new [GetServiceTemplateSpecContainerStartupProbe].
  /// [failureThreshold] Minimum consecutive failures for the probe to be considered failed after
  /// [grpcs] GRPC specifies an action involving a GRPC port.
  /// [httpGets] HttpGet specifies the http request to perform.
  /// [initialDelaySeconds] Number of seconds after the container has started before the probe is
  /// [periodSeconds] How often (in seconds) to perform the probe.
  /// [tcpSockets] TcpSocket specifies an action involving a TCP port.
  /// [timeoutSeconds] Number of seconds after which the probe times out.
  GetServiceTemplateSpecContainerStartupProbe({
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
    map['grpcs'] = pulumi.Input.encodeList<
        GetServiceTemplateSpecContainerStartupProbeGrpc,
        Map<String, dynamic>>(grpcs, (value) => value.toMap());
    map['httpGets'] = pulumi.Input.encodeList<
        GetServiceTemplateSpecContainerStartupProbeHttpGet,
        Map<String, dynamic>>(httpGets, (value) => value.toMap());
    map['initialDelaySeconds'] = initialDelaySeconds;
    map['periodSeconds'] = periodSeconds;
    map['tcpSockets'] = pulumi.Input.encodeList<
        GetServiceTemplateSpecContainerStartupProbeTcpSocket,
        Map<String, dynamic>>(tcpSockets, (value) => value.toMap());
    map['timeoutSeconds'] = timeoutSeconds;
    return map;
  }

  factory GetServiceTemplateSpecContainerStartupProbe.fromMap(
      Map<String, dynamic> map) {
    return GetServiceTemplateSpecContainerStartupProbe(
      failureThreshold: map['failureThreshold'] as int,
      grpcs: pulumi.Input.decodeList<
              GetServiceTemplateSpecContainerStartupProbeGrpc>(
          map['grpcs'],
          (value) => GetServiceTemplateSpecContainerStartupProbeGrpc.fromMap(
              (value as Map).cast<String, dynamic>())),
      httpGets: pulumi.Input.decodeList<
              GetServiceTemplateSpecContainerStartupProbeHttpGet>(
          map['httpGets'],
          (value) => GetServiceTemplateSpecContainerStartupProbeHttpGet.fromMap(
              (value as Map).cast<String, dynamic>())),
      initialDelaySeconds: map['initialDelaySeconds'] as int,
      periodSeconds: map['periodSeconds'] as int,
      tcpSockets: pulumi.Input.decodeList<
              GetServiceTemplateSpecContainerStartupProbeTcpSocket>(
          map['tcpSockets'],
          (value) =>
              GetServiceTemplateSpecContainerStartupProbeTcpSocket.fromMap(
                  (value as Map).cast<String, dynamic>())),
      timeoutSeconds: map['timeoutSeconds'] as int,
    );
  }
}
