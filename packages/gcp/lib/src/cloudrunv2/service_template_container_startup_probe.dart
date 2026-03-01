// ignore_for_file: unused_element, unnecessary_cast

import 'service_template_container_startup_probe_grpc.dart';
import 'service_template_container_startup_probe_http_get.dart';
import 'service_template_container_startup_probe_tcp_socket.dart';

class ServiceTemplateContainerStartupProbe {
  /// Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
  final int? failureThreshold;

  /// GRPC specifies an action involving a GRPC port.
  /// Structure is documented below.
  final ServiceTemplateContainerStartupProbeGrpc? grpc;

  /// HTTPGet specifies the http request to perform. Exactly one of HTTPGet or TCPSocket must be specified.
  /// Structure is documented below.
  final ServiceTemplateContainerStartupProbeHttpGet? httpGet;

  /// Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  final int? initialDelaySeconds;

  /// How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeoutSeconds
  final int? periodSeconds;

  /// TCPSocket specifies an action involving a TCP port. Exactly one of HTTPGet or TCPSocket must be specified.
  /// Structure is documented below.
  final ServiceTemplateContainerStartupProbeTcpSocket? tcpSocket;

  /// Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than periodSeconds. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  final int? timeoutSeconds;

  /// Creates a new [ServiceTemplateContainerStartupProbe].
  /// [failureThreshold] Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
  /// [grpc] GRPC specifies an action involving a GRPC port.
  /// [httpGet] HTTPGet specifies the http request to perform. Exactly one of HTTPGet or TCPSocket must be specified.
  /// [initialDelaySeconds] Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  /// [periodSeconds] How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeoutSeconds
  /// [tcpSocket] TCPSocket specifies an action involving a TCP port. Exactly one of HTTPGet or TCPSocket must be specified.
  /// [timeoutSeconds] Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than periodSeconds. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  ServiceTemplateContainerStartupProbe({
    this.failureThreshold,
    this.grpc,
    this.httpGet,
    this.initialDelaySeconds,
    this.periodSeconds,
    this.tcpSocket,
    this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureThreshold': ?failureThreshold,
      'grpc': ?grpc == null ? null : grpc!.toMap(),
      'httpGet': ?httpGet == null ? null : httpGet!.toMap(),
      'initialDelaySeconds': ?initialDelaySeconds,
      'periodSeconds': ?periodSeconds,
      'tcpSocket': ?tcpSocket == null ? null : tcpSocket!.toMap(),
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory ServiceTemplateContainerStartupProbe.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceTemplateContainerStartupProbe(
      failureThreshold: map['failureThreshold'] == null
          ? null
          : map['failureThreshold'] as int,
      grpc: map['grpc'] == null
          ? null
          : ServiceTemplateContainerStartupProbeGrpc.fromMap(
              (map['grpc'] as Map).cast<String, dynamic>(),
            ),
      httpGet: map['httpGet'] == null
          ? null
          : ServiceTemplateContainerStartupProbeHttpGet.fromMap(
              (map['httpGet'] as Map).cast<String, dynamic>(),
            ),
      initialDelaySeconds: map['initialDelaySeconds'] == null
          ? null
          : map['initialDelaySeconds'] as int,
      periodSeconds: map['periodSeconds'] == null
          ? null
          : map['periodSeconds'] as int,
      tcpSocket: map['tcpSocket'] == null
          ? null
          : ServiceTemplateContainerStartupProbeTcpSocket.fromMap(
              (map['tcpSocket'] as Map).cast<String, dynamic>(),
            ),
      timeoutSeconds: map['timeoutSeconds'] == null
          ? null
          : map['timeoutSeconds'] as int,
    );
  }
}
