// ignore_for_file: unused_element, unnecessary_cast

class GetServiceTemplateContainerLivenessProbeGrpc {
  /// Port number to access on the container. Number must be in the range 1 to 65535.
  /// If not specified, defaults to the same value as container.ports[0].containerPort.
  final int port;

  /// The name of the service to place in the gRPC HealthCheckRequest
  /// (see https://github.com/grpc/grpc/blob/master/doc/health-checking.md).
  /// If this is not specified, the default behavior is defined by gRPC.
  final String service;

  GetServiceTemplateContainerLivenessProbeGrpc({
    required this.port,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['port'] = port;
    map['service'] = service;
    return map;
  }

  factory GetServiceTemplateContainerLivenessProbeGrpc.fromMap(
      Map<String, dynamic> map) {
    return GetServiceTemplateContainerLivenessProbeGrpc(
      port: map['port'] as int,
      service: map['service'] as String,
    );
  }
}
