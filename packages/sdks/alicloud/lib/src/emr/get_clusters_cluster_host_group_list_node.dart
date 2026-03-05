// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_clusters_cluster_host_group_list_node_disk_info.dart';

class GetClustersClusterHostGroupListNode {
  /// Creation time.
  final pulumi.Input<String> createTime;
  /// Disk information.
  final pulumi.Input<List<GetClustersClusterHostGroupListNodeDiskInfo>> diskInfos;
  /// The timeout of the EMR.
  final pulumi.Input<String> emrExpiredTime;
  /// Timeout time.
  final pulumi.Input<String> expiredTime;
  /// The Intranet IP of the EMR.
  final pulumi.Input<String> innerIp;
  /// The ID of the ECS instance.
  final pulumi.Input<String> instanceId;
  /// Public IP address.
  final pulumi.Input<String> pubIp;
  /// Status.
  final pulumi.Input<String> status;
  /// Whether IPV6 is supported.
  final pulumi.Input<bool> supportIpv6;
  /// The zone ID.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetClustersClusterHostGroupListNode].
  /// [createTime] Creation time.
  /// [diskInfos] Disk information.
  /// [emrExpiredTime] The timeout of the EMR.
  /// [expiredTime] Timeout time.
  /// [innerIp] The Intranet IP of the EMR.
  /// [instanceId] The ID of the ECS instance.
  /// [pubIp] Public IP address.
  /// [status] Status.
  /// [supportIpv6] Whether IPV6 is supported.
  /// [zoneId] The zone ID.
  GetClustersClusterHostGroupListNode({
    required this.createTime,
    required this.diskInfos,
    required this.emrExpiredTime,
    required this.expiredTime,
    required this.innerIp,
    required this.instanceId,
    required this.pubIp,
    required this.status,
    required this.supportIpv6,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'diskInfos': pulumi.Input.mapInputValue<List<GetClustersClusterHostGroupListNodeDiskInfo>, List<Map<String, dynamic>>>(diskInfos, (value) => pulumi.Input.encodeList<GetClustersClusterHostGroupListNodeDiskInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'emrExpiredTime': emrExpiredTime,
      'expiredTime': expiredTime,
      'innerIp': innerIp,
      'instanceId': instanceId,
      'pubIp': pubIp,
      'status': status,
      'supportIpv6': supportIpv6,
      'zoneId': zoneId,
    };
  }

  factory GetClustersClusterHostGroupListNode.fromMap(Map<String, dynamic> map) {
    return GetClustersClusterHostGroupListNode(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      diskInfos: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClustersClusterHostGroupListNodeDiskInfo>(map['diskInfos']!, (value) => GetClustersClusterHostGroupListNodeDiskInfo.fromMap((value as Map).cast<String, dynamic>()))),
      emrExpiredTime: pulumi.Input.fromValue(map['emrExpiredTime'] as String),
      expiredTime: pulumi.Input.fromValue(map['expiredTime'] as String),
      innerIp: pulumi.Input.fromValue(map['innerIp'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      pubIp: pulumi.Input.fromValue(map['pubIp'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      supportIpv6: pulumi.Input.fromValue(map['supportIpv6'] as bool),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}

