// ignore_for_file: unused_element, unnecessary_cast

import 'get_serverless_kubernetes_clusters_cluster_connections.dart';

class GetServerlessKubernetesClustersCluster {
  /// Map of serverless cluster connection information. It contains several attributes to `Block Connections`.
  final GetServerlessKubernetesClustersClusterConnections connections;
  /// Whether the cluster support delete protection.
  final bool deletionProtection;
  /// Whether to create internet eip for API Server.
  final bool endpointPublicAccessEnabled;
  /// The ID of the container cluster.
  final String id;
  /// The name of the container cluster.
  final String name;
  /// The ID of nat gateway used to launch kubernetes cluster.
  final String natGatewayId;
  /// The ID of security group where the current cluster  is located.
  final String securityGroupId;
  /// A map of tags assigned to the kubernetes cluster.
  final Map<String, String> tags;
  /// The ID of VPC where the current cluster is located.
  final String vpcId;
  /// The ID of vSwitch where the current cluster is located.
  final String vswitchId;

  /// Creates a new [GetServerlessKubernetesClustersCluster].
  /// [connections] Map of serverless cluster connection information. It contains several attributes to `Block Connections`.
  /// [deletionProtection] Whether the cluster support delete protection.
  /// [endpointPublicAccessEnabled] Whether to create internet eip for API Server.
  /// [id] The ID of the container cluster.
  /// [name] The name of the container cluster.
  /// [natGatewayId] The ID of nat gateway used to launch kubernetes cluster.
  /// [securityGroupId] The ID of security group where the current cluster  is located.
  /// [tags] A map of tags assigned to the kubernetes cluster.
  /// [vpcId] The ID of VPC where the current cluster is located.
  /// [vswitchId] The ID of vSwitch where the current cluster is located.
  GetServerlessKubernetesClustersCluster({
    required this.connections,
    required this.deletionProtection,
    required this.endpointPublicAccessEnabled,
    required this.id,
    required this.name,
    required this.natGatewayId,
    required this.securityGroupId,
    required this.tags,
    required this.vpcId,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connections': connections.toMap(),
      'deletionProtection': deletionProtection,
      'endpointPublicAccessEnabled': endpointPublicAccessEnabled,
      'id': id,
      'name': name,
      'natGatewayId': natGatewayId,
      'securityGroupId': securityGroupId,
      'tags': tags,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
    };
  }

  factory GetServerlessKubernetesClustersCluster.fromMap(Map<String, dynamic> map) {
    return GetServerlessKubernetesClustersCluster(
      connections: GetServerlessKubernetesClustersClusterConnections.fromMap((map['connections'] as Map).cast<String, dynamic>()),
      deletionProtection: map['deletionProtection'] as bool,
      endpointPublicAccessEnabled: map['endpointPublicAccessEnabled'] as bool,
      id: map['id'] as String,
      name: map['name'] as String,
      natGatewayId: map['natGatewayId'] as String,
      securityGroupId: map['securityGroupId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] as String,
      vswitchId: map['vswitchId'] as String,
    );
  }
}

