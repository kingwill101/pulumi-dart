// ignore_for_file: unused_element, unnecessary_cast


/// Definition of VpcConfigResponse
class VpcConfigResponseResponse {
  /// <p>The cluster security group that was created by Amazon EKS for the cluster. Managed node groups use this security group for control-plane-to-data-plane communication.</p>
  final String? clusterSecurityGroupId;
  /// <p>This parameter indicates whether the Amazon EKS private API server endpoint is enabled. If the Amazon EKS private API server endpoint is enabled, Kubernetes API requests that originate from within your cluster's VPC use the private VPC endpoint instead of traversing the internet. If this value is disabled and you have nodes or Fargate pods in the cluster, then ensure that <code>publicAccessCidrs</code> includes the necessary CIDR blocks for communication with the nodes or Fargate pods. For more information, see <a href='https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html'>Amazon EKS cluster endpoint access control</a> in the <i> <i>Amazon EKS User Guide</i> </i>.</p>
  final bool? endpointPrivateAccess;
  /// <p>Whether the public API server endpoint is enabled.</p>
  final bool? endpointPublicAccess;
  /// <p>The CIDR blocks that are allowed access to your cluster's public Kubernetes API server endpoint.</p>
  final List<String>? publicAccessCidrs;
  /// <p>The security groups associated with the cross-account elastic network interfaces that are used to allow communication between your nodes and the Kubernetes control plane.</p>
  final List<String>? securityGroupIds;
  /// <p>The subnets associated with your cluster.</p>
  final List<String>? subnetIds;
  /// <p>The VPC associated with your cluster.</p>
  final String? vpcId;

  /// Creates a new [VpcConfigResponseResponse].
  /// [clusterSecurityGroupId] <p>The cluster security group that was created by Amazon EKS for the cluster. Managed node groups use this security group for control-plane-to-data-plane communication.</p>
  /// [endpointPrivateAccess] <p>This parameter indicates whether the Amazon EKS private API server endpoint is enabled. If the Amazon EKS private API server endpoint is enabled, Kubernetes API requests that originate from within your cluster's VPC use the private VPC endpoint instead of traversing the internet. If this value is disabled and you have nodes or Fargate pods in the cluster, then ensure that <code>publicAccessCidrs</code> includes the necessary CIDR blocks for communication with the nodes or Fargate pods. For more information, see <a href='https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html'>Amazon EKS cluster endpoint access control</a> in the <i> <i>Amazon EKS User Guide</i> </i>.</p>
  /// [endpointPublicAccess] <p>Whether the public API server endpoint is enabled.</p>
  /// [publicAccessCidrs] <p>The CIDR blocks that are allowed access to your cluster's public Kubernetes API server endpoint.</p>
  /// [securityGroupIds] <p>The security groups associated with the cross-account elastic network interfaces that are used to allow communication between your nodes and the Kubernetes control plane.</p>
  /// [subnetIds] <p>The subnets associated with your cluster.</p>
  /// [vpcId] <p>The VPC associated with your cluster.</p>
  VpcConfigResponseResponse({
    this.clusterSecurityGroupId,
    this.endpointPrivateAccess,
    this.endpointPublicAccess,
    this.publicAccessCidrs,
    this.securityGroupIds,
    this.subnetIds,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterSecurityGroupId': ?clusterSecurityGroupId,
      'endpointPrivateAccess': ?endpointPrivateAccess,
      'endpointPublicAccess': ?endpointPublicAccess,
      'publicAccessCidrs': ?publicAccessCidrs,
      'securityGroupIds': ?securityGroupIds,
      'subnetIds': ?subnetIds,
      'vpcId': ?vpcId,
    };
  }

  factory VpcConfigResponseResponse.fromMap(Map<String, dynamic> map) {
    return VpcConfigResponseResponse(
      clusterSecurityGroupId: map['clusterSecurityGroupId'] == null ? null : map['clusterSecurityGroupId'] as String,
      endpointPrivateAccess: map['endpointPrivateAccess'] == null ? null : map['endpointPrivateAccess'] as bool,
      endpointPublicAccess: map['endpointPublicAccess'] == null ? null : map['endpointPublicAccess'] as bool,
      publicAccessCidrs: map['publicAccessCidrs'] == null ? null : (map['publicAccessCidrs'] as List).cast<String>(),
      securityGroupIds: map['securityGroupIds'] == null ? null : (map['securityGroupIds'] as List).cast<String>(),
      subnetIds: map['subnetIds'] == null ? null : (map['subnetIds'] as List).cast<String>(),
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}

