// ignore_for_file: unused_element, unnecessary_cast

class SecurityGatewayApplicationEndpointMatcher {
  /// Required. Hostname of the application.
  final String hostname;

  /// Optional. Ports of the application.
  final List<int> ports;

  SecurityGatewayApplicationEndpointMatcher({
    required this.hostname,
    required this.ports,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hostname'] = hostname;
    map['ports'] = ports;
    return map;
  }

  factory SecurityGatewayApplicationEndpointMatcher.fromMap(
      Map<String, dynamic> map) {
    return SecurityGatewayApplicationEndpointMatcher(
      hostname: map['hostname'] as String,
      ports: (map['ports'] as List).cast<int>(),
    );
  }
}
