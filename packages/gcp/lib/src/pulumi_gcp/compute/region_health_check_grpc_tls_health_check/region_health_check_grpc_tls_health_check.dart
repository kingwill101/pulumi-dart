// ignore_for_file: unused_element, unnecessary_cast

class RegionHealthCheckGrpcTlsHealthCheck {
  /// The gRPC service name for the health check.
  /// The value of grpcServiceName has the following meanings by convention:
  /// * Empty serviceName means the overall status of all services at the backend.
  /// * Non-empty serviceName means the health of that gRPC service, as defined by the owner of the service.
  /// The grpcServiceName can only be ASCII.
  final String? grpcServiceName;

  /// The port number for the health check request.
  /// Must be specified if<span pulumi-lang-nodejs=" portSpecification " pulumi-lang-dotnet=" PortSpecification " pulumi-lang-go=" portSpecification " pulumi-lang-python=" port_specification " pulumi-lang-yaml=" portSpecification " pulumi-lang-java=" portSpecification "> port_specification </span>is USE_FIXED_PORT. Valid values are 1 through 65535.
  final int? port;

  /// Specifies how port is selected for health checking, can be one of the
  /// following values:
  /// * `USE_FIXED_PORT`: The port number in <span pulumi-lang-nodejs="`port`" pulumi-lang-dotnet="`Port`" pulumi-lang-go="`port`" pulumi-lang-python="`port`" pulumi-lang-yaml="`port`" pulumi-lang-java="`port`">`port`</span> is used for health checking.
  /// * `USE_NAMED_PORT`: Not supported for GRPC with TLS health checking.
  /// * `USE_SERVING_PORT`: For NetworkEndpointGroup, the port specified for each
  /// network endpoint is used for health checking. For other backends, the
  /// port or named port specified in the Backend Service is used for health
  /// checking.
  /// If not specified, gRPC health check follows behavior specified in the <span pulumi-lang-nodejs="`port`" pulumi-lang-dotnet="`Port`" pulumi-lang-go="`port`" pulumi-lang-python="`port`" pulumi-lang-yaml="`port`" pulumi-lang-java="`port`">`port`</span> field.
  /// Possible values are: `USE_FIXED_PORT`, `USE_NAMED_PORT`, `USE_SERVING_PORT`.
  final String? portSpecification;

  RegionHealthCheckGrpcTlsHealthCheck({
    this.grpcServiceName,
    this.port,
    this.portSpecification,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final grpcServiceNameValue = grpcServiceName;
    if (grpcServiceNameValue != null) {
      map['grpcServiceName'] = grpcServiceNameValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final portSpecificationValue = portSpecification;
    if (portSpecificationValue != null) {
      map['portSpecification'] = portSpecificationValue;
    }
    return map;
  }

  factory RegionHealthCheckGrpcTlsHealthCheck.fromMap(
      Map<String, dynamic> map) {
    return RegionHealthCheckGrpcTlsHealthCheck(
      grpcServiceName: map['grpcServiceName'] == null
          ? null
          : map['grpcServiceName'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      portSpecification: map['portSpecification'] == null
          ? null
          : map['portSpecification'] as String,
    );
  }
}
