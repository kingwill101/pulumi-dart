// ignore_for_file: unused_element, unnecessary_cast

class WorkerPoolTemplateContainerStartupProbeGrpc {
  /// Optional. Port number of the gRPC service. Number must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.
  final int? port;

  /// Optional. Service is the name of the service to place in the gRPC HealthCheckRequest (see https://github.com/grpc/grpc/blob/master/doc/health-checking.md ). If this is not specified, the default behavior is defined by gRPC
  final String? service;

  /// Creates a new [WorkerPoolTemplateContainerStartupProbeGrpc].
  /// [port] Optional. Port number of the gRPC service. Number must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.
  /// [service] Optional. Service is the name of the service to place in the gRPC HealthCheckRequest (see https://github.com/grpc/grpc/blob/master/doc/health-checking.md ). If this is not specified, the default behavior is defined by gRPC
  WorkerPoolTemplateContainerStartupProbeGrpc({
    this.port,
    this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final serviceValue = service;
    if (serviceValue != null) {
      map['service'] = serviceValue;
    }
    return map;
  }

  factory WorkerPoolTemplateContainerStartupProbeGrpc.fromMap(
      Map<String, dynamic> map) {
    return WorkerPoolTemplateContainerStartupProbeGrpc(
      port: map['port'] == null ? null : map['port'] as int,
      service: map['service'] == null ? null : map['service'] as String,
    );
  }
}
