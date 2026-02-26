// ignore_for_file: unused_element, unnecessary_cast

/// Configuration options for private workstation clusters.
class PrivateClusterConfig6 {
  /// Optional. Additional projects that are allowed to attach to the workstation cluster's service attachment. By default, the workstation cluster's project and the VPC host project (if different) are allowed.
  final List<String>? allowedProjects;

  /// Immutable. Whether Workstations endpoint is private.
  final bool? enablePrivateEndpoint;

  PrivateClusterConfig6({
    this.allowedProjects,
    this.enablePrivateEndpoint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedProjectsValue = allowedProjects;
    if (allowedProjectsValue != null) {
      map['allowedProjects'] = allowedProjectsValue;
    }
    final enablePrivateEndpointValue = enablePrivateEndpoint;
    if (enablePrivateEndpointValue != null) {
      map['enablePrivateEndpoint'] = enablePrivateEndpointValue;
    }
    return map;
  }

  factory PrivateClusterConfig6.fromMap(Map<String, dynamic> map) {
    return PrivateClusterConfig6(
      allowedProjects: map['allowedProjects'] == null
          ? null
          : (map['allowedProjects'] as List).cast<String>(),
      enablePrivateEndpoint: map['enablePrivateEndpoint'] == null
          ? null
          : map['enablePrivateEndpoint'] as bool,
    );
  }
}
