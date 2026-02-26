// ignore_for_file: unused_element, unnecessary_cast

/// Configuration options for the private GKE cluster in a Cloud Composer environment.
class PrivateClusterConfigResponse {
  /// Optional. If `true`, access to the public endpoint of the GKE cluster is denied.
  final bool enablePrivateEndpoint;

  /// Optional. The CIDR block from which IPv4 range for GKE master will be reserved. If left blank, the default value of '172.16.0.0/23' is used.
  final String masterIpv4CidrBlock;

  /// The IP range in CIDR notation to use for the hosted master network. This range is used for assigning internal IP addresses to the GKE cluster master or set of masters and to the internal load balancer virtual IP. This range must not overlap with any other ranges in use within the cluster's network.
  final String masterIpv4ReservedRange;

  PrivateClusterConfigResponse({
    required this.enablePrivateEndpoint,
    required this.masterIpv4CidrBlock,
    required this.masterIpv4ReservedRange,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enablePrivateEndpoint'] = enablePrivateEndpoint;
    map['masterIpv4CidrBlock'] = masterIpv4CidrBlock;
    map['masterIpv4ReservedRange'] = masterIpv4ReservedRange;
    return map;
  }

  factory PrivateClusterConfigResponse.fromMap(Map<String, dynamic> map) {
    return PrivateClusterConfigResponse(
      enablePrivateEndpoint: map['enablePrivateEndpoint'] as bool,
      masterIpv4CidrBlock: map['masterIpv4CidrBlock'] as String,
      masterIpv4ReservedRange: map['masterIpv4ReservedRange'] as String,
    );
  }
}
