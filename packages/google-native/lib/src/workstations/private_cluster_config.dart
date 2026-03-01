// ignore_for_file: unused_element, unnecessary_cast

/// Configuration options for private workstation clusters.
class PrivateClusterConfig {
  /// Optional. Additional projects that are allowed to attach to the workstation cluster's service attachment. By default, the workstation cluster's project and the VPC host project (if different) are allowed.
  final List<String>? allowedProjects;

  /// Immutable. Whether Workstations endpoint is private.
  final bool? enablePrivateEndpoint;

  /// Creates a new [PrivateClusterConfig].
  /// [allowedProjects] Optional. Additional projects that are allowed to attach to the workstation cluster's service attachment. By default, the workstation cluster's project and the VPC host project (if different) are allowed.
  /// [enablePrivateEndpoint] Immutable. Whether Workstations endpoint is private.
  PrivateClusterConfig({this.allowedProjects, this.enablePrivateEndpoint});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedProjects': ?allowedProjects,
      'enablePrivateEndpoint': ?enablePrivateEndpoint,
    };
  }

  factory PrivateClusterConfig.fromMap(Map<String, dynamic> map) {
    return PrivateClusterConfig(
      allowedProjects: map['allowedProjects'] == null
          ? null
          : (map['allowedProjects'] as List).cast<String>(),
      enablePrivateEndpoint: map['enablePrivateEndpoint'] == null
          ? null
          : map['enablePrivateEndpoint'] as bool,
    );
  }
}
