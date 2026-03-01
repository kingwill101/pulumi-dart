// ignore_for_file: unused_element, unnecessary_cast


class GetAssetsAsset {
  /// The ID of the cluster.
  final String clusterId;
  /// The name of the cluster.
  final String clusterName;
  /// The creation time of the resource
  final String createTime;
  /// The UUID of the asset.
  final String id;
  /// The ID of the asset.
  final String instanceId;
  /// The name of the asset.
  final String instanceName;
  /// The public IP address of the asset.
  final String internetIp;
  /// The private IP address of the asset.
  final String intranetIp;
  /// The status of the asset. Valid values:
  /// - **Running**: running
  /// - **notRunning**: stopped
  final String status;
  /// The UUID of the asset. Same as `id`.
  final String uuid;
  /// The ID of the VPC to which the asset belongs.
  final String vpcInstanceId;

  /// Creates a new [GetAssetsAsset].
  /// [clusterId] The ID of the cluster.
  /// [clusterName] The name of the cluster.
  /// [createTime] The creation time of the resource
  /// [id] The UUID of the asset.
  /// [instanceId] The ID of the asset.
  /// [instanceName] The name of the asset.
  /// [internetIp] The public IP address of the asset.
  /// [intranetIp] The private IP address of the asset.
  /// [status] The status of the asset. Valid values:
  /// [uuid] The UUID of the asset. Same as `id`.
  /// [vpcInstanceId] The ID of the VPC to which the asset belongs.
  GetAssetsAsset({
    required this.clusterId,
    required this.clusterName,
    required this.createTime,
    required this.id,
    required this.instanceId,
    required this.instanceName,
    required this.internetIp,
    required this.intranetIp,
    required this.status,
    required this.uuid,
    required this.vpcInstanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'clusterName': clusterName,
      'createTime': createTime,
      'id': id,
      'instanceId': instanceId,
      'instanceName': instanceName,
      'internetIp': internetIp,
      'intranetIp': intranetIp,
      'status': status,
      'uuid': uuid,
      'vpcInstanceId': vpcInstanceId,
    };
  }

  factory GetAssetsAsset.fromMap(Map<String, dynamic> map) {
    return GetAssetsAsset(
      clusterId: map['clusterId'] as String,
      clusterName: map['clusterName'] as String,
      createTime: map['createTime'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      instanceName: map['instanceName'] as String,
      internetIp: map['internetIp'] as String,
      intranetIp: map['intranetIp'] as String,
      status: map['status'] as String,
      uuid: map['uuid'] as String,
      vpcInstanceId: map['vpcInstanceId'] as String,
    );
  }
}

