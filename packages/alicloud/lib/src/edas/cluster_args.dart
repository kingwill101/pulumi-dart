// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edas_cluster_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_edas_cluster_cluster_args_doc}
class ClusterArgs {
  /// The name of the cluster that you want to create.
  final pulumi.Input<String> clusterName;
  /// The type of the cluster that you want to create. Valid values only: 2: ECS cluster.
  final pulumi.Input<int> clusterType;
  /// The ID of the namespace where you want to create the application. You can call the ListUserDefineRegion operation to query the namespace ID.
  final pulumi.Input<String>? logicalRegionId;
  /// The network type of the cluster that you want to create. Valid values: 1: classic network. 2: VPC.
  final pulumi.Input<int> networkMode;
  /// The ID of the Virtual Private Cloud (VPC) for the cluster.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [ClusterArgs].
  /// [clusterName] The name of the cluster that you want to create.
  /// [clusterType] The type of the cluster that you want to create. Valid values only: 2: ECS cluster.
  /// [logicalRegionId] The ID of the namespace where you want to create the application. You can call the ListUserDefineRegion operation to query the namespace ID.
  /// [networkMode] The network type of the cluster that you want to create. Valid values: 1: classic network. 2: VPC.
  /// [vpcId] The ID of the Virtual Private Cloud (VPC) for the cluster.
  ClusterArgs({
    required String clusterName,
    required int clusterType,
    String? logicalRegionId,
    required int networkMode,
    String? vpcId,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      clusterType = pulumi.Input.asInput<int>(clusterType),
      logicalRegionId = pulumi.Input.asOptionalInput<String>(logicalRegionId),
      networkMode = pulumi.Input.asInput<int>(networkMode),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'clusterType': clusterType,
      'logicalRegionId': ?logicalRegionId,
      'networkMode': networkMode,
      'vpcId': ?vpcId,
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      clusterName: map['clusterName'] as String,
      clusterType: map['clusterType'] as int,
      logicalRegionId: map['logicalRegionId'] == null ? null : map['logicalRegionId'] as String,
      networkMode: map['networkMode'] as int,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}

