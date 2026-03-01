// ignore_for_file: unused_element, unnecessary_cast

class ClusterClusterConfigEndpointConfig {
  /// The flag to enable http access to specific ports
  /// on the cluster from external sources (aka Component Gateway). Defaults to false.
  final bool enableHttpPortAccess;

  /// The map of port descriptions to URLs. Will only be populated if
  /// `enable_http_port_access` is true.
  final Map<String, String>? httpPorts;

  /// Creates a new [ClusterClusterConfigEndpointConfig].
  /// [enableHttpPortAccess] The flag to enable http access to specific ports
  /// [httpPorts] The map of port descriptions to URLs. Will only be populated if
  ClusterClusterConfigEndpointConfig({
    required this.enableHttpPortAccess,
    this.httpPorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableHttpPortAccess': enableHttpPortAccess,
      'httpPorts': ?httpPorts,
    };
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
