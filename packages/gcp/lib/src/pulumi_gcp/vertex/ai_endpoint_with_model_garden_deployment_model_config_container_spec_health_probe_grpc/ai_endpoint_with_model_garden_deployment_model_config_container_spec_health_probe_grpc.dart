// ignore_for_file: unused_element, unnecessary_cast

class AiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeGrpc {
  /// Port number of the gRPC service. Number must be in the range 1 to 65535.
  final int? port;

  /// Service is the name of the service to place in the gRPC
  /// HealthCheckRequest. See
  /// https://github.com/grpc/grpc/blob/master/doc/health-checking.md.
  /// If this is not specified, the default behavior is defined by gRPC.
  final String? service;

  AiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeGrpc({
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

  factory AiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeGrpc.fromMap(
      Map<String, dynamic> map) {
    return AiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeGrpc(
      port: map['port'] == null ? null : map['port'] as int,
      service: map['service'] == null ? null : map['service'] as String,
    );
  }
}
