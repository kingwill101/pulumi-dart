// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterVpcConfig {
  /// The cluster security group that was created by Amazon EKS for the cluster.
  final pulumi.Input<String> clusterSecurityGroupId;

  /// Indicates whether or not the Amazon EKS private API server endpoint is enabled.
  final pulumi.Input<bool> endpointPrivateAccess;

  /// Indicates whether or not the Amazon EKS public API server endpoint is enabled.
  final pulumi.Input<bool> endpointPublicAccess;

  /// List of CIDR blocks. Indicates which CIDR blocks can access the Amazon EKS public API server endpoint.
  final pulumi.Input<List<String>> publicAccessCidrs;

  /// List of security group IDs
  final pulumi.Input<List<String>> securityGroupIds;

  /// List of subnet IDs
  final pulumi.Input<List<String>> subnetIds;

  /// The VPC associated with your cluster.
  final pulumi.Input<String> vpcId;

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
      clusterSecurityGroupId: pulumi.Input.fromValue(
        map['clusterSecurityGroupId'] as String,
      ),
      endpointPrivateAccess: pulumi.Input.fromValue(
        map['endpointPrivateAccess'] as bool,
      ),
      endpointPublicAccess: pulumi.Input.fromValue(
        map['endpointPublicAccess'] as bool,
      ),
      publicAccessCidrs: pulumi.Input.fromValue(
        (map['publicAccessCidrs'] as List).cast<String>(),
      ),
      securityGroupIds: pulumi.Input.fromValue(
        (map['securityGroupIds'] as List).cast<String>(),
      ),
      subnetIds: pulumi.Input.fromValue(
        (map['subnetIds'] as List).cast<String>(),
      ),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}
