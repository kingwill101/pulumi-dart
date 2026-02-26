// ignore_for_file: unused_element, unnecessary_cast

/// Endpoint config for this cluster
class EndpointConfigResponse {
  /// Optional. If true, enable http access to specific ports on the cluster from external sources. Defaults to false.
  final bool enableHttpPortAccess;

  /// The map of port descriptions to URLs. Will only be populated if enable_http_port_access is true.
  final Map<String, String> httpPorts;

  EndpointConfigResponse({
    required this.enableHttpPortAccess,
    required this.httpPorts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableHttpPortAccess'] = enableHttpPortAccess;
    map['httpPorts'] = httpPorts;
    return map;
  }

  factory EndpointConfigResponse.fromMap(Map<String, dynamic> map) {
    return EndpointConfigResponse(
      enableHttpPortAccess: map['enableHttpPortAccess'] as bool,
      httpPorts: (map['httpPorts'] as Map).cast<String, String>(),
    );
  }
}
