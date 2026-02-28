// ignore_for_file: unused_element, unnecessary_cast


/// GRPCAction describes an action involving a GRPC port.
class GRPCAction {
  /// Port number of the gRPC service. Number must be in the range 1 to 65535.
  final int? port;
  /// Service is the name of the service to place in the gRPC HealthCheckRequest. If this is not specified, the default behavior is defined by gRPC.
  final String? service;

  /// Creates a new [GRPCAction].
  /// [port] Port number of the gRPC service. Number must be in the range 1 to 65535.
  /// [service] Service is the name of the service to place in the gRPC HealthCheckRequest. If this is not specified, the default behavior is defined by gRPC.
  GRPCAction({
    this.port,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'service': ?service,
    };
  }

  factory GRPCAction.fromMap(Map<String, dynamic> map) {
    return GRPCAction(
      port: map['port'] == null ? null : map['port'] as int,
      service: map['service'] == null ? null : map['service'] as String,
    );
  }
}

