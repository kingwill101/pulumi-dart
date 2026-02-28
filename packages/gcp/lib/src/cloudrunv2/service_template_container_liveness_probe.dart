// ignore_for_file: unused_element, unnecessary_cast

import 'service_template_container_liveness_probe_grpc.dart';
import 'service_template_container_liveness_probe_http_get.dart';
import 'service_template_container_liveness_probe_tcp_socket.dart';

class ServiceTemplateContainerLivenessProbe {
  /// Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
  final int? failureThreshold;
  /// GRPC specifies an action involving a GRPC port.
  /// Structure is documented below.
  final ServiceTemplateContainerLivenessProbeGrpc? grpc;
  /// HTTPGet specifies the http request to perform.
  /// Structure is documented below.
  final ServiceTemplateContainerLivenessProbeHttpGet? httpGet;
  /// Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  final int? initialDelaySeconds;
  /// How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeoutSeconds
  final int? periodSeconds;
  /// TCPSocketAction describes an action based on opening a socket
  /// Structure is documented below.
  final ServiceTemplateContainerLivenessProbeTcpSocket? tcpSocket;
  /// Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than periodSeconds. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  final int? timeoutSeconds;

  /// Creates a new [ServiceTemplateContainerLivenessProbe].
  /// [failureThreshold] Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
  /// [grpc] GRPC specifies an action involving a GRPC port.
  /// [httpGet] HTTPGet specifies the http request to perform.
  /// [initialDelaySeconds] Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  /// [periodSeconds] How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeoutSeconds
  /// [tcpSocket] TCPSocketAction describes an action based on opening a socket
  /// [timeoutSeconds] Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than periodSeconds. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  ServiceTemplateContainerLivenessProbe({
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

  factory ServiceTemplateContainerLivenessProbe.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateContainerLivenessProbe(
      failureThreshold: map['failureThreshold'] == null ? null : map['failureThreshold'] as int,
      grpc: map['grpc'] == null ? null : ServiceTemplateContainerLivenessProbeGrpc.fromMap((map['grpc'] as Map).cast<String, dynamic>()),
      httpGet: map['httpGet'] == null ? null : ServiceTemplateContainerLivenessProbeHttpGet.fromMap((map['httpGet'] as Map).cast<String, dynamic>()),
      initialDelaySeconds: map['initialDelaySeconds'] == null ? null : map['initialDelaySeconds'] as int,
      periodSeconds: map['periodSeconds'] == null ? null : map['periodSeconds'] as int,
      tcpSocket: map['tcpSocket'] == null ? null : ServiceTemplateContainerLivenessProbeTcpSocket.fromMap((map['tcpSocket'] as Map).cast<String, dynamic>()),
      timeoutSeconds: map['timeoutSeconds'] == null ? null : map['timeoutSeconds'] as int,
    );
  }
}

