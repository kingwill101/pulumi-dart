// ignore_for_file: unused_element, unnecessary_cast

import 'service_template_spec_container_startup_probe_grpc.dart';
import 'service_template_spec_container_startup_probe_http_get.dart';
import 'service_template_spec_container_startup_probe_tcp_socket.dart';

class ServiceTemplateSpecContainerStartupProbe {
  /// Minimum consecutive failures for the probe to be considered failed after
  /// having succeeded. Defaults to 3. Minimum value is 1.
  final int? failureThreshold;
  /// GRPC specifies an action involving a GRPC port.
  /// Structure is documented below.
  final ServiceTemplateSpecContainerStartupProbeGrpc? grpc;
  /// HttpGet specifies the http request to perform.
  /// Structure is documented below.
  final ServiceTemplateSpecContainerStartupProbeHttpGet? httpGet;
  /// Number of seconds after the container has started before the probe is
  /// initiated.
  /// Defaults to 0 seconds. Minimum value is 0. Maximum value is 240.
  final int? initialDelaySeconds;
  /// How often (in seconds) to perform the probe.
  /// Default to 10 seconds. Minimum value is 1. Maximum value is 240.
  final int? periodSeconds;
  /// TcpSocket specifies an action involving a TCP port.
  /// Structure is documented below.
  final ServiceTemplateSpecContainerStartupProbeTcpSocket? tcpSocket;
  /// Number of seconds after which the probe times out.
  /// Defaults to 1 second. Minimum value is 1. Maximum value is 3600.
  /// Must be smaller than periodSeconds.
  final int? timeoutSeconds;

  /// Creates a new [ServiceTemplateSpecContainerStartupProbe].
  /// [failureThreshold] Minimum consecutive failures for the probe to be considered failed after
  /// [grpc] GRPC specifies an action involving a GRPC port.
  /// [httpGet] HttpGet specifies the http request to perform.
  /// [initialDelaySeconds] Number of seconds after the container has started before the probe is
  /// [periodSeconds] How often (in seconds) to perform the probe.
  /// [tcpSocket] TcpSocket specifies an action involving a TCP port.
  /// [timeoutSeconds] Number of seconds after which the probe times out.
  ServiceTemplateSpecContainerStartupProbe({
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

  factory ServiceTemplateSpecContainerStartupProbe.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateSpecContainerStartupProbe(
      failureThreshold: map['failureThreshold'] == null ? null : map['failureThreshold'] as int,
      grpc: map['grpc'] == null ? null : ServiceTemplateSpecContainerStartupProbeGrpc.fromMap((map['grpc'] as Map).cast<String, dynamic>()),
      httpGet: map['httpGet'] == null ? null : ServiceTemplateSpecContainerStartupProbeHttpGet.fromMap((map['httpGet'] as Map).cast<String, dynamic>()),
      initialDelaySeconds: map['initialDelaySeconds'] == null ? null : map['initialDelaySeconds'] as int,
      periodSeconds: map['periodSeconds'] == null ? null : map['periodSeconds'] as int,
      tcpSocket: map['tcpSocket'] == null ? null : ServiceTemplateSpecContainerStartupProbeTcpSocket.fromMap((map['tcpSocket'] as Map).cast<String, dynamic>()),
      timeoutSeconds: map['timeoutSeconds'] == null ? null : map['timeoutSeconds'] as int,
    );
  }
}

