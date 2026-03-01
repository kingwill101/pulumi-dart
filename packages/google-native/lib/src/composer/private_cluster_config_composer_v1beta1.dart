// ignore_for_file: unused_element, unnecessary_cast

/// Configuration options for the private GKE cluster in a Cloud Composer environment.
class PrivateClusterConfigComposerV1beta1 {
  /// Optional. If `true`, access to the public endpoint of the GKE cluster is denied.
  final bool? enablePrivateEndpoint;

  /// Optional. The CIDR block from which IPv4 range for GKE master will be reserved. If left blank, the default value of '172.16.0.0/23' is used.
  final String? masterIpv4CidrBlock;

  /// Creates a new [PrivateClusterConfigComposerV1beta1].
  /// [enablePrivateEndpoint] Optional. If `true`, access to the public endpoint of the GKE cluster is denied.
  /// [masterIpv4CidrBlock] Optional. The CIDR block from which IPv4 range for GKE master will be reserved. If left blank, the default value of '172.16.0.0/23' is used.
  PrivateClusterConfigComposerV1beta1({
    this.enablePrivateEndpoint,
    this.masterIpv4CidrBlock,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enablePrivateEndpoint': ?enablePrivateEndpoint,
      'masterIpv4CidrBlock': ?masterIpv4CidrBlock,
    };
  }

  factory PrivateClusterConfigComposerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
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
