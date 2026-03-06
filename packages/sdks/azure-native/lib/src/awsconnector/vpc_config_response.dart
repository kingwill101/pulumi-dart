// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of VpcConfig
class VpcConfigResponse {
  /// &lt;p&gt;The cluster security group that was created by Amazon EKS for the cluster. Managed node groups use this security group for control-plane-to-data-plane communication.&lt;/p&gt;
  final pulumi.Input<String>? clusterSecurityGroupId;
  /// &lt;p&gt;This parameter indicates whether the Amazon EKS private API server endpoint is enabled. If the Amazon EKS private API server endpoint is enabled, Kubernetes API requests that originate from within your cluster's VPC use the private VPC endpoint instead of traversing the internet. If this value is disabled and you have nodes or Fargate pods in the cluster, then ensure that &lt;code&gt;publicAccessCidrs&lt;/code&gt; includes the necessary CIDR blocks for communication with the nodes or Fargate pods. For more information, see &lt;a href='https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html'&gt;Amazon EKS cluster endpoint access control&lt;/a&gt; in the &lt;i&gt; &lt;i&gt;Amazon EKS User Guide&lt;/i&gt; &lt;/i&gt;.&lt;/p&gt;
  final pulumi.Input<bool>? endpointPrivateAccess;
  /// &lt;p&gt;Whether the public API server endpoint is enabled.&lt;/p&gt;
  final pulumi.Input<bool>? endpointPublicAccess;
  /// Allows outbound IPv6 traffic on VPC functions that are connected to dual-stack subnets.
  final pulumi.Input<bool>? ipv6AllowedForDualStack;
  /// &lt;p&gt;The CIDR blocks that are allowed access to your cluster's public Kubernetes API server endpoint.&lt;/p&gt;
  final pulumi.Input<List<String>>? publicAccessCidrs;
  /// A list of VPC security group IDs.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// A list of VPC subnet IDs.
  final pulumi.Input<List<String>>? subnetIds;
  /// &lt;p&gt;A list of one or more subnet IDs in your Amazon VPC.&lt;/p&gt;
  final pulumi.Input<List<String>>? subnets;
  /// &lt;p&gt;The VPC associated with your cluster.&lt;/p&gt;
  final pulumi.Input<String>? vpcId;

  /// Creates a new [VpcConfigResponse].
  /// [clusterSecurityGroupId] &lt;p&gt;The cluster security group that was created by Amazon EKS for the cluster. Managed node groups use this security group for control-plane-to-data-plane communication.&lt;/p&gt;
  /// [endpointPrivateAccess] &lt;p&gt;This parameter indicates whether the Amazon EKS private API server endpoint is enabled. If the Amazon EKS private API server endpoint is enabled, Kubernetes API requests that originate from within your cluster's VPC use the private VPC endpoint instead of traversing the internet. If this value is disabled and you have nodes or Fargate pods in the cluster, then ensure that &lt;code&gt;publicAccessCidrs&lt;/code&gt; includes the necessary CIDR blocks for communication with the nodes or Fargate pods. For more information, see &lt;a href='https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html'&gt;Amazon EKS cluster endpoint access control&lt;/a&gt; in the &lt;i&gt; &lt;i&gt;Amazon EKS User Guide&lt;/i&gt; &lt;/i&gt;.&lt;/p&gt;
  /// [endpointPublicAccess] &lt;p&gt;Whether the public API server endpoint is enabled.&lt;/p&gt;
  /// [ipv6AllowedForDualStack] Allows outbound IPv6 traffic on VPC functions that are connected to dual-stack subnets.
  /// [publicAccessCidrs] &lt;p&gt;The CIDR blocks that are allowed access to your cluster's public Kubernetes API server endpoint.&lt;/p&gt;
  /// [securityGroupIds] A list of VPC security group IDs.
  /// [subnetIds] A list of VPC subnet IDs.
  /// [subnets] &lt;p&gt;A list of one or more subnet IDs in your Amazon VPC.&lt;/p&gt;
  /// [vpcId] &lt;p&gt;The VPC associated with your cluster.&lt;/p&gt;
  const VpcConfigResponse({
    this.clusterSecurityGroupId,
    this.endpointPrivateAccess,
    this.endpointPublicAccess,
    this.ipv6AllowedForDualStack,
    this.publicAccessCidrs,
    this.securityGroupIds,
    this.subnetIds,
    this.subnets,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterSecurityGroupId': ?clusterSecurityGroupId,
      'endpointPrivateAccess': ?endpointPrivateAccess,
      'endpointPublicAccess': ?endpointPublicAccess,
      'ipv6AllowedForDualStack': ?ipv6AllowedForDualStack,
      'publicAccessCidrs': ?publicAccessCidrs,
      'securityGroupIds': ?securityGroupIds,
      'subnetIds': ?subnetIds,
      'subnets': ?subnets,
      'vpcId': ?vpcId,
    };
  }

  factory VpcConfigResponse.fromMap(Map<String, dynamic> map) {
    return VpcConfigResponse(
      clusterSecurityGroupId: (() { final guardedValue = map['clusterSecurityGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointPrivateAccess: (() { final guardedValue = map['endpointPrivateAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endpointPublicAccess: (() { final guardedValue = map['endpointPublicAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipv6AllowedForDualStack: (() { final guardedValue = map['ipv6AllowedForDualStack']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      publicAccessCidrs: (() { final guardedValue = map['publicAccessCidrs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnets: (() { final guardedValue = map['subnets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

