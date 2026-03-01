// ignore_for_file: unused_element, unnecessary_cast


class GetServiceTemplateSpecContainerStartupProbeGrpc {
  /// Port number to access on the container. Number must be in the range 1 to 65535.
  /// If not specified, defaults to the same value as container.ports[0].containerPort.
  final int port;
  /// The name of the service to place in the gRPC HealthCheckRequest
  /// (see https://github.com/grpc/grpc/blob/master/doc/health-checking.md).
  /// If this is not specified, the default behavior is defined by gRPC.
  final String service;

  /// Creates a new [GetServiceTemplateSpecContainerStartupProbeGrpc].
  /// [port] Port number to access on the container. Number must be in the range 1 to 65535.
  /// [service] The name of the service to place in the gRPC HealthCheckRequest
  GetServiceTemplateSpecContainerStartupProbeGrpc({
    required this.port,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'service': service,
    };
  }

  factory GetServiceTemplateSpecContainerStartupProbeGrpc.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateSpecContainerStartupProbeGrpc(
      port: map['port'] as int,
      service: map['service'] as String,
    );
  }
}

