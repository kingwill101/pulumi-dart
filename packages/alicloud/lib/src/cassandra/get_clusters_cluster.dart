// ignore_for_file: unused_element, unnecessary_cast


class GetClustersCluster {
  /// The ID of the Cassandra cluster.
  final String clusterId;
  /// The name of the Cassandra cluster.
  final String clusterName;
  final String createdTime;
  /// The count of data centers
  final int dataCenterCount;
  /// The expire time of the cluster.
  final String expireTime;
  /// The ID of the Cassandra cluster.
  final String id;
  /// The lock mode of the cluster.
  final String lockMode;
  /// The major version of the cluster.
  final String majorVersion;
  /// The minor version of the cluster.
  final String minorVersion;
  /// Billing method. Value options are `Subscription` for Pay-As-You-Go and `PayAsYouGo` for yearly or monthly subscription.
  final String payType;
  /// Status of the cluster.
  final String status;
  /// A mapping of tags to assign to the resource.
  final Map<String, String>? tags;

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
      clusterId: map['clusterId'] as String,
      clusterName: map['clusterName'] as String,
      createdTime: map['createdTime'] as String,
      dataCenterCount: map['dataCenterCount'] as int,
      expireTime: map['expireTime'] as String,
      id: map['id'] as String,
      lockMode: map['lockMode'] as String,
      majorVersion: map['majorVersion'] as String,
      minorVersion: map['minorVersion'] as String,
      payType: map['payType'] as String,
      status: map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

