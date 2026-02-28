// ignore_for_file: unused_element, unnecessary_cast

class JobTemplateTemplateContainerStartupProbeGrpc {
  /// Port number to access on the container. Number must be in the range 1 to 65535.
  /// If not specified, defaults to the same value as container.ports[0].containerPort.
  final int? port;

  /// The name of the service to place in the gRPC HealthCheckRequest
  /// (see https://github.com/grpc/grpc/blob/master/doc/health-checking.md).
  /// If this is not specified, the default behavior is defined by gRPC.
  final String? service;

  /// Creates a new [JobTemplateTemplateContainerStartupProbeGrpc].
  /// [port] Port number to access on the container. Number must be in the range 1 to 65535.
  /// [service] The name of the service to place in the gRPC HealthCheckRequest
  JobTemplateTemplateContainerStartupProbeGrpc({
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

  factory JobTemplateTemplateContainerStartupProbeGrpc.fromMap(
      Map<String, dynamic> map) {
    return JobTemplateTemplateContainerStartupProbeGrpc(
      port: map['port'] == null ? null : map['port'] as int,
      service: map['service'] == null ? null : map['service'] as String,
    );
  }
}
