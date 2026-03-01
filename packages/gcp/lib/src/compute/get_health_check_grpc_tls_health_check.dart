// ignore_for_file: unused_element, unnecessary_cast

class GetHealthCheckGrpcTlsHealthCheck {
  /// The gRPC service name for the health check.
  /// The value of grpcServiceName has the following meanings by convention:
  /// - Empty serviceName means the overall status of all services at the backend.
  /// - Non-empty serviceName means the health of that gRPC service, as defined by the owner of the service.
  /// The grpcServiceName can only be ASCII.
  final String grpcServiceName;

  /// The port number for the health check request.
  /// Must be specified if port_specification is USE_FIXED_PORT. Valid values are 1 through 65535.
  final int port;

  /// Specifies how port is selected for health checking, can be one of the
  /// following values:
  ///
  /// * 'USE_FIXED_PORT': The port number in 'port' is used for health checking.
  ///
  /// * 'USE_NAMED_PORT': Not supported for GRPC with TLS health checking.
  ///
  /// * 'USE_SERVING_PORT': For NetworkEndpointGroup, the port specified for each
  /// network endpoint is used for health checking. For other backends, the
  /// port or named port specified in the Backend Service is used for health
  /// checking.
  ///
  /// If not specified, gRPC with TLS health check follows behavior specified in the 'port' field. Possible values: ["USE_FIXED_PORT", "USE_NAMED_PORT", "USE_SERVING_PORT"]
  final String portSpecification;

  /// Creates a new [GetHealthCheckGrpcTlsHealthCheck].
  /// [grpcServiceName] The gRPC service name for the health check.
  /// [port] The port number for the health check request.
  /// [portSpecification] Specifies how port is selected for health checking, can be one of the
  GetHealthCheckGrpcTlsHealthCheck({
    required this.grpcServiceName,
    required this.port,
    required this.portSpecification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grpcServiceName': grpcServiceName,
      'port': port,
      'portSpecification': portSpecification,
    };
  }

  factory GetHealthCheckGrpcTlsHealthCheck.fromMap(Map<String, dynamic> map) {
    return GetHealthCheckGrpcTlsHealthCheck(
      grpcServiceName: map['grpcServiceName'] as String,
      port: map['port'] as int,
      portSpecification: map['portSpecification'] as String,
    );
  }
}
