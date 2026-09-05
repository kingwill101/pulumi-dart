// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterVpcConfig {
  /// Cluster security group that is created by Amazon EKS for the cluster. Managed node groups use this security group for control-plane-to-data-plane communication.
  final pulumi.Input<String?>? clusterSecurityGroupId;
  /// Egress mode for the EKS control plane. Valid values are `AWS_MANAGED` and `CUSTOMER_ROUTED`. Defaults to `AWS_MANAGED`. Changing from `CUSTOMER_ROUTED` back to `AWS_MANAGED` forces a new resource.
  final pulumi.Input<String?>? controlPlaneEgressMode;
  /// Whether the Amazon EKS private API server endpoint is enabled. Default is `false`.
  final pulumi.Input<bool?>? endpointPrivateAccess;
  /// Whether the Amazon EKS public API server endpoint is enabled. Default is `true`.
  final pulumi.Input<bool?>? endpointPublicAccess;
  /// List of CIDR blocks. Indicates which CIDR blocks can access the Amazon EKS public API server endpoint when enabled. EKS defaults this to a list with `0.0.0.0/0`. The provider will only perform drift detection of its value when present in a configuration.
  final pulumi.Input<List<String>?>? publicAccessCidrs;
  /// List of security group IDs for the cross-account elastic network interfaces that Amazon EKS creates to use to allow communication between your worker nodes and the Kubernetes control plane.
  final pulumi.Input<List<String>?>? securityGroupIds;
  /// List of subnet IDs. Must be in at least two different availability zones. Amazon EKS creates cross-account elastic network interfaces in these subnets to allow communication between your worker nodes and the Kubernetes control plane.
  final pulumi.Input<List<String>> subnetIds;
  /// ID of the VPC associated with your cluster.
  final pulumi.Input<String?>? vpcId;

  /// Creates a new [ClusterVpcConfig].
  /// [clusterSecurityGroupId] Cluster security group that is created by Amazon EKS for the cluster. Managed node groups use this security group for control-plane-to-data-plane communication.
  /// [controlPlaneEgressMode] Egress mode for the EKS control plane. Valid values are `AWS_MANAGED` and `CUSTOMER_ROUTED`. Defaults to `AWS_MANAGED`. Changing from `CUSTOMER_ROUTED` back to `AWS_MANAGED` forces a new resource.
  /// [endpointPrivateAccess] Whether the Amazon EKS private API server endpoint is enabled. Default is `false`.
  /// [endpointPublicAccess] Whether the Amazon EKS public API server endpoint is enabled. Default is `true`.
  /// [publicAccessCidrs] List of CIDR blocks. Indicates which CIDR blocks can access the Amazon EKS public API server endpoint when enabled. EKS defaults this to a list with `0.0.0.0/0`. The provider will only perform drift detection of its value when present in a configuration.
  /// [securityGroupIds] List of security group IDs for the cross-account elastic network interfaces that Amazon EKS creates to use to allow communication between your worker nodes and the Kubernetes control plane.
  /// [subnetIds] List of subnet IDs. Must be in at least two different availability zones. Amazon EKS creates cross-account elastic network interfaces in these subnets to allow communication between your worker nodes and the Kubernetes control plane.
  /// [vpcId] ID of the VPC associated with your cluster.
  const ClusterVpcConfig({
    this.clusterSecurityGroupId,
    this.controlPlaneEgressMode,
    this.endpointPrivateAccess,
    this.endpointPublicAccess,
    this.publicAccessCidrs,
    this.securityGroupIds,
    required this.subnetIds,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterSecurityGroupId': ?clusterSecurityGroupId,
      'controlPlaneEgressMode': ?controlPlaneEgressMode,
      'endpointPrivateAccess': ?endpointPrivateAccess,
      'endpointPublicAccess': ?endpointPublicAccess,
      'publicAccessCidrs': ?publicAccessCidrs,
      'securityGroupIds': ?securityGroupIds,
      'subnetIds': subnetIds,
      'vpcId': ?vpcId,
    };
  }

  factory ClusterVpcConfig.fromMap(Map<String, dynamic> map) {
    return ClusterVpcConfig(
      clusterSecurityGroupId: (() { final guardedValue = map['clusterSecurityGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      controlPlaneEgressMode: (() { final guardedValue = map['controlPlaneEgressMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointPrivateAccess: (() { final guardedValue = map['endpointPrivateAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endpointPublicAccess: (() { final guardedValue = map['endpointPublicAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      publicAccessCidrs: (() { final guardedValue = map['publicAccessCidrs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnetIds: pulumi.Input.fromValue((map['subnetIds'] as List).cast<String>()),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
