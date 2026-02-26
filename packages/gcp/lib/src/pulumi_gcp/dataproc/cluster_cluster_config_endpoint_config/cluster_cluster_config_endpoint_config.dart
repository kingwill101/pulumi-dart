// ignore_for_file: unused_element, unnecessary_cast

class ClusterClusterConfigEndpointConfig {
  /// The flag to enable http access to specific ports
  /// on the cluster from external sources (aka Component Gateway). Defaults to false.
  final bool enableHttpPortAccess;

  /// The map of port descriptions to URLs. Will only be populated if
  /// <span pulumi-lang-nodejs="`enableHttpPortAccess`" pulumi-lang-dotnet="`EnableHttpPortAccess`" pulumi-lang-go="`enableHttpPortAccess`" pulumi-lang-python="`enable_http_port_access`" pulumi-lang-yaml="`enableHttpPortAccess`" pulumi-lang-java="`enableHttpPortAccess`">`enable_http_port_access`</span> is true.
  final Map<String, String>? httpPorts;

  ClusterClusterConfigEndpointConfig({
    required this.enableHttpPortAccess,
    this.httpPorts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableHttpPortAccess'] = enableHttpPortAccess;
    final httpPortsValue = httpPorts;
    if (httpPortsValue != null) {
      map['httpPorts'] = httpPortsValue;
    }
    return map;
  }

  factory ClusterClusterConfigEndpointConfig.fromMap(Map<String, dynamic> map) {
    return ClusterClusterConfigEndpointConfig(
      enableHttpPortAccess: map['enableHttpPortAccess'] as bool,
      httpPorts: map['httpPorts'] == null
          ? null
          : (map['httpPorts'] as Map).cast<String, String>(),
    );
  }
}
