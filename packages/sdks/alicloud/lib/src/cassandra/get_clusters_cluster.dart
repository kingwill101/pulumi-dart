// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClustersCluster {
  /// The ID of the Cassandra cluster.
  final pulumi.Input<String> clusterId;
  /// The name of the Cassandra cluster.
  final pulumi.Input<String> clusterName;
  final pulumi.Input<String> createdTime;
  /// The count of data centers
  final pulumi.Input<int> dataCenterCount;
  /// The expire time of the cluster.
  final pulumi.Input<String> expireTime;
  /// The ID of the Cassandra cluster.
  final pulumi.Input<String> id;
  /// The lock mode of the cluster.
  final pulumi.Input<String> lockMode;
  /// The major version of the cluster.
  final pulumi.Input<String> majorVersion;
  /// The minor version of the cluster.
  final pulumi.Input<String> minorVersion;
  /// Billing method. Value options are `Subscription` for Pay-As-You-Go and `PayAsYouGo` for yearly or monthly subscription.
  final pulumi.Input<String> payType;
  /// Status of the cluster.
  final pulumi.Input<String> status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetClustersCluster].
  /// [clusterId] The ID of the Cassandra cluster.
  /// [clusterName] The name of the Cassandra cluster.
  /// [createdTime] Required.
  /// [dataCenterCount] The count of data centers
  /// [expireTime] The expire time of the cluster.
  /// [id] The ID of the Cassandra cluster.
  /// [lockMode] The lock mode of the cluster.
  /// [majorVersion] The major version of the cluster.
  /// [minorVersion] The minor version of the cluster.
  /// [payType] Billing method. Value options are `Subscription` for Pay-As-You-Go and `PayAsYouGo` for yearly or monthly subscription.
  /// [status] Status of the cluster.
  /// [tags] A mapping of tags to assign to the resource.
  GetClustersCluster({
    required this.clusterId,
    required this.clusterName,
    required this.createdTime,
    required this.dataCenterCount,
    required this.expireTime,
    required this.id,
    required this.lockMode,
    required this.majorVersion,
    required this.minorVersion,
    required this.payType,
    required this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'clusterName': clusterName,
      'createdTime': createdTime,
      'dataCenterCount': dataCenterCount,
      'expireTime': expireTime,
      'id': id,
      'lockMode': lockMode,
      'majorVersion': majorVersion,
      'minorVersion': minorVersion,
      'payType': payType,
      'status': status,
      'tags': ?tags,
    };
  }

  factory GetClustersCluster.fromMap(Map<String, dynamic> map) {
    return GetClustersCluster(
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      createdTime: pulumi.Input.fromValue(map['createdTime'] as String),
      dataCenterCount: pulumi.Input.fromValue(map['dataCenterCount'] as int),
      expireTime: pulumi.Input.fromValue(map['expireTime'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      lockMode: pulumi.Input.fromValue(map['lockMode'] as String),
      majorVersion: pulumi.Input.fromValue(map['majorVersion'] as String),
      minorVersion: pulumi.Input.fromValue(map['minorVersion'] as String),
      payType: pulumi.Input.fromValue(map['payType'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

