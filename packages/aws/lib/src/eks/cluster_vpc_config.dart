// ignore_for_file: unused_element, unnecessary_cast

class ClusterVpcConfig {
  /// Cluster security group that is created by Amazon EKS for the cluster. Managed node groups use this security group for control-plane-to-data-plane communication.
  final String? clusterSecurityGroupId;

  /// Whether the Amazon EKS private API server endpoint is enabled. Default is `false`.
  final bool? endpointPrivateAccess;

  /// Whether the Amazon EKS public API server endpoint is enabled. Default is `true`.
  final bool? endpointPublicAccess;

  /// List of CIDR blocks. Indicates which CIDR blocks can access the Amazon EKS public API server endpoint when enabled. EKS defaults this to a list with `0.0.0.0/0`. The provider will only perform drift detection of its value when present in a configuration.
  final List<String>? publicAccessCidrs;

  /// List of security group IDs for the cross-account elastic network interfaces that Amazon EKS creates to use to allow communication between your worker nodes and the Kubernetes control plane.
  final List<String>? securityGroupIds;

  /// List of subnet IDs. Must be in at least two different availability zones. Amazon EKS creates cross-account elastic network interfaces in these subnets to allow communication between your worker nodes and the Kubernetes control plane.
  final List<String> subnetIds;

  /// ID of the VPC associated with your cluster.
  final String? vpcId;

  /// Creates a new [ClusterVpcConfig].
  /// [clusterSecurityGroupId] Cluster security group that is created by Amazon EKS for the cluster. Managed node groups use this security group for control-plane-to-data-plane communication.
  /// [endpointPrivateAccess] Whether the Amazon EKS private API server endpoint is enabled. Default is `false`.
  /// [endpointPublicAccess] Whether the Amazon EKS public API server endpoint is enabled. Default is `true`.
  /// [publicAccessCidrs] List of CIDR blocks. Indicates which CIDR blocks can access the Amazon EKS public API server endpoint when enabled. EKS defaults this to a list with `0.0.0.0/0`. The provider will only perform drift detection of its value when present in a configuration.
  /// [securityGroupIds] List of security group IDs for the cross-account elastic network interfaces that Amazon EKS creates to use to allow communication between your worker nodes and the Kubernetes control plane.
  /// [subnetIds] List of subnet IDs. Must be in at least two different availability zones. Amazon EKS creates cross-account elastic network interfaces in these subnets to allow communication between your worker nodes and the Kubernetes control plane.
  /// [vpcId] ID of the VPC associated with your cluster.
  ClusterVpcConfig({
    this.clusterSecurityGroupId,
    this.endpointPrivateAccess,
    this.endpointPublicAccess,
    this.publicAccessCidrs,
    this.securityGroupIds,
    required this.subnetIds,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clusterSecurityGroupIdValue = clusterSecurityGroupId;
    if (clusterSecurityGroupIdValue != null) {
      map['clusterSecurityGroupId'] = clusterSecurityGroupIdValue;
    }
    final endpointPrivateAccessValue = endpointPrivateAccess;
    if (endpointPrivateAccessValue != null) {
      map['endpointPrivateAccess'] = endpointPrivateAccessValue;
    }
    final endpointPublicAccessValue = endpointPublicAccess;
    if (endpointPublicAccessValue != null) {
      map['endpointPublicAccess'] = endpointPublicAccessValue;
    }
    final publicAccessCidrsValue = publicAccessCidrs;
    if (publicAccessCidrsValue != null) {
      map['publicAccessCidrs'] = publicAccessCidrsValue;
    }
    final securityGroupIdsValue = securityGroupIds;
    if (securityGroupIdsValue != null) {
      map['securityGroupIds'] = securityGroupIdsValue;
    }
    map['subnetIds'] = subnetIds;
    final vpcIdValue = vpcId;
    if (vpcIdValue != null) {
      map['vpcId'] = vpcIdValue;
    }
    return map;
  }

  factory ClusterVpcConfig.fromMap(Map<String, dynamic> map) {
    return ClusterVpcConfig(
      clusterSecurityGroupId: map['clusterSecurityGroupId'] == null
          ? null
          : map['clusterSecurityGroupId'] as String,
      endpointPrivateAccess: map['endpointPrivateAccess'] == null
          ? null
          : map['endpointPrivateAccess'] as bool,
      endpointPublicAccess: map['endpointPublicAccess'] == null
          ? null
          : map['endpointPublicAccess'] as bool,
      publicAccessCidrs: map['publicAccessCidrs'] == null
          ? null
          : (map['publicAccessCidrs'] as List).cast<String>(),
      securityGroupIds: map['securityGroupIds'] == null
          ? null
          : (map['securityGroupIds'] as List).cast<String>(),
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}
