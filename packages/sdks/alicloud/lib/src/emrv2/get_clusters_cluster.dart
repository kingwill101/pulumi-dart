// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_clusters_cluster_tag.dart';

class GetClustersCluster {
  /// The first ID of the resource.
  final pulumi.Input<String> clusterId;
  /// The cluster name.
  final pulumi.Input<String> clusterName;
  /// The state of the emr cluster.
  final pulumi.Input<String> clusterState;
  /// The type of the emr cluster.
  final pulumi.Input<String> clusterType;
  /// The creation time of the resource.
  final pulumi.Input<String> createTime;
  /// The ecs default role belongs to this emr cluster.
  final pulumi.Input<String> emrDefaultRole;
  /// The end time of the resource.
  final pulumi.Input<String> endTime;
  /// The expire time of the resource.
  final pulumi.Input<String> expireTime;
  /// The payment type of the emr cluster.
  final pulumi.Input<String> paymentType;
  /// The ready time of the resource.
  final pulumi.Input<String> readyTime;
  /// The release version of the resource.
  final pulumi.Input<String> releaseVersion;
  /// The Resource Group ID.
  final pulumi.Input<String> resourceGroupId;
  /// The cluster state change reason.
  final pulumi.Input<Map<String, String>> stateChangeReason;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<List<GetClustersClusterTag>> tags;

  /// Creates a new [GetClustersCluster].
  /// [clusterId] The first ID of the resource.
  /// [clusterName] The cluster name.
  /// [clusterState] The state of the emr cluster.
  /// [clusterType] The type of the emr cluster.
  /// [createTime] The creation time of the resource.
  /// [emrDefaultRole] The ecs default role belongs to this emr cluster.
  /// [endTime] The end time of the resource.
  /// [expireTime] The expire time of the resource.
  /// [paymentType] The payment type of the emr cluster.
  /// [readyTime] The ready time of the resource.
  /// [releaseVersion] The release version of the resource.
  /// [resourceGroupId] The Resource Group ID.
  /// [stateChangeReason] The cluster state change reason.
  /// [tags] A mapping of tags to assign to the resource.
  const GetClustersCluster({
    required this.clusterId,
    required this.clusterName,
    required this.clusterState,
    required this.clusterType,
    required this.createTime,
    required this.emrDefaultRole,
    required this.endTime,
    required this.expireTime,
    required this.paymentType,
    required this.readyTime,
    required this.releaseVersion,
    required this.resourceGroupId,
    required this.stateChangeReason,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'clusterName': clusterName,
      'clusterState': clusterState,
      'clusterType': clusterType,
      'createTime': createTime,
      'emrDefaultRole': emrDefaultRole,
      'endTime': endTime,
      'expireTime': expireTime,
      'paymentType': paymentType,
      'readyTime': readyTime,
      'releaseVersion': releaseVersion,
      'resourceGroupId': resourceGroupId,
      'stateChangeReason': stateChangeReason,
      'tags': pulumi.Input.mapInputValue<List<GetClustersClusterTag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<GetClustersClusterTag, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClustersCluster.fromMap(Map<String, dynamic> map) {
    return GetClustersCluster(
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      clusterState: pulumi.Input.fromValue(map['clusterState'] as String),
      clusterType: pulumi.Input.fromValue(map['clusterType'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      emrDefaultRole: pulumi.Input.fromValue(map['emrDefaultRole'] as String),
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      expireTime: pulumi.Input.fromValue(map['expireTime'] as String),
      paymentType: pulumi.Input.fromValue(map['paymentType'] as String),
      readyTime: pulumi.Input.fromValue(map['readyTime'] as String),
      releaseVersion: pulumi.Input.fromValue(map['releaseVersion'] as String),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      stateChangeReason: pulumi.Input.fromValue((map['stateChangeReason'] as Map).cast<String, String>()),
      tags: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClustersClusterTag>(map['tags']!, (value) => GetClustersClusterTag.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

