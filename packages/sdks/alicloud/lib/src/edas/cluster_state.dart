// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Cluster resources.
class ClusterState {
  /// The name of the cluster that you want to create.
  final pulumi.Input<String>? clusterName;
  /// The type of the cluster that you want to create. Valid values only: 2: ECS cluster.
  final pulumi.Input<int>? clusterType;
  /// The ID of the namespace where you want to create the application. You can call the ListUserDefineRegion operation to query the namespace ID.
  final pulumi.Input<String>? logicalRegionId;
  /// The network type of the cluster that you want to create. Valid values: 1: classic network. 2: VPC.
  final pulumi.Input<int>? networkMode;
  /// The ID of the Virtual Private Cloud (VPC) for the cluster.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [ClusterState].
  /// [clusterName] The name of the cluster that you want to create.
  /// [clusterType] The type of the cluster that you want to create. Valid values only: 2: ECS cluster.
  /// [logicalRegionId] The ID of the namespace where you want to create the application. You can call the ListUserDefineRegion operation to query the namespace ID.
  /// [networkMode] The network type of the cluster that you want to create. Valid values: 1: classic network. 2: VPC.
  /// [vpcId] The ID of the Virtual Private Cloud (VPC) for the cluster.
  ClusterState({
    this.clusterName,
    this.clusterType,
    this.logicalRegionId,
    this.networkMode,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': ?clusterName,
      'clusterType': ?clusterType,
      'logicalRegionId': ?logicalRegionId,
      'networkMode': ?networkMode,
      'vpcId': ?vpcId,
    };
  }

  factory ClusterState.fromMap(Map<String, dynamic> map) {
    return ClusterState(
      clusterName: map['clusterName'] == null ? null : (map['clusterName'] as String).input(),
      clusterType: map['clusterType'] == null ? null : (map['clusterType'] as int).input(),
      logicalRegionId: map['logicalRegionId'] == null ? null : (map['logicalRegionId'] as String).input(),
      networkMode: map['networkMode'] == null ? null : (map['networkMode'] as int).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
    );
  }
}

