// ignore_for_file: unused_element, unnecessary_cast

/// Configuration options for private workstation clusters.
class PrivateClusterConfigResponseWorkstationsV1beta {
  /// Optional. Additional projects that are allowed to attach to the workstation cluster's service attachment. By default, the workstation cluster's project and the VPC host project (if different) are allowed.
  final List<String> allowedProjects;

  /// Hostname for the workstation cluster. This field will be populated only when private endpoint is enabled. To access workstations in the workstation cluster, create a new DNS zone mapping this domain name to an internal IP address and a forwarding rule mapping that address to the service attachment.
  final String clusterHostname;

  /// Immutable. Whether Workstations endpoint is private.
  final bool enablePrivateEndpoint;

  /// Service attachment URI for the workstation cluster. The service attachemnt is created when private endpoint is enabled. To access workstations in the workstation cluster, configure access to the managed service using [Private Service Connect](https://cloud.google.com/vpc/docs/configure-private-service-connect-services).
  final String serviceAttachmentUri;

  /// Creates a new [PrivateClusterConfigResponseWorkstationsV1beta].
  /// [allowedProjects] Optional. Additional projects that are allowed to attach to the workstation cluster's service attachment. By default, the workstation cluster's project and the VPC host project (if different) are allowed.
  /// [clusterHostname] Hostname for the workstation cluster. This field will be populated only when private endpoint is enabled. To access workstations in the workstation cluster, create a new DNS zone mapping this domain name to an internal IP address and a forwarding rule mapping that address to the service attachment.
  /// [enablePrivateEndpoint] Immutable. Whether Workstations endpoint is private.
  /// [serviceAttachmentUri] Service attachment URI for the workstation cluster. The service attachemnt is created when private endpoint is enabled. To access workstations in the workstation cluster, configure access to the managed service using [Private Service Connect](https://cloud.google.com/vpc/docs/configure-private-service-connect-services).
  PrivateClusterConfigResponseWorkstationsV1beta({
    required this.allowedProjects,
    required this.clusterHostname,
    required this.enablePrivateEndpoint,
    required this.serviceAttachmentUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowedProjects'] = allowedProjects;
    map['clusterHostname'] = clusterHostname;
    map['enablePrivateEndpoint'] = enablePrivateEndpoint;
    map['serviceAttachmentUri'] = serviceAttachmentUri;
    return map;
  }

  factory PrivateClusterConfigResponseWorkstationsV1beta.fromMap(
      Map<String, dynamic> map) {
    return PrivateClusterConfigResponseWorkstationsV1beta(
      allowedProjects: (map['allowedProjects'] as List).cast<String>(),
      clusterHostname: map['clusterHostname'] as String,
      enablePrivateEndpoint: map['enablePrivateEndpoint'] as bool,
      serviceAttachmentUri: map['serviceAttachmentUri'] as String,
    );
  }
}
