// ignore_for_file: unused_element, unnecessary_cast

class GetClusterVpcConfig {
  /// The cluster security group that was created by Amazon EKS for the cluster.
  final String clusterSecurityGroupId;

  /// Indicates whether or not the Amazon EKS private API server endpoint is enabled.
  final bool endpointPrivateAccess;

  /// Indicates whether or not the Amazon EKS public API server endpoint is enabled.
  final bool endpointPublicAccess;

  /// List of CIDR blocks. Indicates which CIDR blocks can access the Amazon EKS public API server endpoint.
  final List<String> publicAccessCidrs;

  /// List of security group IDs
  final List<String> securityGroupIds;

  /// List of subnet IDs
  final List<String> subnetIds;

  /// The VPC associated with your cluster.
  final String vpcId;

  /// Creates a new [GetClusterVpcConfig].
  /// [clusterSecurityGroupId] The cluster security group that was created by Amazon EKS for the cluster.
  /// [endpointPrivateAccess] Indicates whether or not the Amazon EKS private API server endpoint is enabled.
  /// [endpointPublicAccess] Indicates whether or not the Amazon EKS public API server endpoint is enabled.
  /// [publicAccessCidrs] List of CIDR blocks. Indicates which CIDR blocks can access the Amazon EKS public API server endpoint.
  /// [securityGroupIds] List of security group IDs
  /// [subnetIds] List of subnet IDs
  /// [vpcId] The VPC associated with your cluster.
  GetClusterVpcConfig({
    required this.clusterSecurityGroupId,
    required this.endpointPrivateAccess,
    required this.endpointPublicAccess,
    required this.publicAccessCidrs,
    required this.securityGroupIds,
    required this.subnetIds,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterSecurityGroupId': clusterSecurityGroupId,
      'endpointPrivateAccess': endpointPrivateAccess,
      'endpointPublicAccess': endpointPublicAccess,
      'publicAccessCidrs': publicAccessCidrs,
      'securityGroupIds': securityGroupIds,
      'subnetIds': subnetIds,
      'vpcId': vpcId,
    };
  }

  factory GetClusterVpcConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterVpcConfig(
      clusterSecurityGroupId: map['clusterSecurityGroupId'] as String,
      endpointPrivateAccess: map['endpointPrivateAccess'] as bool,
      endpointPublicAccess: map['endpointPublicAccess'] as bool,
      publicAccessCidrs: (map['publicAccessCidrs'] as List).cast<String>(),
      securityGroupIds: (map['securityGroupIds'] as List).cast<String>(),
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      vpcId: map['vpcId'] as String,
    );
  }
}
