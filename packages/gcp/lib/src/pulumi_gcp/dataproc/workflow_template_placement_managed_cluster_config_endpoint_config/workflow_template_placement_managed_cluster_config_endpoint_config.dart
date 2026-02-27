// ignore_for_file: unused_element, unnecessary_cast

class WorkflowTemplatePlacementManagedClusterConfigEndpointConfig {
  /// If true, enable http access to specific ports on the cluster from external sources. Defaults to false.
  final bool? enableHttpPortAccess;

  /// Output only. The map of port descriptions to URLs. Will only be populated if enable_http_port_access is true.
  final Map<String, String>? httpPorts;

  WorkflowTemplatePlacementManagedClusterConfigEndpointConfig({
    this.enableHttpPortAccess,
    this.httpPorts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableHttpPortAccessValue = enableHttpPortAccess;
    if (enableHttpPortAccessValue != null) {
      map['enableHttpPortAccess'] = enableHttpPortAccessValue;
    }
    final httpPortsValue = httpPorts;
    if (httpPortsValue != null) {
      map['httpPorts'] = httpPortsValue;
    }
    return map;
  }

  factory WorkflowTemplatePlacementManagedClusterConfigEndpointConfig.fromMap(
      Map<String, dynamic> map) {
    return WorkflowTemplatePlacementManagedClusterConfigEndpointConfig(
      enableHttpPortAccess: map['enableHttpPortAccess'] == null
          ? null
          : map['enableHttpPortAccess'] as bool,
      httpPorts: map['httpPorts'] == null
          ? null
          : (map['httpPorts'] as Map).cast<String, String>(),
    );
  }
}
