// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClustersClusterRelateClusterInfo {
  /// The ID of the associated cluster.
  final pulumi.Input<String> clusterId;
  /// The name of the associated cluster.
  final pulumi.Input<String> clusterName;
  /// The cluster type of the associated cluster.
  final pulumi.Input<String> clusterType;
  /// The status  of the associated cluster.
  final pulumi.Input<String> status;

  /// Creates a new [GetClustersClusterRelateClusterInfo].
  /// [clusterId] The ID of the associated cluster.
  /// [clusterName] The name of the associated cluster.
  /// [clusterType] The cluster type of the associated cluster.
  /// [status] The status  of the associated cluster.
  const GetClustersClusterRelateClusterInfo({
    required this.clusterId,
    required this.clusterName,
    required this.clusterType,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'clusterName': clusterName,
      'clusterType': clusterType,
      'status': status,
    };
  }

  factory GetClustersClusterRelateClusterInfo.fromMap(Map<String, dynamic> map) {
    return GetClustersClusterRelateClusterInfo(
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      clusterType: pulumi.Input.fromValue(map['clusterType'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

