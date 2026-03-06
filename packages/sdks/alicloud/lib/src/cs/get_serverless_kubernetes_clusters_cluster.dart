// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_serverless_kubernetes_clusters_cluster_connections.dart';

class GetServerlessKubernetesClustersCluster {
  /// Map of serverless cluster connection information. It contains several attributes to `Block Connections`.
  final pulumi.Input<GetServerlessKubernetesClustersClusterConnections> connections;
  /// Whether the cluster support delete protection.
  final pulumi.Input<bool> deletionProtection;
  /// Whether to create internet eip for API Server.
  final pulumi.Input<bool> endpointPublicAccessEnabled;
  /// The ID of the container cluster.
  final pulumi.Input<String> id;
  /// The name of the container cluster.
  final pulumi.Input<String> name;
  /// The ID of nat gateway used to launch kubernetes cluster.
  final pulumi.Input<String> natGatewayId;
  /// The ID of security group where the current cluster  is located.
  final pulumi.Input<String> securityGroupId;
  /// A map of tags assigned to the kubernetes cluster.
  final pulumi.Input<Map<String, String>> tags;
  /// The ID of VPC where the current cluster is located.
  final pulumi.Input<String> vpcId;
  /// The ID of vSwitch where the current cluster is located.
  final pulumi.Input<String> vswitchId;

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
  const GetServerlessKubernetesClustersCluster({
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
      'connections': pulumi.Input.mapInputValue<GetServerlessKubernetesClustersClusterConnections, Map<String, dynamic>>(connections, (value) => value.toMap()),
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
      connections: pulumi.Input.fromValue(GetServerlessKubernetesClustersClusterConnections.fromMap((map['connections']! as Map).cast<String, dynamic>())),
      deletionProtection: pulumi.Input.fromValue(map['deletionProtection'] as bool),
      endpointPublicAccessEnabled: pulumi.Input.fromValue(map['endpointPublicAccessEnabled'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      natGatewayId: pulumi.Input.fromValue(map['natGatewayId'] as String),
      securityGroupId: pulumi.Input.fromValue(map['securityGroupId'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
    );
  }
}

