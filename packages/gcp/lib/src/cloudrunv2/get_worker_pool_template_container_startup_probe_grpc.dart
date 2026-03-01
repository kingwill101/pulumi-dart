// ignore_for_file: unused_element, unnecessary_cast

class GetWorkerPoolTemplateContainerStartupProbeGrpc {
  /// Optional. Port number of the gRPC service. Number must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.
  final int port;

  /// Optional. Service is the name of the service to place in the gRPC HealthCheckRequest (see https://github.com/grpc/grpc/blob/master/doc/health-checking.md ). If this is not specified, the default behavior is defined by gRPC
  final String service;

  /// Creates a new [GetWorkerPoolTemplateContainerStartupProbeGrpc].
  /// [port] Optional. Port number of the gRPC service. Number must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.
  /// [service] Optional. Service is the name of the service to place in the gRPC HealthCheckRequest (see https://github.com/grpc/grpc/blob/master/doc/health-checking.md ). If this is not specified, the default behavior is defined by gRPC
  GetWorkerPoolTemplateContainerStartupProbeGrpc({
    required this.port,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'port': port, 'service': service};
  }

  factory GetWorkerPoolTemplateContainerStartupProbeGrpc.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetWorkerPoolTemplateContainerStartupProbeGrpc(
      port: map['port'] as int,
      service: map['service'] as String,
    );
  }
}
