// ignore_for_file: unused_element, unnecessary_cast

import '../cluster_broker_node_group_info_storage_info_ebs_storage_info/cluster_broker_node_group_info_storage_info_ebs_storage_info.dart';

class ClusterBrokerNodeGroupInfoStorageInfo {
  /// A block that contains EBS volume information. See<span pulumi-lang-nodejs=" storageInfo " pulumi-lang-dotnet=" StorageInfo " pulumi-lang-go=" storageInfo " pulumi-lang-python=" storage_info " pulumi-lang-yaml=" storageInfo " pulumi-lang-java=" storageInfo "> storage_info </span>ebs_storage_info Argument Reference below.
  final ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfo? ebsStorageInfo;

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
