// ignore_for_file: unused_element, unnecessary_cast

class AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeGrpc {
  /// Port number of the gRPC service. Number must be in the range 1 to 65535.
  final int? port;

  /// Service is the name of the service to place in the gRPC
  /// HealthCheckRequest. See
  /// https://github.com/grpc/grpc/blob/master/doc/health-checking.md.
  /// If this is not specified, the default behavior is defined by gRPC.
  final String? service;

  /// Creates a new [AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeGrpc].
  /// [port] Port number of the gRPC service. Number must be in the range 1 to 65535.
  /// [service] Service is the name of the service to place in the gRPC
  AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeGrpc({
    this.port,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'port': ?port, 'service': ?service};
  }

  factory AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeGrpc.fromMap(
    Map<String, dynamic> map,
  ) {
    return AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeGrpc(
      port: map['port'] == null ? null : map['port'] as int,
      service: map['service'] == null ? null : map['service'] as String,
    );
  }
}
