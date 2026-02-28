// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_broker_node_group_info_storage_info_ebs_storage_info.dart';

class ClusterBrokerNodeGroupInfoStorageInfo {
  /// A block that contains EBS volume information. See storage_info ebs_storage_info Argument Reference below.
  final ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfo? ebsStorageInfo;

  /// Creates a new [ClusterBrokerNodeGroupInfoStorageInfo].
  /// [ebsStorageInfo] A block that contains EBS volume information. See storage_info ebs_storage_info Argument Reference below.
  ClusterBrokerNodeGroupInfoStorageInfo({
    this.ebsStorageInfo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ebsStorageInfoValue = ebsStorageInfo;
    if (ebsStorageInfoValue != null) {
      map['ebsStorageInfo'] = ebsStorageInfoValue.toMap();
    }
    return map;
  }

  factory ClusterBrokerNodeGroupInfoStorageInfo.fromMap(
      Map<String, dynamic> map) {
    return ClusterBrokerNodeGroupInfoStorageInfo(
      ebsStorageInfo: map['ebsStorageInfo'] == null
          ? null
          : ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfo.fromMap(
              (map['ebsStorageInfo'] as Map).cast<String, dynamic>()),
    );
  }
}
