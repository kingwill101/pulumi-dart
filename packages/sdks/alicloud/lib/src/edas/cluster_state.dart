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
    pulumi.Output<String>? clusterName,
    pulumi.Output<int>? clusterType,
    pulumi.Output<String>? logicalRegionId,
    pulumi.Output<int>? networkMode,
    pulumi.Output<String>? vpcId,
  }) :
      clusterName = pulumi.Input.asOptionalInput<String>(clusterName),
      clusterType = pulumi.Input.asOptionalInput<int>(clusterType),
      logicalRegionId = pulumi.Input.asOptionalInput<String>(logicalRegionId),
      networkMode = pulumi.Input.asOptionalInput<int>(networkMode),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

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
      clusterName: map['clusterName'] == null ? null : pulumi.Output.create<String>(map['clusterName'] as String),
      clusterType: map['clusterType'] == null ? null : pulumi.Output.create<int>(map['clusterType'] as int),
      logicalRegionId: map['logicalRegionId'] == null ? null : pulumi.Output.create<String>(map['logicalRegionId'] as String),
      networkMode: map['networkMode'] == null ? null : pulumi.Output.create<int>(map['networkMode'] as int),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

