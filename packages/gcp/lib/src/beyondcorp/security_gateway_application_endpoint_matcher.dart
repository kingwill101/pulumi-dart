// ignore_for_file: unused_element, unnecessary_cast


class SecurityGatewayApplicationEndpointMatcher {
  /// Required. Hostname of the application.
  final String hostname;
  /// Optional. Ports of the application.
  final List<int> ports;

  /// Creates a new [SecurityGatewayApplicationEndpointMatcher].
  /// [hostname] Required. Hostname of the application.
  /// [ports] Optional. Ports of the application.
  SecurityGatewayApplicationEndpointMatcher({
    required this.hostname,
    required this.ports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': hostname,
      'ports': ports,
    };
  }

  factory SecurityGatewayApplicationEndpointMatcher.fromMap(Map<String, dynamic> map) {
    return SecurityGatewayApplicationEndpointMatcher(
      hostname: map['hostname'] as String,
      ports: (map['ports'] as List).cast<int>(),
    );
  }
}

