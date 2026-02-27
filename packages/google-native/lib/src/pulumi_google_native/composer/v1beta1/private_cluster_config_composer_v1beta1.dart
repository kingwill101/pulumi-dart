// ignore_for_file: unused_element, unnecessary_cast

/// Configuration options for the private GKE cluster in a Cloud Composer environment.
class PrivateClusterConfigComposerV1beta1 {
  /// Optional. If `true`, access to the public endpoint of the GKE cluster is denied.
  final bool? enablePrivateEndpoint;

  /// Optional. The CIDR block from which IPv4 range for GKE master will be reserved. If left blank, the default value of '172.16.0.0/23' is used.
  final String? masterIpv4CidrBlock;

  PrivateClusterConfigComposerV1beta1({
    this.enablePrivateEndpoint,
    this.masterIpv4CidrBlock,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enablePrivateEndpointValue = enablePrivateEndpoint;
    if (enablePrivateEndpointValue != null) {
      map['enablePrivateEndpoint'] = enablePrivateEndpointValue;
    }
    final masterIpv4CidrBlockValue = masterIpv4CidrBlock;
    if (masterIpv4CidrBlockValue != null) {
      map['masterIpv4CidrBlock'] = masterIpv4CidrBlockValue;
    }
    return map;
  }

  factory PrivateClusterConfigComposerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return PrivateClusterConfigComposerV1beta1(
      enablePrivateEndpoint: map['enablePrivateEndpoint'] == null
          ? null
          : map['enablePrivateEndpoint'] as bool,
      masterIpv4CidrBlock: map['masterIpv4CidrBlock'] == null
          ? null
          : map['masterIpv4CidrBlock'] as String,
    );
  }
}
