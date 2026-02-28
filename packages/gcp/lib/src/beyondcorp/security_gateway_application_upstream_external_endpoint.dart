// ignore_for_file: unused_element, unnecessary_cast


class SecurityGatewayApplicationUpstreamExternalEndpoint {
  /// Hostname of the endpoint.
  final String hostname;
  /// Port of the endpoint.
  final int port;

  /// Creates a new [SecurityGatewayApplicationUpstreamExternalEndpoint].
  /// [hostname] Hostname of the endpoint.
  /// [port] Port of the endpoint.
  SecurityGatewayApplicationUpstreamExternalEndpoint({
    required this.hostname,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': hostname,
      'port': port,
    };
  }

  factory SecurityGatewayApplicationUpstreamExternalEndpoint.fromMap(Map<String, dynamic> map) {
    return SecurityGatewayApplicationUpstreamExternalEndpoint(
      hostname: map['hostname'] as String,
      port: map['port'] as int,
    );
  }
}

