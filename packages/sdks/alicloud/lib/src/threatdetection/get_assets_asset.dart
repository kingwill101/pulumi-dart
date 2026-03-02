// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAssetsAsset {
  /// The ID of the cluster.
  final pulumi.Input<String> clusterId;
  /// The name of the cluster.
  final pulumi.Input<String> clusterName;
  /// The creation time of the resource
  final pulumi.Input<String> createTime;
  /// The UUID of the asset.
  final pulumi.Input<String> id;
  /// The ID of the asset.
  final pulumi.Input<String> instanceId;
  /// The name of the asset.
  final pulumi.Input<String> instanceName;
  /// The public IP address of the asset.
  final pulumi.Input<String> internetIp;
  /// The private IP address of the asset.
  final pulumi.Input<String> intranetIp;
  /// The status of the asset. Valid values:
  /// - **Running**: running
  /// - **notRunning**: stopped
  final pulumi.Input<String> status;
  /// The UUID of the asset. Same as `id`.
  final pulumi.Input<String> uuid;
  /// The ID of the VPC to which the asset belongs.
  final pulumi.Input<String> vpcInstanceId;

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
      clusterId: (map['clusterId'] as String).input(),
      clusterName: (map['clusterName'] as String).input(),
      createTime: (map['createTime'] as String).input(),
      id: (map['id'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      instanceName: (map['instanceName'] as String).input(),
      internetIp: (map['internetIp'] as String).input(),
      intranetIp: (map['intranetIp'] as String).input(),
      status: (map['status'] as String).input(),
      uuid: (map['uuid'] as String).input(),
      vpcInstanceId: (map['vpcInstanceId'] as String).input(),
    );
  }
}

