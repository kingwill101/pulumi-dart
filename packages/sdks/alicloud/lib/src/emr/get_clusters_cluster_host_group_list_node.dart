// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_clusters_cluster_host_group_list_node_disk_info.dart';

class GetClustersClusterHostGroupListNode {
  /// Creation time.
  final String createTime;
  /// Disk information.
  final List<GetClustersClusterHostGroupListNodeDiskInfo> diskInfos;
  /// The timeout of the EMR.
  final String emrExpiredTime;
  /// Timeout time.
  final String expiredTime;
  /// The Intranet IP of the EMR.
  final String innerIp;
  /// The ID of the ECS instance.
  final String instanceId;
  /// Public IP address.
  final String pubIp;
  /// Status.
  final String status;
  /// Whether IPV6 is supported.
  final bool supportIpv6;
  /// The zone ID.
  final String zoneId;

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
      'diskInfos': pulumi.Input.encodeList<GetClustersClusterHostGroupListNodeDiskInfo, Map<String, dynamic>>(diskInfos, (value) => value.toMap()),
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
      createTime: map['createTime'] as String,
      diskInfos: pulumi.Input.decodeList<GetClustersClusterHostGroupListNodeDiskInfo>(map['diskInfos'], (value) => GetClustersClusterHostGroupListNodeDiskInfo.fromMap((value as Map).cast<String, dynamic>())),
      emrExpiredTime: map['emrExpiredTime'] as String,
      expiredTime: map['expiredTime'] as String,
      innerIp: map['innerIp'] as String,
      instanceId: map['instanceId'] as String,
      pubIp: map['pubIp'] as String,
      status: map['status'] as String,
      supportIpv6: map['supportIpv6'] as bool,
      zoneId: map['zoneId'] as String,
    );
  }
}

