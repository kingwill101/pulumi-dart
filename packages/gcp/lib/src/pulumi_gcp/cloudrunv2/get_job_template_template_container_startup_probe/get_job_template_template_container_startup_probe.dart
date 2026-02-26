// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_job_template_template_container_startup_probe_grpc/get_job_template_template_container_startup_probe_grpc.dart';
import '../get_job_template_template_container_startup_probe_http_get/get_job_template_template_container_startup_probe_http_get.dart';
import '../get_job_template_template_container_startup_probe_tcp_socket/get_job_template_template_container_startup_probe_tcp_socket.dart';

class GetJobTemplateTemplateContainerStartupProbe {
  /// Minimum consecutive failures for the probe to be considered failed after
  /// having succeeded. Defaults to 3. Minimum value is 1.
  final int failureThreshold;

  /// GRPC specifies an action involving a GRPC port.
  final List<GetJobTemplateTemplateContainerStartupProbeGrpc> grpcs;

  /// HttpGet specifies the http request to perform.
  final List<GetJobTemplateTemplateContainerStartupProbeHttpGet> httpGets;

  /// Number of seconds after the container has started before the probe is
  /// initiated.
  /// Defaults to 0 seconds. Minimum value is 0. Maximum value is 240.
  final int initialDelaySeconds;

  /// How often (in seconds) to perform the probe.
  /// Default to 10 seconds. Minimum value is 1. Maximum value is 240.
  final int periodSeconds;

  /// TcpSocket specifies an action involving a TCP port.
  final List<GetJobTemplateTemplateContainerStartupProbeTcpSocket> tcpSockets;

  /// Number of seconds after which the probe times out.
  /// Defaults to 1 second. Minimum value is 1. Maximum value is 3600.
  /// Must be smaller than periodSeconds.
  final int timeoutSeconds;

  GetJobTemplateTemplateContainerStartupProbe({
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
        GetJobTemplateTemplateContainerStartupProbeGrpc,
        Map<String, dynamic>>(grpcs, (value) => value.toMap());
    map['httpGets'] = Input.encodeList<
        GetJobTemplateTemplateContainerStartupProbeHttpGet,
        Map<String, dynamic>>(httpGets, (value) => value.toMap());
    map['initialDelaySeconds'] = initialDelaySeconds;
    map['periodSeconds'] = periodSeconds;
    map['tcpSockets'] = Input.encodeList<
        GetJobTemplateTemplateContainerStartupProbeTcpSocket,
        Map<String, dynamic>>(tcpSockets, (value) => value.toMap());
    map['timeoutSeconds'] = timeoutSeconds;
    return map;
  }

  factory GetJobTemplateTemplateContainerStartupProbe.fromMap(
      Map<String, dynamic> map) {
    return GetJobTemplateTemplateContainerStartupProbe(
      failureThreshold: map['failureThreshold'] as int,
      grpcs: Input.decodeList<GetJobTemplateTemplateContainerStartupProbeGrpc>(
          map['grpcs'],
          (value) => GetJobTemplateTemplateContainerStartupProbeGrpc.fromMap(
              (value as Map).cast<String, dynamic>())),
      httpGets:
          Input.decodeList<GetJobTemplateTemplateContainerStartupProbeHttpGet>(
              map['httpGets'],
              (value) =>
                  GetJobTemplateTemplateContainerStartupProbeHttpGet.fromMap(
                      (value as Map).cast<String, dynamic>())),
      initialDelaySeconds: map['initialDelaySeconds'] as int,
      periodSeconds: map['periodSeconds'] as int,
      tcpSockets: Input.decodeList<
              GetJobTemplateTemplateContainerStartupProbeTcpSocket>(
          map['tcpSockets'],
          (value) =>
              GetJobTemplateTemplateContainerStartupProbeTcpSocket.fromMap(
                  (value as Map).cast<String, dynamic>())),
      timeoutSeconds: map['timeoutSeconds'] as int,
    );
  }
}
