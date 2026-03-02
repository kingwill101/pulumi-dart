// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_edge_kubernetes_clusters_cluster_connections.dart';
import 'get_edge_kubernetes_clusters_cluster_worker_node.dart';

class GetEdgeKubernetesClustersCluster {
  /// The ID of availability zone.
  final pulumi.Input<String> availabilityZone;
  /// Map of kubernetes cluster connection information. It contains several attributes to `Block Connections`.
  final pulumi.Input<GetEdgeKubernetesClustersClusterConnections> connections;
  /// ID of the node.
  final pulumi.Input<String> id;
  /// Node name.
  final pulumi.Input<String> name;
  /// The ID of nat gateway used to launch kubernetes cluster.
  final pulumi.Input<String> natGatewayId;
  /// The ID of security group where the current cluster worker node is located.
  final pulumi.Input<String> securityGroupId;
  /// The ID of VPC where the current cluster is located.
  final pulumi.Input<String> vpcId;
  /// List of cluster worker nodes. It contains several attributes to `Block Nodes`.
  final pulumi.Input<List<GetEdgeKubernetesClustersClusterWorkerNode>> workerNodes;

  /// Creates a new [GetEdgeKubernetesClustersCluster].
  /// [availabilityZone] The ID of availability zone.
  /// [connections] Map of kubernetes cluster connection information. It contains several attributes to `Block Connections`.
  /// [id] ID of the node.
  /// [name] Node name.
  /// [natGatewayId] The ID of nat gateway used to launch kubernetes cluster.
  /// [securityGroupId] The ID of security group where the current cluster worker node is located.
  /// [vpcId] The ID of VPC where the current cluster is located.
  /// [workerNodes] List of cluster worker nodes. It contains several attributes to `Block Nodes`.
  GetEdgeKubernetesClustersCluster({
    required this.availabilityZone,
    required this.connections,
    required this.id,
    required this.name,
    required this.natGatewayId,
    required this.securityGroupId,
    required this.vpcId,
    required this.workerNodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': availabilityZone,
      'connections': pulumi.Input.mapInputValue<GetEdgeKubernetesClustersClusterConnections, Map<String, dynamic>>(connections, (value) => value.toMap()),
      'id': id,
      'name': name,
      'natGatewayId': natGatewayId,
      'securityGroupId': securityGroupId,
      'vpcId': vpcId,
      'workerNodes': pulumi.Input.mapInputValue<List<GetEdgeKubernetesClustersClusterWorkerNode>, List<Map<String, dynamic>>>(workerNodes, (value) => pulumi.Input.encodeList<GetEdgeKubernetesClustersClusterWorkerNode, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetEdgeKubernetesClustersCluster.fromMap(Map<String, dynamic> map) {
    return GetEdgeKubernetesClustersCluster(
      availabilityZone: (map['availabilityZone'] as String).input(),
      connections: (GetEdgeKubernetesClustersClusterConnections.fromMap((map['connections'] as Map).cast<String, dynamic>())).input(),
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      natGatewayId: (map['natGatewayId'] as String).input(),
      securityGroupId: (map['securityGroupId'] as String).input(),
      vpcId: (map['vpcId'] as String).input(),
      workerNodes: (pulumi.Input.decodeList<GetEdgeKubernetesClustersClusterWorkerNode>(map['workerNodes'], (value) => GetEdgeKubernetesClustersClusterWorkerNode.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

